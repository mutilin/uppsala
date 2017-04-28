#include <pthread.h>
/* linux/drivers/char/pc8736x_gpio.c

   National Semiconductor PC8736x GPIO driver.  Allows a user space
   process to play with the GPIO pins.

   Copyright (c) 2005,2006 Jim Cromie <jim.cromie@gmail.com>

   adapted from linux/drivers/char/scx200_gpio.c
   Copyright (c) 2001,2002 Christer Weinigel <wingel@nano-system.com>,
*/

#include <svcomp.h>

#include <linux/fs.h>
#include <linux/module.h>
#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/cdev.h>
#include <linux/io.h>
#include <linux/ioport.h>
#include <linux/mutex.h>
#include <linux/nsc_gpio.h>
#include <linux/platform_device.h>
#include <asm/uaccess.h>

#define DEVNAME "pc8736x_gpio"

static int major;		/* default to dynamic major */

static DEFINE_MUTEX(pc8736x_gpio_config_lock);
static unsigned pc8736x_gpio_base;
static u8 pc8736x_gpio_shadow[4];

#define SIO_BASE1       0x2E	/* 1st command-reg to check */
#define SIO_BASE2       0x4E	/* alt command-reg to check */

#define SIO_SID		0x20	/* SuperI/O ID Register */
#define SIO_SID_PC87365	0xe5	/* Expected value in ID Register for PC87365 */
#define SIO_SID_PC87366	0xe9	/* Expected value in ID Register for PC87366 */

#define SIO_CF1		0x21	/* chip config, bit0 is chip enable */

#define PC8736X_GPIO_RANGE	16 /* ioaddr range */
#define PC8736X_GPIO_CT		32 /* minors matching 4 8 bit ports */

#define SIO_UNIT_SEL	0x7	/* unit select reg */
#define SIO_UNIT_ACT	0x30	/* unit enable */
#define SIO_GPIO_UNIT	0x7	/* unit number of GPIO */
#define SIO_VLM_UNIT	0x0D
#define SIO_TMS_UNIT	0x0E

/* config-space addrs to read/write each unit's runtime addr */
#define SIO_BASE_HADDR		0x60
#define SIO_BASE_LADDR		0x61

/* GPIO config-space pin-control addresses */
#define SIO_GPIO_PIN_SELECT	0xF0
#define SIO_GPIO_PIN_CONFIG     0xF1
#define SIO_GPIO_PIN_EVENT      0xF2

static unsigned char superio_cmd = 0;
static unsigned char selected_device = 0xFF;	/* bogus start val */

/* GPIO port runtime access, functionality */
static int port_offset[] = { 0, 4, 8, 10 };	/* non-uniform offsets ! */
/* static int event_capable[] = { 1, 1, 0, 0 };   ports 2,3 are hobbled */

#define PORT_OUT	0
#define PORT_IN		1
#define PORT_EVT_EN	2
#define PORT_EVT_STST	3

static struct platform_device *pdev;  /* use in dev_*() */

static inline void superio_outb(int addr, int val)
{
	outb_p(addr, superio_cmd);
	outb_p(val, superio_cmd + 1);
}

static inline int superio_inb(int addr)
{
	outb_p(addr, superio_cmd);
	return inb_p(superio_cmd + 1);
}

static int pc8736x_superio_present(void)
{
	int id;

	/* try the 2 possible values, read a hardware reg to verify */
	superio_cmd = SIO_BASE1;
	id = superio_inb(SIO_SID);
	if (id == SIO_SID_PC87365 || id == SIO_SID_PC87366)
		return superio_cmd;

	superio_cmd = SIO_BASE2;
	id = superio_inb(SIO_SID);
	if (id == SIO_SID_PC87365 || id == SIO_SID_PC87366)
		return superio_cmd;

	return 0;
}

static void device_select(unsigned devldn)
{
	superio_outb(SIO_UNIT_SEL, devldn);
	selected_device = devldn;
}

static void select_pin(unsigned iminor)
{
	/* select GPIO port/pin from device minor number */
	device_select(SIO_GPIO_UNIT);
	superio_outb(SIO_GPIO_PIN_SELECT,
		     ((iminor << 1) & 0xF0) | (iminor & 0x7));
}

static inline u32 pc8736x_gpio_configure_fn(unsigned index, u32 mask, u32 bits,
					    u32 func_slct)
{
	u32 config, new_config;

	mutex_lock(&pc8736x_gpio_config_lock);

	device_select(SIO_GPIO_UNIT);
	select_pin(index);

	/* read current config value */
	config = superio_inb(func_slct);

	/* set new config */
	new_config = (config & mask) | bits;
	superio_outb(func_slct, new_config);

	mutex_unlock(&pc8736x_gpio_config_lock);

	return config;
}

u32 pc8736x_gpio_configure(unsigned index, u32 mask, u32 bits)
{
	return pc8736x_gpio_configure_fn(index, mask, bits,
					 SIO_GPIO_PIN_CONFIG);
}

int pc8736x_gpio_get(unsigned minor)
{
	int port, bit, val;

	port = minor >> 3;
	bit = minor & 7;
	val = inb_p(pc8736x_gpio_base + port_offset[port] + PORT_IN);
	val >>= bit;
	val &= 1;

	dev_dbg(&pdev->dev, "_gpio_get(%d from %x bit %d) == val %d\n",
		minor, pc8736x_gpio_base + port_offset[port] + PORT_IN, bit,
		val);

	return val;
}

void pc8736x_gpio_set(unsigned minor, int val)
{
	int port, bit, curval;

	minor &= 0x1f;
	port = minor >> 3;
	bit = minor & 7;
	curval = inb_p(pc8736x_gpio_base + port_offset[port] + PORT_OUT);

	dev_dbg(&pdev->dev, "addr:%x cur:%x bit-pos:%d cur-bit:%x + new:%d -> bit-new:%d\n",
		pc8736x_gpio_base + port_offset[port] + PORT_OUT,
		curval, bit, (curval & ~(1 << bit)), val, (val << bit));

	val = (curval & ~(1 << bit)) | (val << bit);

	dev_dbg(&pdev->dev, "gpio_set(minor:%d port:%d bit:%d)"
		" %2x -> %2x\n", minor, port, bit, curval, val);

	outb_p(val, pc8736x_gpio_base + port_offset[port] + PORT_OUT);

	curval = inb_p(pc8736x_gpio_base + port_offset[port] + PORT_OUT);
	val = inb_p(pc8736x_gpio_base + port_offset[port] + PORT_IN);

	dev_dbg(&pdev->dev, "wrote %x, read: %x\n", curval, val);
	pc8736x_gpio_shadow[port] = val;
	__VERIFIER_assert(pc8736x_gpio_shadow[port] == val);
}

int pc8736x_gpio_current(unsigned minor)
{
	int port, bit;
	minor &= 0x1f;
	port = minor >> 3;
	bit = minor & 7;
        u8 tmp = pc8736x_gpio_shadow[port];
        __VERIFIER_assert(tmp == pc8736x_gpio_shadow[port]);
	return ((tmp >> bit) & 0x01);
}

void pc8736x_gpio_change(unsigned index)
{
	pc8736x_gpio_set(index, !pc8736x_gpio_current(index));
}

static struct nsc_gpio_ops pc8736x_gpio_ops = {
	.owner		= THIS_MODULE,
	.gpio_config	= pc8736x_gpio_configure,
	.gpio_dump	= nsc_gpio_dump,
	.gpio_get	= pc8736x_gpio_get,
	.gpio_set	= pc8736x_gpio_set,
	.gpio_change	= pc8736x_gpio_change,
	.gpio_current	= pc8736x_gpio_current
};

int pc8736x_gpio_open(struct inode *inode, struct file *file)
{
	unsigned m = iminor(inode);
	file->private_data = &pc8736x_gpio_ops;
	__VERIFIER_assert(file->private_data == &pc8736x_gpio_ops);


	dev_dbg(&pdev->dev, "open %d\n", m);

	if (m >= PC8736X_GPIO_CT)
		return -EINVAL;
	int ret = nonseekable_open(inode, file);
	if(ret!=0) {
		//not a bug
		int port = __VERIFIER_nondet_int();
		__VERIFIER_assume(port>=0 && port<4);
		u8 tmp = (u8)__VERIFIER_nondet_int();
		pc8736x_gpio_shadow[port] = tmp;
		__VERIFIER_assert(pc8736x_gpio_shadow[port] == tmp);
	}
	return ret;
}

static struct file_operations pc8736x_gpio_fileops = {
	.owner	= THIS_MODULE,
	.open	= pc8736x_gpio_open,
	.write	= nsc_gpio_write,
	.read	= nsc_gpio_read,
	.llseek = no_llseek,
};

static void __init pc8736x_init_shadow(void)
{
	int port;

	/* read the current values driven on the GPIO signals */
	for (port = 0; port < 4; ++port)
		pc8736x_gpio_shadow[port]
		    = inb_p(pc8736x_gpio_base + port_offset[port]
			    + PORT_OUT);

}

static struct cdev pc8736x_gpio_cdev;

//-----------------------------------------------------------------------
// Declare values needed by entry point wrappers
struct inode *whoop_inode_0;
struct file *whoop_file_0;
struct inode *whoop_inode_1;
struct file *whoop_file_1;
struct inode *whoop_inode_2;
struct file *whoop_file_2;
struct inode *whoop_inode_3;
struct file *whoop_file_3;
struct inode *whoop_inode_4;
struct file *whoop_file_4;
struct inode *whoop_inode_5;
struct file *whoop_file_5;
struct inode *whoop_inode_6;
struct file *whoop_file_6;
struct pci_dev *whoop_pci_dev;
const char *whoop_buf;
struct platform_device *whoop_platform_device;
struct vm_area_struct *whoop_vm_area_struct;
struct cx_dev *whoop_cx_dev;

poll_table *whoop_poll_table;

loff_t *whoop_loff_t;
int whoop_int;

//-----------------------------------------------------------------------

void default_release(struct inode * inode, struct file * filp);

void *scenario_pc8736x_gpio_cdev(void *args) {
	whoop_inode_1 = (struct inode *) malloc(sizeof(struct inode));
	whoop_file_1 = (struct file *) malloc(sizeof(struct file));

	if(pc8736x_gpio_open(whoop_inode_1, whoop_file_1)==0) {
		/*while(__VERIFIER_nondet_int()) {
			switch(__VERIFIER_nondet_int()) {
				case 0:
					//read
					break;
				default:
					//write
					break;
			}
		}*/
		//release
		default_release(whoop_inode_1, whoop_file_1);
	};
	return 0;
}

// Declare pthread_t's
pthread_t pthread_t_pc8736x_gpio_cdev;

int cdev_add(struct cdev *dev, dev_t d, unsigned n) {

	// Create pthread threads
	return pthread_create(&pthread_t_pc8736x_gpio_cdev, NULL, scenario_pc8736x_gpio_cdev, NULL);
}

void cdev_del(struct cdev *dev) {
	// Wait for threads to finish
	pthread_join(pthread_t_pc8736x_gpio_cdev, NULL);
}

//------------------------------------------------------------------------------------
void *scenario_pc8736x_gpio_ops(void *args) {
	//while(__VERIFIER_nondet_int()) {
		switch(__VERIFIER_nondet_int()) {
			case 0:
				pc8736x_gpio_get(__VERIFIER_nondet_int());
				break;
			case 1:	
				pc8736x_gpio_current(__VERIFIER_nondet_int());
				break;
			case 2:
				pc8736x_gpio_configure(__VERIFIER_nondet_int(), __VERIFIER_nondet_int(), __VERIFIER_nondet_int());
				break;
			case 3:
				pc8736x_gpio_change(__VERIFIER_nondet_int());
				break;
			default:
				pc8736x_gpio_set(__VERIFIER_nondet_int(), __VERIFIER_nondet_int());
				break;
		}
	//}
	return 0;
}

// Declare pthread_t's
pthread_t pthread_t_pc8736x_gpio_ops;

int nonseekable_open(struct inode * inode, struct file * filp) {
	// Create pthread threads
	return pthread_create(&pthread_t_pc8736x_gpio_ops, NULL, scenario_pc8736x_gpio_ops, NULL);
}

void default_release(struct inode * inode, struct file * filp) {
	// Wait for threads to finish
	pthread_join(pthread_t_pc8736x_gpio_ops, NULL);
}


//------------------------------------------------------------------------------------
int __init pc8736x_gpio_init(void)
{
	int rc;
	dev_t devid;

	pdev = platform_device_alloc(DEVNAME, 0);
	if (!pdev)
		return -ENOMEM;

	rc = platform_device_add(pdev);
	if (rc) {
		rc = -ENODEV;
		goto undo_platform_dev_alloc;
	}
	dev_info(&pdev->dev, "NatSemi pc8736x GPIO Driver Initializing\n");

	if (!pc8736x_superio_present()) {
		rc = -ENODEV;
		dev_err(&pdev->dev, "no device found\n");
		goto undo_platform_dev_add;
	}
	pc8736x_gpio_ops.dev = &pdev->dev;
        __VERIFIER_assert(pc8736x_gpio_ops.dev == &pdev->dev);

	/* Verify that chip and it's GPIO unit are both enabled.
	   My BIOS does this, so I take minimum action here
	 */
	rc = superio_inb(SIO_CF1);
	if (!(rc & 0x01)) {
		rc = -ENODEV;
		dev_err(&pdev->dev, "device not enabled\n");
		goto undo_platform_dev_add;
	}
	device_select(SIO_GPIO_UNIT);
	if (!superio_inb(SIO_UNIT_ACT)) {
		rc = -ENODEV;
		dev_err(&pdev->dev, "GPIO unit not enabled\n");
		goto undo_platform_dev_add;
	}

	/* read the GPIO unit base addr that chip responds to */
	pc8736x_gpio_base = (superio_inb(SIO_BASE_HADDR) << 8
			     | superio_inb(SIO_BASE_LADDR));

	if (!request_region(pc8736x_gpio_base, PC8736X_GPIO_RANGE, DEVNAME)) {
		rc = -ENODEV;
		dev_err(&pdev->dev, "GPIO ioport %x busy\n",
			pc8736x_gpio_base);
		goto undo_platform_dev_add;
	}
	dev_info(&pdev->dev, "GPIO ioport %x reserved\n", pc8736x_gpio_base);

	if (major) {
		devid = MKDEV(major, 0);
		rc = register_chrdev_region(devid, PC8736X_GPIO_CT, DEVNAME);
	} else {
		rc = alloc_chrdev_region(&devid, 0, PC8736X_GPIO_CT, DEVNAME);
		major = MAJOR(devid);
	}

	if (rc < 0) {
		dev_err(&pdev->dev, "register-chrdev failed: %d\n", rc);
		goto undo_request_region;
	}
	if (!major) {
		major = rc;
		dev_dbg(&pdev->dev, "got dynamic major %d\n", major);
	}

	pc8736x_init_shadow();

	/* ignore minor errs, and succeed */
	cdev_init(&pc8736x_gpio_cdev, &pc8736x_gpio_fileops);
	cdev_add(&pc8736x_gpio_cdev, devid, PC8736X_GPIO_CT);

	return 0;

undo_request_region:
	release_region(pc8736x_gpio_base, PC8736X_GPIO_RANGE);
undo_platform_dev_add:
	platform_device_del(pdev);
undo_platform_dev_alloc:
	platform_device_put(pdev);

	return rc;
}

void __exit pc8736x_gpio_cleanup(void)
{
	dev_dbg(&pdev->dev, "cleanup\n");

	cdev_del(&pc8736x_gpio_cdev);
	unregister_chrdev_region(MKDEV(major,0), PC8736X_GPIO_CT);
	release_region(pc8736x_gpio_base, PC8736X_GPIO_RANGE);

	platform_device_unregister(pdev);
}

module_init(pc8736x_gpio_init);
module_exit(pc8736x_gpio_cleanup);


// Pthread wrappers for entry points
void *whoop_wrapper_pc8736x_gpio_set(void* args)
{
	pc8736x_gpio_set(whoop_int, whoop_int);
	return NULL;
}

void *whoop_wrapper_pc8736x_gpio_open(void* args)
{
	pc8736x_gpio_open(whoop_inode_1, whoop_file_1);
	return NULL;
}

void *whoop_wrapper_pc8736x_gpio_get(void* args)
{
	pc8736x_gpio_get(whoop_int);
	return NULL;
}

void *whoop_wrapper_pc8736x_gpio_current(void* args)
{
	pc8736x_gpio_current(whoop_int);
	return NULL;
}

void *whoop_wrapper_pc8736x_gpio_configure(void* args)
{
	pc8736x_gpio_configure(whoop_int, whoop_int, whoop_int);
	return NULL;
}

void *whoop_wrapper_pc8736x_gpio_cleanup(void* args)
{
	pc8736x_gpio_cleanup();
	return NULL;
}

void *whoop_wrapper_pc8736x_gpio_change(void* args)
{
	pc8736x_gpio_change(whoop_int);
	return NULL;
}

int old_main(void)
{
	// Instantiate values required by entry points
	whoop_inode_0 = (struct inode *) malloc(sizeof(struct inode));
	whoop_file_0 = (struct file *) malloc(sizeof(struct file));
	whoop_inode_1 = (struct inode *) malloc(sizeof(struct inode));
	whoop_file_1 = (struct file *) malloc(sizeof(struct file));
	whoop_inode_2 = (struct inode *) malloc(sizeof(struct inode));
	whoop_file_2 = (struct file *) malloc(sizeof(struct file));
	whoop_inode_3 = (struct inode *) malloc(sizeof(struct inode));
	whoop_file_3 = (struct file *) malloc(sizeof(struct file));
	whoop_inode_4 = (struct inode *) malloc(sizeof(struct inode));
	whoop_file_4 = (struct file *) malloc(sizeof(struct file));
	whoop_inode_5 = (struct inode *) malloc(sizeof(struct inode));
	whoop_file_5 = (struct file *) malloc(sizeof(struct file));
	whoop_inode_6 = (struct inode *) malloc(sizeof(struct inode));
	whoop_file_6 = (struct file *) malloc(sizeof(struct file));
	whoop_pci_dev = (struct pci_dev *) malloc(sizeof(struct pci_dev));
	whoop_buf = (char *) malloc(sizeof(char));
	whoop_platform_device = (struct platform_device *) malloc(sizeof(struct platform_device));
	whoop_vm_area_struct = (struct vm_area_struct *) malloc(sizeof(struct vm_area_struct));
	whoop_cx_dev = (struct cx_dev *) malloc(sizeof(struct cx_dev));

	whoop_poll_table = (poll_table *) malloc(sizeof(poll_table));

	whoop_loff_t = (loff_t *) malloc(sizeof(loff_t));
	whoop_int = __VERIFIER_nondet_int();
	__VERIFIER_assume(whoop_int >= 0);

	// Call module_init function
	int _whoop_init_result = _whoop_init();

	// Declare pthread_t's
	pthread_t pthread_t_pc8736x_gpio_open;
	pthread_t pthread_t_pc8736x_gpio_change;

	// Create pthread threads
	pthread_create(&pthread_t_pc8736x_gpio_open, NULL, whoop_wrapper_pc8736x_gpio_open, NULL);
	pthread_create(&pthread_t_pc8736x_gpio_change, NULL, whoop_wrapper_pc8736x_gpio_change, NULL);

	// Wait for threads to finish
	pthread_join(pthread_t_pc8736x_gpio_open, NULL);
	pthread_join(pthread_t_pc8736x_gpio_change, NULL);

}

int main(void) {
	if(pc8736x_gpio_init()==0) {
		pc8736x_gpio_cleanup();
	}

}
