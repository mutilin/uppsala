struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct mutex;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct mm_struct;
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct seq_operations;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_29 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_28 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
typedef unsigned long pthread_t;
union pthread_attr_t {
   char __size[56U] ;
   long __align ;
};
typedef union pthread_attr_t pthread_attr_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct timespec;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_u_36 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_37 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   union __anonunion_u_36 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_37 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_38 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_38 kuid_t;
struct __anonstruct_kgid_t_39 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_39 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct inode;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct backing_dev_info;
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_43 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_43 nodemask_t;
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   unsigned int memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_108 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_108 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled : 1 ;
   bool offline : 1 ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct proc_dir_entry;
struct pci_driver;
union __anonunion____missing_field_name_136 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int no_d3cold : 1 ;
   unsigned int d3cold_allowed : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned int transparent : 1 ;
   unsigned int multifunction : 1 ;
   unsigned int is_added : 1 ;
   unsigned int is_busmaster : 1 ;
   unsigned int no_msi : 1 ;
   unsigned int block_cfg_access : 1 ;
   unsigned int broken_parity_status : 1 ;
   unsigned int irq_reroute_variant : 2 ;
   unsigned int msi_enabled : 1 ;
   unsigned int msix_enabled : 1 ;
   unsigned int ari_enabled : 1 ;
   unsigned int is_managed : 1 ;
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   unsigned int broken_intx_masking : 1 ;
   unsigned int io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_136 __annonCompField33 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned int is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion____missing_field_name_141 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_143 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_147 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_146 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_147 __annonCompField40 ;
   int units ;
};
struct __anonstruct____missing_field_name_145 {
   union __anonunion____missing_field_name_146 __annonCompField41 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_144 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_145 __annonCompField42 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField39 ;
   union __anonunion____missing_field_name_144 __annonCompField43 ;
};
struct __anonstruct____missing_field_name_149 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_148 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_149 __annonCompField45 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_150 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_141 __annonCompField38 ;
   struct __anonstruct____missing_field_name_142 __annonCompField44 ;
   union __anonunion____missing_field_name_148 __annonCompField46 ;
   union __anonunion____missing_field_name_150 __annonCompField47 ;
   unsigned long debug_flags ;
};
struct __anonstruct_linear_152 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_151 {
   struct __anonstruct_linear_152 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_151 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct mem_cgroup;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct____missing_field_name_154 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_155 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_153 {
   struct __anonstruct____missing_field_name_154 __annonCompField48 ;
   struct __anonstruct____missing_field_name_155 __annonCompField49 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_153 __annonCompField50 ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_157 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_156 {
   struct __anonstruct____missing_field_name_157 __annonCompField51 ;
};
struct lockref {
   union __anonunion____missing_field_name_156 __annonCompField52 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_159 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_158 {
   struct __anonstruct____missing_field_name_159 __annonCompField53 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_158 __annonCompField54 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_160 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_160 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_162 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_162 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_163 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_163 __annonCompField55 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
union __anonunion_arg_165 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_164 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_165 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_164 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_166 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_167 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
union __anonunion____missing_field_name_168 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_166 __annonCompField56 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_167 __annonCompField57 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_168 __annonCompField58 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_169 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_169 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_171 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_170 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_171 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_170 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_181 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_181 __annonCompField62 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_182 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_182 u ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
};
struct command {
   struct list_head queue_node ;
   wait_queue_head_t wait ;
   unsigned char *buffer ;
   size_t buffer_size ;
   int status ;
   struct kref kref ;
   spinlock_t *lock ;
};
struct ibmasm_event {
   unsigned int serial_number ;
   unsigned int data_size ;
   unsigned char data[2048U] ;
};
struct event_buffer {
   struct ibmasm_event events[10U] ;
   unsigned int next_serial_number ;
   unsigned int next_index ;
   struct list_head readers ;
};
struct ibmasm_remote {
   struct input_dev *keybd_dev ;
   struct input_dev *mouse_dev ;
};
struct service_processor {
   struct list_head node ;
   spinlock_t lock ;
   void *base_address ;
   unsigned int irq ;
   struct command *current_command ;
   struct command *heartbeat ;
   struct list_head command_queue ;
   struct event_buffer *event_buffer ;
   char dirname[16U] ;
   char devname[16U] ;
   unsigned int number ;
   struct ibmasm_remote remote ;
   int serial_line ;
   struct device *dev ;
};
struct ldv_struct_free_irq_9 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_insmod_8 {
   int signal_pending ;
};
struct ldv_struct_interrupt_scenario_6 {
   int arg0 ;
   irqreturn_t (*arg1)(int , void * ) ;
   irqreturn_t (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_pci_scenario_7 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct event_reader {
   int cancelled ;
   unsigned int next_serial_number ;
   wait_queue_head_t wait ;
   struct list_head node ;
   unsigned int data_size ;
   unsigned char data[2048U] ;
};
struct reverse_heartbeat {
   wait_queue_head_t wait ;
   unsigned int stopped ;
};
struct dot_command_header {
   u8 type ;
   u8 command_size ;
   u16 data_size ;
   u8 status ;
   u8 reserved ;
};
struct ibmasmfs_command_data {
   struct service_processor *sp ;
   struct command *command ;
};
struct ibmasmfs_event_data {
   struct service_processor *sp ;
   struct event_reader reader ;
   int active ;
};
struct ibmasmfs_heartbeat_data {
   struct service_processor *sp ;
   struct reverse_heartbeat heartbeat ;
   int active ;
};
typedef int __kernel_pid_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned int oom_flags_t;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField6 ;
   struct __anonstruct____missing_field_name_13 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField8 ;
};
struct thread_struct;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_18 __annonCompField9 ;
};
typedef struct cpumask cpumask_t;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_22 {
   struct __anonstruct____missing_field_name_23 __annonCompField13 ;
   struct __anonstruct____missing_field_name_24 __annonCompField14 ;
};
union __anonunion____missing_field_name_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_22 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_25 __annonCompField16 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct hrtimer;
enum hrtimer_restart;
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_139 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_140 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField35 ;
   struct __anonstruct____missing_field_name_140 __annonCompField36 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct user_struct;
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct io_context;
struct nsproxy;
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_177 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_177 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_179 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_180 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_181 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_183 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_184 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_185 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_178 {
   int _pad[28U] ;
   struct __anonstruct__kill_179 _kill ;
   struct __anonstruct__timer_180 _timer ;
   struct __anonstruct__rt_181 _rt ;
   struct __anonstruct__sigchld_182 _sigchld ;
   struct __anonstruct__sigfault_183 _sigfault ;
   struct __anonstruct__sigpoll_184 _sigpoll ;
   struct __anonstruct__sigsys_185 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_178 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_188 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_189 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_191 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_190 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_191 __annonCompField64 ;
};
union __anonunion_type_data_192 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_194 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_193 {
   union __anonunion_payload_194 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_188 __annonCompField62 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_189 __annonCompField63 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_190 __annonCompField65 ;
   union __anonunion_type_data_192 type_data ;
   union __anonunion____missing_field_name_193 __annonCompField66 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned int may_oom : 1 ;
};
struct sched_class;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
typedef __kernel_long_t __kernel_suseconds_t;
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
enum hrtimer_restart;
struct mouse_input {
   unsigned short y ;
   unsigned short x ;
};
struct keyboard_input {
   unsigned short key_code ;
   unsigned char key_flag ;
   unsigned char key_down ;
};
union __anonunion_data_183 {
   struct mouse_input mouse ;
   struct keyboard_input keyboard ;
};
struct remote_input {
   union __anonunion_data_183 data ;
   unsigned char type ;
   unsigned char pad1 ;
   unsigned char mouse_buttons ;
   unsigned char pad3 ;
};
struct atomic_notifier_head;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct atomic_notifier_head {
   spinlock_t lock ;
   struct notifier_block *head ;
};
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
struct compat_timespec;
struct __anonstruct_futex_32 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_33 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_34 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_31 __annonCompField20 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned int sig_on_uaccess_error : 1 ;
   unsigned int uaccess_err : 1 ;
};
enum hrtimer_restart;
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct __anonstruct_rhb_dot_cmd_202 {
   struct dot_command_header header ;
   unsigned char command[3U] ;
};
struct os_state_command {
   struct dot_command_header header ;
   unsigned char command[3U] ;
   unsigned char data ;
};
struct i2o_message;
struct i2o_header {
   u8 version ;
   u8 message_flags ;
   u16 message_size ;
   u8 target ;
   u8 initiator_and_target ;
   u8 initiator ;
   u8 function ;
   u32 initiator_context ;
};
struct i2o_message {
   struct i2o_header header ;
   void *data ;
};
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct __pthread_internal_list {
   struct __pthread_internal_list *__prev ;
   struct __pthread_internal_list *__next ;
};
typedef struct __pthread_internal_list __pthread_list_t;
struct __pthread_mutex_s {
   int __lock ;
   unsigned int __count ;
   int __owner ;
   unsigned int __nusers ;
   int __kind ;
   int __spins ;
   __pthread_list_t __list ;
};
union __anonunion_pthread_mutex_t_8 {
   struct __pthread_mutex_s __data ;
   char __size[40U] ;
   long __align ;
};
typedef union __anonunion_pthread_mutex_t_8 pthread_mutex_t;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
extern void __VERIFIER_assume(int ) ;
int ldv_undef_int(void) ;
int ldv_undef_int_negative(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
void *ldv_xmalloc_unknown_size(size_t size ) ;
extern int pthread_create(pthread_t * , pthread_attr_t const * , void *(*)(void * ) ,
                          void * ) ;
extern int pthread_join(pthread_t , void ** ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void iounmap(void volatile * ) ;
static void *ldv_dev_get_drvdata_32(struct device const *dev ) ;
static int ldv_dev_set_drvdata_33(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
static int ldv___pci_register_driver_52(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
static void ldv_pci_unregister_driver_51(struct pci_driver *ldv_func_arg1 ) ;
static void ldv_pci_unregister_driver_53(struct pci_driver *ldv_func_arg1 ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
int reader_next_serial_number;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_32((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_33(& pdev->dev, data);
  }
  return;
}
}
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
__inline static int ldv_request_irq_48(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
static void ldv_free_irq_49(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_50(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
int ibmasm_debug ;
int ibmasm_event_buffer_init(struct service_processor *sp ) ;
void ibmasm_event_buffer_exit(struct service_processor *sp ) ;
void ibmasm_register_panic_notifier(void) ;
void ibmasm_unregister_panic_notifier(void) ;
int ibmasm_heartbeat_init(struct service_processor *sp ) ;
void ibmasm_heartbeat_exit(struct service_processor *sp ) ;
int ibmasm_send_driver_vpd(struct service_processor *sp ) ;
int ibmasm_send_os_state(struct service_processor *sp , int os_state ) ;
irqreturn_t ibmasm_interrupt_handler(int irq , void *dev_id ) ;
int ibmasm_init_remote_input_dev(struct service_processor *sp ) ;
void ibmasm_free_remote_input_dev(struct service_processor *sp ) ;
int ibmasmfs_register(void) ;
void ibmasmfs_unregister(void) ;
void ibmasmfs_add_sp(struct service_processor *sp ) ;
__inline static void ibmasm_enable_interrupts(void *base_address , int mask )
{
  void *ctrl_reg ;
  unsigned int tmp ;
  {
  {
  ctrl_reg = base_address + 5028UL;
  tmp = readl((void const volatile *)ctrl_reg);
  writel(tmp & (unsigned int )(~ mask), (void volatile *)ctrl_reg);
  }
  return;
}
}
__inline static void ibmasm_disable_interrupts(void *base_address , int mask )
{
  void *ctrl_reg ;
  unsigned int tmp ;
  {
  {
  ctrl_reg = base_address + 5028UL;
  tmp = readl((void const volatile *)ctrl_reg);
  writel(tmp | (unsigned int )mask, (void volatile *)ctrl_reg);
  }
  return;
}
}
__inline static void enable_sp_interrupts(void *base_address )
{
  {
  {
  ibmasm_enable_interrupts(base_address, 8);
  }
  return;
}
}
__inline static void disable_sp_interrupts(void *base_address )
{
  {
  {
  ibmasm_disable_interrupts(base_address, 8);
  }
  return;
}
}
int ibmasm_debug = 0;
static int ibmasm_init_one(struct pci_dev *pdev , struct pci_device_id const *id )
{
  int result ;
  struct service_processor *sp ;
  void *tmp ;
  struct lock_class_key __key ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  result = pci_enable_device(pdev);
  }
  if (result != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Failed to enable PCI device\n");
    }
    return (result);
  } else {
  }
  {
  result = pci_request_regions(pdev, "ibmasm");
  }
  if (result != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Failed to allocate PCI resources\n");
    }
    goto error_resources;
  } else {
  }
  {
  pci_set_master(pdev);
  tmp = kzalloc(216UL, 208U);
  sp = (struct service_processor *)tmp;
  }
  if ((unsigned long )sp == (unsigned long )((struct service_processor *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Failed to allocate memory\n");
    result = -12;
    }
    goto error_kmalloc;
  } else {
  }
  {
  spinlock_check(& sp->lock);
  __raw_spin_lock_init(& sp->lock.__annonCompField19.rlock, "&(&sp->lock)->rlock",
                       & __key);
  INIT_LIST_HEAD(& sp->command_queue);
  pci_set_drvdata(pdev, (void *)sp);
  sp->dev = & pdev->dev;
  sp->number = (unsigned int )(pdev->bus)->number;
  snprintf((char *)(& sp->dirname), 16UL, "%d", sp->number);
  snprintf((char *)(& sp->devname), 16UL, "%s%d", (char *)"ibmasm", sp->number);
  tmp___0 = ibmasm_event_buffer_init(sp);
  }
  if (tmp___0 != 0) {
    {
    dev_err((struct device const *)sp->dev, "Failed to allocate event buffer\n");
    }
    goto error_eventbuffer;
  } else {
  }
  {
  tmp___1 = ibmasm_heartbeat_init(sp);
  }
  if (tmp___1 != 0) {
    {
    dev_err((struct device const *)sp->dev, "Failed to allocate heartbeat command\n");
    }
    goto error_heartbeat;
  } else {
  }
  {
  sp->irq = pdev->irq;
  sp->base_address = pci_ioremap_bar(pdev, 0);
  }
  if ((unsigned long )sp->base_address == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)sp->dev, "Failed to ioremap pci memory\n");
    result = -19;
    }
    goto error_ioremap;
  } else {
  }
  {
  result = ldv_request_irq_48(sp->irq, & ibmasm_interrupt_handler, 128UL, (char const *)(& sp->devname),
                              (void *)sp);
  }
  if (result != 0) {
    {
    dev_err((struct device const *)sp->dev, "Failed to register interrupt handler\n");
    }
    goto error_request_irq;
  } else {
  }
  {
  enable_sp_interrupts(sp->base_address);
  result = ibmasm_init_remote_input_dev(sp);
  }
  if (result != 0) {
    {
    dev_err((struct device const *)sp->dev, "Failed to initialize remote queue\n");
    }
    goto error_send_message;
  } else {
  }
  {
  result = ibmasm_send_driver_vpd(sp);
  }
  if (result != 0) {
    {
    dev_err((struct device const *)sp->dev, "Failed to send driver VPD to service processor\n");
    }
    goto error_send_message;
  } else {
  }
  {
  result = ibmasm_send_os_state(sp, 5);
  }
  if (result != 0) {
    {
    dev_err((struct device const *)sp->dev, "Failed to send OS state to service processor\n");
    }
    goto error_send_message;
  } else {
  }
  {
  ibmasmfs_add_sp(sp);
  }
  return (0);
  error_send_message:
  {
  disable_sp_interrupts(sp->base_address);
  ibmasm_free_remote_input_dev(sp);
  ldv_free_irq_49(sp->irq, (void *)sp);
  }
  error_request_irq:
  {
  iounmap((void volatile *)sp->base_address);
  }
  error_ioremap:
  {
  ibmasm_heartbeat_exit(sp);
  }
  error_heartbeat:
  {
  ibmasm_event_buffer_exit(sp);
  }
  error_eventbuffer:
  {
  kfree((void const *)sp);
  }
  error_kmalloc:
  {
  pci_release_regions(pdev);
  }
  error_resources:
  {
  pci_disable_device(pdev);
  }
  return (result);
}
}
static void ibmasm_remove_one(struct pci_dev *pdev )
{
  struct service_processor *sp ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  sp = (struct service_processor *)tmp;
  }
  if (ibmasm_debug != 0) {
    {
    printk("\017Unregistering UART\n");
    }
  } else {
  }
  if (ibmasm_debug != 0) {
    {
    printk("\017Sending OS down message\n");
    }
  } else {
  }
  {
  tmp___0 = ibmasm_send_os_state(sp, 4);
  }
  if (tmp___0 != 0) {
    {
    printk("\v%s: failed to get repsonse to \'Send OS State\' command\n\n", (char *)"ibmasm");
    }
  } else {
  }
  if (ibmasm_debug != 0) {
    {
    printk("\017Disabling heartbeats\n");
    }
  } else {
  }
  {
  ibmasm_heartbeat_exit(sp);
  }
  if (ibmasm_debug != 0) {
    {
    printk("\017Disabling interrupts\n");
    }
  } else {
  }
  {
  disable_sp_interrupts(sp->base_address);
  }
  if (ibmasm_debug != 0) {
    {
    printk("\017Freeing SP irq\n");
    }
  } else {
  }
  {
  ldv_free_irq_50(sp->irq, (void *)sp);
  }
  if (ibmasm_debug != 0) {
    {
    printk("\017Cleaning up\n");
    }
  } else {
  }
  {
  ibmasm_free_remote_input_dev(sp);
  iounmap((void volatile *)sp->base_address);
  ibmasm_event_buffer_exit(sp);
  kfree((void const *)sp);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  }
  return;
}
}
static struct pci_device_id ibmasm_pci_table[2U] = { {4116U, 271U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
static struct pci_driver ibmasm_driver =
     {{0, 0}, "ibmasm", (struct pci_device_id const *)(& ibmasm_pci_table), & ibmasm_init_one,
    & ibmasm_remove_one, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0,
                                               0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U,
                                                                   0, {0, {0, 0},
                                                                       0, 0, 0UL}}}},
                                                                {0, 0}}};
static void ibmasm_exit(void)
{
  {
  {
  ibmasm_unregister_panic_notifier();
  ibmasmfs_unregister();
  ldv_pci_unregister_driver_51(& ibmasm_driver);
  printk("\016%s: IBM ASM Service Processor Driver version 1.0 unloaded\n", (char *)"ibmasm");
  }
  return;
}
}
static int ibmasm_init(void)
{
  int result ;
  int tmp ;
  {
  {
  tmp = ldv___pci_register_driver_52(& ibmasm_driver, & __this_module, "ibmasm");
  result = tmp;
  }
  if (result != 0) {
    return (result);
  } else {
  }
  {
  result = ibmasmfs_register();
  }
  if (result != 0) {
    {
    ldv_pci_unregister_driver_53(& ibmasm_driver);
    printk("\v%s: Failed to register ibmasmfs file system\n", (char *)"ibmasm");
    }
    return (result);
  } else {
  }
  {
  ibmasm_register_panic_notifier();
  printk("\016%s: IBM ASM Service Processor Driver version 1.0 loaded\n", (char *)"ibmasm");
  }
  return (0);
}
}
struct pci_device_id const __mod_pci_device_table ;
void *ldv_character_driver_scenario_2(void *arg0 ) ;
void *ldv_character_driver_scenario_3(void *arg0 ) ;
void *ldv_character_driver_scenario_4(void *arg0 ) ;
void *ldv_character_driver_scenario_5(void *arg0 ) ;
void ldv_dispatch_default_deregister_3_8_3(void) ;
void ldv_dispatch_default_register_3_8_4(void) ;
void ldv_dispatch_deregister_11_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_insmod_deregister_13_2(void) ;
void ldv_dispatch_insmod_register_13_3(void) ;
void ldv_dispatch_irq_deregister_9_1(int arg0 ) ;
void ldv_dispatch_irq_register_10_3(int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                    irqreturn_t (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_12_3(struct pci_driver *arg0 ) ;
int ldv_emg___pci_register_driver(struct pci_driver *arg0 , struct module *arg1 ,
                                  char *arg2 ) ;
void ldv_emg_free_irq(int arg0 , void *arg1 ) ;
void ldv_emg_pci_unregister_driver(struct pci_driver *arg0 ) ;
int ldv_emg_request_irq(unsigned int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                        unsigned long arg2 , char *arg3 , void *arg4 ) ;
void *ldv_insmod_8(void *arg0 ) ;
void ldv_insmod_ibmasm_exit_8_2(void (*arg0)(void) ) ;
int ldv_insmod_ibmasm_init_8_9(int (*arg0)(void) ) ;
void *ldv_interrupt_scenario_6(void *arg0 ) ;
enum irqreturn ldv_interrupt_scenario_handler_6_5(irqreturn_t (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void *ldv_main_13(void *arg0 ) ;
void *ldv_pci_scenario_7(void *arg0 ) ;
int ldv_pci_scenario_probe_7_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_scenario_release_7_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int main(void) ;
pthread_t ldv_thread_2 ;
pthread_t ldv_thread_3 ;
pthread_t ldv_thread_4 ;
pthread_t ldv_thread_5 ;
pthread_t ldv_thread_6 ;
pthread_t ldv_thread_7 ;
pthread_t ldv_thread_8 ;
void ldv_dispatch_default_deregister_3_8_3(void)
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_2, (void **)0);
  __VERIFIER_assume(ret == 0);
  ret = pthread_join(ldv_thread_3, (void **)0);
  __VERIFIER_assume(ret == 0);
  ret = pthread_join(ldv_thread_4, (void **)0);
  __VERIFIER_assume(ret == 0);
  ret = pthread_join(ldv_thread_5, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_default_register_3_8_4(void)
{
  int ret ;
  struct ldv_struct_insmod_8 *cf_arg_2 ;
  struct ldv_struct_insmod_8 *cf_arg_3 ;
  struct ldv_struct_insmod_8 *cf_arg_4 ;
  struct ldv_struct_insmod_8 *cf_arg_5 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_insmod_8 *)tmp;
  ret = pthread_create(& ldv_thread_2, (pthread_attr_t const *)0, & ldv_character_driver_scenario_2,
                       (void *)cf_arg_2);
  __VERIFIER_assume(ret == 0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_insmod_8 *)tmp___0;
  ret = pthread_create(& ldv_thread_3, (pthread_attr_t const *)0, & ldv_character_driver_scenario_3,
                       (void *)cf_arg_3);
  __VERIFIER_assume(ret == 0);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_insmod_8 *)tmp___1;
  ret = pthread_create(& ldv_thread_4, (pthread_attr_t const *)0, & ldv_character_driver_scenario_4,
                       (void *)cf_arg_4);
  __VERIFIER_assume(ret == 0);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_insmod_8 *)tmp___2;
  ret = pthread_create(& ldv_thread_5, (pthread_attr_t const *)0, & ldv_character_driver_scenario_5,
                       (void *)cf_arg_5);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_deregister_11_1(struct pci_driver *arg0 )
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_7, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_insmod_deregister_13_2(void)
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_8, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_insmod_register_13_3(void)
{
  int ret ;
  struct ldv_struct_insmod_8 *cf_arg_8 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_insmod_8 *)tmp;
  ret = pthread_create(& ldv_thread_8, (pthread_attr_t const *)0, & ldv_insmod_8,
                       (void *)cf_arg_8);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_irq_deregister_9_1(int arg0 )
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_6, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_irq_register_10_3(int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                    irqreturn_t (*arg2)(int , void * ) , void *arg3 )
{
  int ret ;
  struct ldv_struct_interrupt_scenario_6 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_6 = (struct ldv_struct_interrupt_scenario_6 *)tmp;
  cf_arg_6->arg0 = arg0;
  cf_arg_6->arg1 = arg1;
  cf_arg_6->arg2 = arg2;
  cf_arg_6->arg3 = arg3;
  ret = pthread_create(& ldv_thread_6, (pthread_attr_t const *)0, & ldv_interrupt_scenario_6,
                       (void *)cf_arg_6);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_register_12_3(struct pci_driver *arg0 )
{
  int ret ;
  struct ldv_struct_pci_scenario_7 *cf_arg_7 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_7 = (struct ldv_struct_pci_scenario_7 *)tmp;
  cf_arg_7->arg0 = arg0;
  ret = pthread_create(& ldv_thread_7, (pthread_attr_t const *)0, & ldv_pci_scenario_7,
                       (void *)cf_arg_7);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
int ldv_emg___pci_register_driver(struct pci_driver *arg0 , struct module *arg1 ,
                                  char *arg2 )
{
  struct pci_driver *ldv_12_pci_driver_pci_driver ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_12_pci_driver_pci_driver = (struct pci_driver *)tmp;
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_12_pci_driver_pci_driver = arg0;
    ldv_dispatch_register_12_3(ldv_12_pci_driver_pci_driver);
    }
    return (0);
  } else {
    {
    tmp___0 = ldv_undef_int_negative();
    }
    return (tmp___0);
  }
}
}
void ldv_emg_free_irq(int arg0 , void *arg1 )
{
  int ldv_9_line_line ;
  {
  {
  ldv_9_line_line = arg0;
  ldv_dispatch_irq_deregister_9_1(ldv_9_line_line);
  }
  return;
  return;
}
}
void ldv_emg_pci_unregister_driver(struct pci_driver *arg0 )
{
  struct pci_driver *ldv_11_pci_driver_pci_driver ;
  void *tmp ;
  {
  {
  tmp = external_allocated_data();
  ldv_11_pci_driver_pci_driver = (struct pci_driver *)tmp;
  ldv_11_pci_driver_pci_driver = arg0;
  ldv_dispatch_deregister_11_1(ldv_11_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_emg_request_irq(unsigned int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                        unsigned long arg2 , char *arg3 , void *arg4 )
{
  irqreturn_t (*ldv_10_callback_handler)(int , void * ) ;
  void *ldv_10_data_data ;
  int ldv_10_line_line ;
  irqreturn_t (*ldv_10_thread_thread)(int , void * ) ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = external_allocated_data();
  ldv_10_callback_handler = (irqreturn_t (*)(int , void * ))tmp;
  ldv_10_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_10_thread_thread = (irqreturn_t (*)(int , void * ))tmp___0;
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_10_line_line = (int )arg0;
    ldv_10_callback_handler = arg1;
    ldv_10_thread_thread = (irqreturn_t (*)(int , void * ))0;
    ldv_10_data_data = arg4;
    ldv_dispatch_irq_register_10_3(ldv_10_line_line, ldv_10_callback_handler, ldv_10_thread_thread,
                                   ldv_10_data_data);
    }
    return (0);
  } else {
    {
    tmp___1 = ldv_undef_int_negative();
    }
    return (tmp___1);
  }
}
}
void *ldv_insmod_8(void *arg0 )
{
  void (*ldv_8_ibmasm_exit_default)(void) ;
  int (*ldv_8_ibmasm_init_default)(void) ;
  int ldv_8_reg_guard_3_default ;
  int ldv_8_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_8_ibmasm_exit_default = (void (*)(void))tmp;
  tmp___0 = external_allocated_data();
  ldv_8_ibmasm_init_default = (int (*)(void))tmp___0;
  ldv_free(arg0);
  ldv_8_ret_default = ldv_insmod_ibmasm_init_8_9(ldv_8_ibmasm_init_default);
  ldv_8_ret_default = ldv_post_init(ldv_8_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume(ldv_8_ret_default != 0);
    }
    return ((void *)0);
  } else {
    {
    __VERIFIER_assume(ldv_8_ret_default == 0);
    ldv_8_reg_guard_3_default = ldv_undef_int();
    }
    if (ldv_8_reg_guard_3_default != 0) {
      {
      ldv_dispatch_default_register_3_8_4();
      }
    } else {
    }
    if (ldv_8_reg_guard_3_default != 0) {
      {
      ldv_dispatch_default_deregister_3_8_3();
      }
    } else {
    }
    {
    ldv_insmod_ibmasm_exit_8_2(ldv_8_ibmasm_exit_default);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
void ldv_insmod_ibmasm_exit_8_2(void (*arg0)(void) )
{
  {
  {
  ibmasm_exit();
  }
  return;
}
}
int ldv_insmod_ibmasm_init_8_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = ibmasm_init();
  }
  return (tmp);
}
}
void *ldv_interrupt_scenario_6(void *arg0 )
{
  irqreturn_t (*ldv_6_callback_handler)(int , void * ) ;
  void *ldv_6_data_data ;
  int ldv_6_line_line ;
  enum irqreturn ldv_6_ret_val_default ;
  irqreturn_t (*ldv_6_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_scenario_6 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  data = (struct ldv_struct_interrupt_scenario_6 *)arg0;
  tmp = external_allocated_data();
  ldv_6_callback_handler = (irqreturn_t (*)(int , void * ))tmp;
  ldv_6_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_6_thread_thread = (irqreturn_t (*)(int , void * ))tmp___0;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_scenario_6 *)0)) {
    {
    ldv_6_line_line = data->arg0;
    ldv_6_callback_handler = data->arg1;
    ldv_6_thread_thread = data->arg2;
    ldv_6_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_6_ret_val_default = ldv_interrupt_scenario_handler_6_5(ldv_6_callback_handler,
                                                             ldv_6_line_line, ldv_6_data_data);
  ldv_switch_to_process_context();
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume((unsigned int )ldv_6_ret_val_default == 2U);
    }
  } else {
    {
    __VERIFIER_assume((unsigned int )ldv_6_ret_val_default != 2U);
    }
  }
  return ((void *)0);
  return ((void *)0);
}
}
enum irqreturn ldv_interrupt_scenario_handler_6_5(irqreturn_t (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = ibmasm_interrupt_handler(arg1, arg2);
  }
  return (tmp);
}
}
void *ldv_main_13(void *arg0 )
{
  {
  {
  ldv_initialize();
  ldv_dispatch_insmod_register_13_3();
  ldv_dispatch_insmod_deregister_13_2();
  ldv_check_final_state();
  __VERIFIER_assume(0);
  }
  return ((void *)0);
  return ((void *)0);
}
}
void *ldv_pci_scenario_7(void *arg0 )
{
  struct pci_driver *ldv_7_container_pci_driver ;
  struct pci_device_id *ldv_7_ldv_param_17_1_default ;
  struct pci_dev *ldv_7_resource_dev ;
  int ldv_7_ret_default ;
  struct ldv_struct_pci_scenario_7 *data ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  {
  data = (struct ldv_struct_pci_scenario_7 *)arg0;
  tmp = external_allocated_data();
  ldv_7_container_pci_driver = (struct pci_driver *)tmp;
  tmp___0 = external_allocated_data();
  ldv_7_ldv_param_17_1_default = (struct pci_device_id *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_7_resource_dev = (struct pci_dev *)tmp___1;
  ldv_7_ret_default = ldv_undef_int();
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_scenario_7 *)0)) {
    {
    ldv_7_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_7_resource_dev = (struct pci_dev *)tmp___2;
  }
  goto ldv_main_7;
  return ((void *)0);
  ldv_main_7:
  {
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    {
    tmp___3 = ldv_xmalloc_unknown_size(0UL);
    ldv_7_ldv_param_17_1_default = (struct pci_device_id *)tmp___3;
    ldv_pre_probe();
    ldv_7_ret_default = ldv_pci_scenario_probe_7_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_7_container_pci_driver->probe,
                                                    ldv_7_resource_dev, ldv_7_ldv_param_17_1_default);
    ldv_7_ret_default = ldv_post_probe(ldv_7_ret_default);
    ldv_free((void *)ldv_7_ldv_param_17_1_default);
    tmp___4 = ldv_undef_int();
    }
    if (tmp___4 != 0) {
      {
      __VERIFIER_assume(ldv_7_ret_default == 0);
      }
      goto ldv_call_7;
    } else {
      {
      __VERIFIER_assume(ldv_7_ret_default != 0);
      }
      goto ldv_main_7;
    }
  } else {
    {
    ldv_free((void *)ldv_7_resource_dev);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_7:
  {
  tmp___6 = ldv_undef_int();
  }
  {
  if (tmp___6 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___6 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___6 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_call_7;
  case_2: ;
  goto ldv_call_7;
  case_3:
  {
  ldv_pci_scenario_release_7_2(ldv_7_container_pci_driver->remove, ldv_7_resource_dev);
  }
  goto ldv_main_7;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
}
}
int ldv_pci_scenario_probe_7_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = ibmasm_init_one(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_scenario_release_7_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  ibmasm_remove_one(arg1);
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_main_13((void *)0);
  }
  return (0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_32(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_33(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_48(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_request_irq(irq, handler, flags, (char *)name, dev);
  }
  return (tmp);
}
}
static void ldv_free_irq_49(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  ldv_emg_free_irq((int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_50(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  ldv_emg_free_irq((int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_pci_unregister_driver_51(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  ldv_emg_pci_unregister_driver(ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_52(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg___pci_register_driver(ldv_func_arg1, ldv_func_arg2, (char *)ldv_func_arg3);
  }
  return (tmp);
}
}
static void ldv_pci_unregister_driver_53(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  ldv_emg_pci_unregister_driver(ldv_func_arg1);
  }
  return;
}
}
long __builtin_expect(long exp , long c ) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head, head->next);
  }
  return;
}
}
extern void might_fault(void) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern int sprintf(char * , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_46(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_48(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_51(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_54(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_57(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_lock(void) ;
void ldv_spin_unlock_lock(void) ;
void ldv_spin_lock_lock_of_service_processor(void) ;
void ldv_spin_unlock_lock_of_service_processor(void) ;
int ldv_filter_err_code(int ret_val ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_47(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
extern struct timespec current_kernel_time(void) ;
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = __builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/kref.h", 71);
    }
  } else {
  }
  {
  __builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  }
  if (tmp___0 != 0) {
    {
    (*release)(kref);
    }
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  {
  tmp = kref_sub(kref, 1U, release);
  }
  return (tmp);
}
}
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
extern void free_pages(unsigned long , unsigned int ) ;
extern void *__kmalloc(size_t , gfp_t ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void d_instantiate(struct dentry * , struct inode * ) ;
extern struct dentry *d_make_root(struct inode * ) ;
extern void d_rehash(struct dentry * ) ;
__inline static void d_add(struct dentry *entry , struct inode *inode )
{
  {
  {
  d_instantiate(entry, inode);
  d_rehash(entry);
  }
  return;
}
}
extern void dput(struct dentry * ) ;
extern struct dentry *mount_single(struct file_system_type * , int , void * , int (*)(struct super_block * ,
                                                                                       void * ,
                                                                                       int ) ) ;
extern void kill_litter_super(struct super_block * ) ;
extern int register_filesystem(struct file_system_type * ) ;
extern int unregister_filesystem(struct file_system_type * ) ;
extern int generic_delete_inode(struct inode * ) ;
extern unsigned int get_next_ino(void) ;
extern struct inode *new_inode(struct super_block * ) ;
extern loff_t generic_file_llseek(struct file * , loff_t , int ) ;
extern int simple_statfs(struct dentry * , struct kstatfs * ) ;
extern int simple_open(struct inode * , struct file * ) ;
extern struct file_operations const simple_dir_operations ;
extern struct inode_operations const simple_dir_inode_operations ;
extern struct dentry *d_alloc_name(struct dentry * , char const * ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = __builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_from_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = __builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_from_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_from_user_overflow();
      }
    }
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = __builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_to_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = __builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_to_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_to_user_overflow();
      }
    }
  }
  return (n);
}
}
void ibmasm_free_command(struct kref *kref ) ;
__inline static void command_put(struct command *cmd )
{
  unsigned long flags ;
  spinlock_t *lock ;
  {
  {
  lock = cmd->lock;
  ldv___ldv_spin_lock_46(lock);
  kref_put(& cmd->kref, & ibmasm_free_command);
  ldv_spin_unlock_irqrestore_47(lock, flags);
  }
  return;
}
}
struct command *ibmasm_new_command(struct service_processor *sp , size_t buffer_size ) ;
void ibmasm_exec_command(struct service_processor *sp , struct command *cmd ) ;
void ibmasm_wait_for_response(struct command *cmd , int timeout ) ;
void ibmasm_event_reader_register(struct service_processor *sp , struct event_reader *reader ) ;
void ibmasm_event_reader_unregister(struct service_processor *sp , struct event_reader *reader ) ;
int ibmasm_get_next_event(struct service_processor *sp , struct event_reader *reader ) ;
void ibmasm_cancel_next_event(struct event_reader *reader ) ;
void ibmasm_init_reverse_heartbeat(struct service_processor *sp , struct reverse_heartbeat *rhb ) ;
int ibmasm_start_reverse_heartbeat(struct service_processor *sp , struct reverse_heartbeat *rhb ) ;
void ibmasm_stop_reverse_heartbeat(struct reverse_heartbeat *rhb ) ;
__inline static unsigned int get_dot_command_timeout(void *buffer )
{
  struct dot_command_header *header___0 ;
  unsigned char *cmd ;
  {
  header___0 = (struct dot_command_header *)buffer;
  cmd = (unsigned char *)(buffer + 6U);
  if ((unsigned int )header___0->command_size == 3U) {
    if (((unsigned int )*cmd == 6U && (unsigned int )*(cmd + 1UL) == 3U) && (unsigned int )*(cmd + 2UL) == 1U) {
      return (240U);
    } else {
    }
  } else
  if ((unsigned int )header___0->command_size == 2U) {
    if ((unsigned int )*cmd == 7U && (unsigned int )*(cmd + 1UL) == 1U) {
      return (240U);
    } else {
    }
    if ((unsigned int )*cmd == 8U) {
      return (240U);
    } else {
    }
  } else {
  }
  return (45U);
}
}
static struct list_head service_processors = {& service_processors, & service_processors};
static struct inode *ibmasmfs_make_inode(struct super_block *sb , int mode ) ;
static void ibmasmfs_create_files(struct super_block *sb ) ;
static int ibmasmfs_fill_super(struct super_block *sb , void *data , int silent ) ;
static struct dentry *ibmasmfs_mount(struct file_system_type *fst , int flags , char const *name ,
                                     void *data )
{
  struct dentry *tmp ;
  {
  {
  tmp = mount_single(fst, flags, data, & ibmasmfs_fill_super);
  }
  return (tmp);
}
}
static struct super_operations const ibmasmfs_s_ops =
     {0, 0, 0, 0, & generic_delete_inode, 0, 0, 0, 0, 0, & simple_statfs, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0};
static struct file_operations const *ibmasmfs_dir_ops = & simple_dir_operations;
static struct file_system_type ibmasmfs_type =
     {"ibmasmfs", 0, & ibmasmfs_mount, & kill_litter_super, & __this_module, 0, {0},
    {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
      {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                     {(char)0}, {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}},
    {{{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
       {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                      {(char)0}, {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
      {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                     {(char)0}, {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}};
static int ibmasmfs_fill_super(struct super_block *sb , void *data , int silent )
{
  struct inode *root ;
  {
  {
  sb->s_blocksize = 4096UL;
  sb->s_blocksize_bits = 12U;
  sb->s_magic = 1718775655UL;
  sb->s_op = & ibmasmfs_s_ops;
  sb->s_time_gran = 1U;
  root = ibmasmfs_make_inode(sb, 16704);
  }
  if ((unsigned long )root == (unsigned long )((struct inode *)0)) {
    return (-12);
  } else {
  }
  {
  root->i_op = & simple_dir_inode_operations;
  root->i_fop = ibmasmfs_dir_ops;
  sb->s_root = d_make_root(root);
  }
  if ((unsigned long )sb->s_root == (unsigned long )((struct dentry *)0)) {
    return (-12);
  } else {
  }
  {
  ibmasmfs_create_files(sb);
  }
  return (0);
}
}
static struct inode *ibmasmfs_make_inode(struct super_block *sb , int mode )
{
  struct inode *ret ;
  struct inode *tmp ;
  unsigned int tmp___0 ;
  struct timespec tmp___1 ;
  struct timespec tmp___2 ;
  {
  {
  tmp = new_inode(sb);
  ret = tmp;
  }
  if ((unsigned long )ret != (unsigned long )((struct inode *)0)) {
    {
    tmp___0 = get_next_ino();
    ret->i_ino = (unsigned long )tmp___0;
    ret->i_mode = (umode_t )mode;
    tmp___2 = current_kernel_time();
    ret->i_ctime = tmp___2;
    tmp___1 = tmp___2;
    ret->i_mtime = tmp___1;
    ret->i_atime = tmp___1;
    }
  } else {
  }
  return (ret);
}
}
static struct dentry *ibmasmfs_create_file(struct dentry *parent , char const *name ,
                                           struct file_operations const *fops ,
                                           void *data , int mode )
{
  struct dentry *dentry ;
  struct inode *inode ;
  {
  {
  dentry = d_alloc_name(parent, name);
  }
  if ((unsigned long )dentry == (unsigned long )((struct dentry *)0)) {
    return ((struct dentry *)0);
  } else {
  }
  {
  inode = ibmasmfs_make_inode(parent->d_sb, mode | 32768);
  }
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    {
    dput(dentry);
    }
    return ((struct dentry *)0);
  } else {
  }
  {
  inode->i_fop = fops;
  inode->i_private = data;
  d_add(dentry, inode);
  }
  return (dentry);
}
}
static struct dentry *ibmasmfs_create_dir(struct dentry *parent , char const *name )
{
  struct dentry *dentry ;
  struct inode *inode ;
  {
  {
  dentry = d_alloc_name(parent, name);
  }
  if ((unsigned long )dentry == (unsigned long )((struct dentry *)0)) {
    return ((struct dentry *)0);
  } else {
  }
  {
  inode = ibmasmfs_make_inode(parent->d_sb, 16704);
  }
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    {
    dput(dentry);
    }
    return ((struct dentry *)0);
  } else {
  }
  {
  inode->i_op = & simple_dir_inode_operations;
  inode->i_fop = ibmasmfs_dir_ops;
  d_add(dentry, inode);
  }
  return (dentry);
}
}
int ibmasmfs_register(void)
{
  int tmp ;
  {
  {
  tmp = register_filesystem(& ibmasmfs_type);
  }
  return (tmp);
}
}
void ibmasmfs_unregister(void)
{
  {
  {
  unregister_filesystem(& ibmasmfs_type);
  }
  return;
}
}
void ibmasmfs_add_sp(struct service_processor *sp )
{
  {
  {
  list_add(& sp->node, & service_processors);
  }
  return;
}
}
static int command_file_open(struct inode *inode , struct file *file )
{
  struct ibmasmfs_command_data *command_data ;
  void *tmp ;
  {
  if ((unsigned long )inode->i_private == (unsigned long )((void *)0)) {
    return (-19);
  } else {
  }
  {
  tmp = kmalloc(16UL, 208U);
  command_data = (struct ibmasmfs_command_data *)tmp;
  }
  if ((unsigned long )command_data == (unsigned long )((struct ibmasmfs_command_data *)0)) {
    return (-12);
  } else {
  }
  command_data->command = (struct command *)0;
  command_data->sp = (struct service_processor *)inode->i_private;
  file->private_data = (void *)command_data;
  return (0);
}
}
static int command_file_close(struct inode *inode , struct file *file )
{
  struct ibmasmfs_command_data *command_data ;
  {
  command_data = (struct ibmasmfs_command_data *)file->private_data;
  if ((unsigned long )command_data->command != (unsigned long )((struct command *)0)) {
    {
    command_put(command_data->command);
    }
  } else {
  }
  {
  kfree((void const *)command_data);
  }
  return (0);
}
}
static ssize_t command_file_read(struct file *file , char *buf , size_t count , loff_t *offset )
{
  struct ibmasmfs_command_data *command_data ;
  struct command *cmd ;
  int len ;
  unsigned long flags ;
  size_t _min1 ;
  size_t _min2 ;
  unsigned long tmp ;
  {
  command_data = (struct ibmasmfs_command_data *)file->private_data;
  if (*offset < 0LL) {
    return (-22L);
  } else {
  }
  if (count - 1UL > 32767UL) {
    return (0L);
  } else {
  }
  if (*offset != 0LL) {
    return (0L);
  } else {
  }
  {
  ldv___ldv_spin_lock_48(& (command_data->sp)->lock);
  cmd = command_data->command;
  }
  if ((unsigned long )cmd == (unsigned long )((struct command *)0)) {
    {
    ldv_spin_unlock_irqrestore_49(& (command_data->sp)->lock, flags);
    }
    return (0L);
  } else {
  }
  {
  command_data->command = (struct command *)0;
  ldv_spin_unlock_irqrestore_49(& (command_data->sp)->lock, flags);
  }
  if (cmd->status != 1) {
    {
    command_put(cmd);
    }
    return (-5L);
  } else {
  }
  {
  _min1 = count;
  _min2 = cmd->buffer_size;
  len = (int )(_min1 < _min2 ? _min1 : _min2);
  tmp = copy_to_user((void *)buf, (void const *)cmd->buffer, (unsigned long )len);
  }
  if (tmp != 0UL) {
    {
    command_put(cmd);
    }
    return (-14L);
  } else {
  }
  {
  command_put(cmd);
  }
  return ((ssize_t )len);
}
}
static ssize_t command_file_write(struct file *file , char const *ubuff , size_t count ,
                                  loff_t *offset )
{
  struct ibmasmfs_command_data *command_data ;
  struct command *cmd ;
  unsigned long flags ;
  unsigned long tmp ;
  unsigned int tmp___0 ;
  {
  command_data = (struct ibmasmfs_command_data *)file->private_data;
  if (*offset < 0LL) {
    return (-22L);
  } else {
  }
  if (count - 1UL > 32767UL) {
    return (0L);
  } else {
  }
  if (*offset != 0LL) {
    return (0L);
  } else {
  }
  if ((unsigned long )command_data->command != (unsigned long )((struct command *)0)) {
    return (-11L);
  } else {
  }
  {
  cmd = ibmasm_new_command(command_data->sp, count);
  }
  if ((unsigned long )cmd == (unsigned long )((struct command *)0)) {
    return (-12L);
  } else {
  }
  {
  tmp = copy_from_user((void *)cmd->buffer, (void const *)ubuff, count);
  }
  if (tmp != 0UL) {
    {
    command_put(cmd);
    }
    return (-14L);
  } else {
  }
  {
  ldv___ldv_spin_lock_51(& (command_data->sp)->lock);
  }
  if ((unsigned long )command_data->command != (unsigned long )((struct command *)0)) {
    {
    ldv_spin_unlock_irqrestore_49(& (command_data->sp)->lock, flags);
    command_put(cmd);
    }
    return (-11L);
  } else {
  }
  {
  command_data->command = cmd;
  ldv_spin_unlock_irqrestore_49(& (command_data->sp)->lock, flags);
  ibmasm_exec_command(command_data->sp, cmd);
  tmp___0 = get_dot_command_timeout((void *)cmd->buffer);
  ibmasm_wait_for_response(cmd, (int )tmp___0);
  }
  return ((ssize_t )count);
}
}
static int event_file_open(struct inode *inode , struct file *file )
{
  struct ibmasmfs_event_data *event_data ;
  struct service_processor *sp ;
  void *tmp ;
  {
  if ((unsigned long )inode->i_private == (unsigned long )((void *)0)) {
    return (-19);
  } else {
  }
  {
  sp = (struct service_processor *)inode->i_private;
  tmp = kmalloc(2184UL, 208U);
  event_data = (struct ibmasmfs_event_data *)tmp;
  }
  if ((unsigned long )event_data == (unsigned long )((struct ibmasmfs_event_data *)0)) {
    return (-12);
  } else {
  }
  {
  ibmasm_event_reader_register(sp, & event_data->reader);
  event_data->sp = sp;
  event_data->active = 0;
  file->private_data = (void *)event_data;
  }
  return (0);
}
}
static int event_file_close(struct inode *inode , struct file *file )
{
  struct ibmasmfs_event_data *event_data ;
  {
  {
  event_data = (struct ibmasmfs_event_data *)file->private_data;
  ibmasm_event_reader_unregister(event_data->sp, & event_data->reader);
  kfree((void const *)event_data);
  }
  return (0);
}
}
static ssize_t event_file_read(struct file *file , char *buf , size_t count , loff_t *offset )
{
  struct ibmasmfs_event_data *event_data ;
  struct event_reader *reader ;
  struct service_processor *sp ;
  int ret ;
  unsigned long flags ;
  unsigned long tmp ;
  {
  event_data = (struct ibmasmfs_event_data *)file->private_data;
  reader = & event_data->reader;
  sp = event_data->sp;
  if (*offset < 0LL) {
    return (-22L);
  } else {
  }
  if (count - 1UL > 2047UL) {
    return (0L);
  } else {
  }
  if (*offset != 0LL) {
    return (0L);
  } else {
  }
  {
  ldv___ldv_spin_lock_54(& sp->lock);
  }
  if (event_data->active != 0) {
    {
    ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
    }
    return (-16L);
  } else {
  }
  {
  event_data->active = 1;
  ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
  ret = ibmasm_get_next_event(sp, reader);
  }
  if (ret <= 0) {
    goto out;
  } else {
  }
  if (count < (size_t )reader->data_size) {
    ret = -22;
    goto out;
  } else {
  }
  {
  tmp = copy_to_user((void *)buf, (void const *)(& reader->data), (unsigned long )reader->data_size);
  }
  if (tmp != 0UL) {
    ret = -14;
    goto out;
  } else {
  }
  ret = (int )reader->data_size;
  out:
  event_data->active = 0;
  return ((ssize_t )ret);
}
}
static ssize_t event_file_write(struct file *file , char const *buf , size_t count ,
                                loff_t *offset )
{
  struct ibmasmfs_event_data *event_data ;
  {
  event_data = (struct ibmasmfs_event_data *)file->private_data;
  if (*offset < 0LL) {
    return (-22L);
  } else {
  }
  if (count != 1UL) {
    return (0L);
  } else {
  }
  if (*offset != 0LL) {
    return (0L);
  } else {
  }
  {
  ibmasm_cancel_next_event(& event_data->reader);
  }
  return (0L);
}
}
static int r_heartbeat_file_open(struct inode *inode , struct file *file )
{
  struct ibmasmfs_heartbeat_data *rhbeat ;
  void *tmp ;
  {
  if ((unsigned long )inode->i_private == (unsigned long )((void *)0)) {
    return (-19);
  } else {
  }
  {
  tmp = kmalloc(112UL, 208U);
  rhbeat = (struct ibmasmfs_heartbeat_data *)tmp;
  }
  if ((unsigned long )rhbeat == (unsigned long )((struct ibmasmfs_heartbeat_data *)0)) {
    return (-12);
  } else {
  }
  {
  rhbeat->sp = (struct service_processor *)inode->i_private;
  rhbeat->active = 0;
  ibmasm_init_reverse_heartbeat(rhbeat->sp, & rhbeat->heartbeat);
  file->private_data = (void *)rhbeat;
  }
  return (0);
}
}
static int r_heartbeat_file_close(struct inode *inode , struct file *file )
{
  struct ibmasmfs_heartbeat_data *rhbeat ;
  {
  {
  rhbeat = (struct ibmasmfs_heartbeat_data *)file->private_data;
  kfree((void const *)rhbeat);
  }
  return (0);
}
}
static ssize_t r_heartbeat_file_read(struct file *file , char *buf , size_t count ,
                                     loff_t *offset )
{
  struct ibmasmfs_heartbeat_data *rhbeat ;
  unsigned long flags ;
  int result ;
  {
  rhbeat = (struct ibmasmfs_heartbeat_data *)file->private_data;
  if (*offset < 0LL) {
    return (-22L);
  } else {
  }
  if (count - 1UL > 1023UL) {
    return (0L);
  } else {
  }
  if (*offset != 0LL) {
    return (0L);
  } else {
  }
  {
  ldv___ldv_spin_lock_57(& (rhbeat->sp)->lock);
  }
  if (rhbeat->active != 0) {
    {
    ldv_spin_unlock_irqrestore_49(& (rhbeat->sp)->lock, flags);
    }
    return (-16L);
  } else {
  }
  {
  rhbeat->active = 1;
  ldv_spin_unlock_irqrestore_49(& (rhbeat->sp)->lock, flags);
  result = ibmasm_start_reverse_heartbeat(rhbeat->sp, & rhbeat->heartbeat);
  rhbeat->active = 0;
  }
  return ((ssize_t )result);
}
}
static ssize_t r_heartbeat_file_write(struct file *file , char const *buf , size_t count ,
                                      loff_t *offset )
{
  struct ibmasmfs_heartbeat_data *rhbeat ;
  {
  rhbeat = (struct ibmasmfs_heartbeat_data *)file->private_data;
  if (*offset < 0LL) {
    return (-22L);
  } else {
  }
  if (count != 1UL) {
    return (0L);
  } else {
  }
  if (*offset != 0LL) {
    return (0L);
  } else {
  }
  if (rhbeat->active != 0) {
    {
    ibmasm_stop_reverse_heartbeat(& rhbeat->heartbeat);
    }
  } else {
  }
  return (1L);
}
}
static int remote_settings_file_close(struct inode *inode , struct file *file )
{
  {
  return (0);
}
}
static ssize_t remote_settings_file_read(struct file *file , char *buf , size_t count ,
                                         loff_t *offset )
{
  void *address ;
  unsigned char *page ;
  int retval ;
  int len ;
  unsigned int value ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  address = file->private_data;
  len = 0;
  if (*offset < 0LL) {
    return (-22L);
  } else {
  }
  if (count - 1UL > 1023UL) {
    return (0L);
  } else {
  }
  if (*offset != 0LL) {
    return (0L);
  } else {
  }
  {
  tmp = __get_free_pages(208U, 0U);
  page = (unsigned char *)tmp;
  }
  if ((unsigned long )page == (unsigned long )((unsigned char *)0U)) {
    return (-12L);
  } else {
  }
  {
  value = readl((void const volatile *)address);
  len = sprintf((char *)page, "%d\n", value);
  tmp___0 = copy_to_user((void *)buf, (void const *)page, (unsigned long )len);
  }
  if (tmp___0 != 0UL) {
    retval = -14;
    goto exit;
  } else {
  }
  *offset = *offset + (loff_t )len;
  retval = len;
  exit:
  {
  free_pages((unsigned long )page, 0U);
  }
  return ((ssize_t )retval);
}
}
static ssize_t remote_settings_file_write(struct file *file , char const *ubuff ,
                                          size_t count , loff_t *offset )
{
  void *address ;
  char *buff ;
  unsigned int value ;
  void *tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  address = file->private_data;
  if (*offset < 0LL) {
    return (-22L);
  } else {
  }
  if (count - 1UL > 1023UL) {
    return (0L);
  } else {
  }
  if (*offset != 0LL) {
    return (0L);
  } else {
  }
  {
  tmp = kzalloc(count + 1UL, 208U);
  buff = (char *)tmp;
  }
  if ((unsigned long )buff == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  {
  tmp___0 = copy_from_user((void *)buff, (void const *)ubuff, count);
  }
  if (tmp___0 != 0UL) {
    {
    kfree((void const *)buff);
    }
    return (-14L);
  } else {
  }
  {
  tmp___1 = simple_strtoul((char const *)buff, (char **)0, 10U);
  value = (unsigned int )tmp___1;
  writel(value, (void volatile *)address);
  kfree((void const *)buff);
  }
  return ((ssize_t )count);
}
}
static struct file_operations const command_fops =
     {0, & generic_file_llseek, & command_file_read, & command_file_write, 0, 0, 0,
    0, 0, 0, 0, & command_file_open, 0, & command_file_close, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static struct file_operations const event_fops =
     {0, & generic_file_llseek, & event_file_read, & event_file_write, 0, 0, 0, 0, 0,
    0, 0, & event_file_open, 0, & event_file_close, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
static struct file_operations const r_heartbeat_fops =
     {0, & generic_file_llseek, & r_heartbeat_file_read, & r_heartbeat_file_write, 0,
    0, 0, 0, 0, 0, 0, & r_heartbeat_file_open, 0, & r_heartbeat_file_close, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const remote_settings_fops =
     {0, & generic_file_llseek, & remote_settings_file_read, & remote_settings_file_write,
    0, 0, 0, 0, 0, 0, 0, & simple_open, 0, & remote_settings_file_close, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void ibmasmfs_create_files(struct super_block *sb )
{
  struct list_head *entry ;
  struct service_processor *sp ;
  struct dentry *dir ;
  struct dentry *remote_dir ;
  struct list_head const *__mptr ;
  {
  entry = service_processors.next;
  goto ldv_30154;
  ldv_30153:
  {
  __mptr = (struct list_head const *)entry;
  sp = (struct service_processor *)__mptr;
  dir = ibmasmfs_create_dir(sb->s_root, (char const *)(& sp->dirname));
  }
  if ((unsigned long )dir == (unsigned long )((struct dentry *)0)) {
    goto ldv_30152;
  } else {
  }
  {
  ibmasmfs_create_file(dir, "command", & command_fops, (void *)sp, 384);
  ibmasmfs_create_file(dir, "event", & event_fops, (void *)sp, 384);
  ibmasmfs_create_file(dir, "reverse_heartbeat", & r_heartbeat_fops, (void *)sp, 384);
  remote_dir = ibmasmfs_create_dir(dir, "remote_video");
  }
  if ((unsigned long )remote_dir == (unsigned long )((struct dentry *)0)) {
    goto ldv_30152;
  } else {
  }
  {
  ibmasmfs_create_file(remote_dir, "width", & remote_settings_fops, sp->base_address + 705012U,
                       384);
  ibmasmfs_create_file(remote_dir, "height", & remote_settings_fops, sp->base_address + 705016U,
                       384);
  ibmasmfs_create_file(remote_dir, "depth", & remote_settings_fops, sp->base_address + 705020U,
                       384);
  }
  ldv_30152:
  entry = entry->next;
  ldv_30154: ;
  if ((unsigned long )entry != (unsigned long )(& service_processors)) {
    goto ldv_30153;
  } else {
  }
  return;
}
}
void ldv_character_driver_scenario_callback_2_22(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 ) ;
void ldv_character_driver_scenario_callback_2_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 ) ;
void ldv_character_driver_scenario_callback_3_22(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 ) ;
void ldv_character_driver_scenario_callback_3_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 ) ;
void ldv_character_driver_scenario_callback_4_22(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 ) ;
void ldv_character_driver_scenario_callback_4_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 ) ;
void ldv_character_driver_scenario_callback_5_22(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 ) ;
void ldv_character_driver_scenario_callback_5_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 ) ;
int ldv_character_driver_scenario_probe_2_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
int ldv_character_driver_scenario_probe_3_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
int ldv_character_driver_scenario_probe_4_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
int ldv_character_driver_scenario_probe_5_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_release_5_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_write_2_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 ) ;
void ldv_character_driver_scenario_write_3_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 ) ;
void ldv_character_driver_scenario_write_4_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 ) ;
void ldv_character_driver_scenario_write_5_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 ) ;
pthread_t ldv_thread_2 ;
pthread_t ldv_thread_3 ;
pthread_t ldv_thread_4 ;
pthread_t ldv_thread_5 ;
void *ldv_character_driver_scenario_2(void *arg0 )
{
  loff_t (*ldv_2_callback_llseek)(struct file * , loff_t , int ) ;
  ssize_t (*ldv_2_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  struct file_operations *ldv_2_container_file_operations ;
  char *ldv_2_ldv_param_22_1_default ;
  long long *ldv_2_ldv_param_22_3_default ;
  char *ldv_2_ldv_param_4_1_default ;
  long long *ldv_2_ldv_param_4_3_default ;
  long long ldv_2_ldv_param_5_1_default ;
  int ldv_2_ldv_param_5_2_default ;
  struct file *ldv_2_resource_file ;
  struct inode *ldv_2_resource_inode ;
  int ldv_2_ret_default ;
  size_t ldv_2_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  int tmp___19 ;
  {
  {
  tmp = external_allocated_data();
  ldv_2_callback_llseek = (loff_t (*)(struct file * , loff_t , int ))tmp;
  tmp___0 = external_allocated_data();
  ldv_2_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_2_container_file_operations = (struct file_operations *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_2_ldv_param_22_1_default = (char *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_2_ldv_param_22_3_default = (long long *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_2_ldv_param_4_1_default = (char *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_2_ldv_param_4_3_default = (long long *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_2_resource_file = (struct file *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_2_resource_inode = (struct inode *)tmp___7;
  ldv_2_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___8 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_container_file_operations = (struct file_operations *)tmp___8;
  tmp___9 = ldv_xmalloc(520UL);
  ldv_2_resource_file = (struct file *)tmp___9;
  tmp___10 = ldv_xmalloc(1032UL);
  ldv_2_resource_inode = (struct inode *)tmp___10;
  tmp___11 = ldv_undef_int();
  ldv_2_size_cnt_write_size = (size_t )tmp___11;
  }
  goto ldv_main_2;
  return ((void *)0);
  ldv_main_2:
  {
  tmp___13 = ldv_undef_int();
  }
  if (tmp___13 != 0) {
    {
    ldv_2_ret_default = ldv_character_driver_scenario_probe_2_13(ldv_2_container_file_operations->open,
                                                                 ldv_2_resource_inode,
                                                                 ldv_2_resource_file);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___12 = ldv_undef_int();
    }
    if (tmp___12 != 0) {
      {
      __VERIFIER_assume(ldv_2_ret_default == 0);
      }
      goto ldv_call_2;
    } else {
      {
      __VERIFIER_assume(ldv_2_ret_default != 0);
      }
      goto ldv_main_2;
    }
  } else {
    {
    ldv_free((void *)ldv_2_resource_file);
    ldv_free((void *)ldv_2_resource_inode);
    ldv_free((void *)ldv_2_container_file_operations);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_2:
  {
  tmp___14 = ldv_undef_int();
  }
  {
  if (tmp___14 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___14 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___14 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___15 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___15;
  tmp___16 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___16;
  __VERIFIER_assume(ldv_2_size_cnt_write_size <= 2147479552UL);
  ldv_character_driver_scenario_write_2_4((ssize_t (*)(struct file * , char * , size_t ,
                                                       loff_t * ))ldv_2_container_file_operations->write,
                                          ldv_2_resource_file, ldv_2_ldv_param_4_1_default,
                                          ldv_2_size_cnt_write_size, ldv_2_ldv_param_4_3_default);
  ldv_free((void *)ldv_2_ldv_param_4_1_default);
  ldv_free((void *)ldv_2_ldv_param_4_3_default);
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_character_driver_scenario_release_2_2(ldv_2_container_file_operations->release,
                                            ldv_2_resource_inode, ldv_2_resource_file);
  }
  goto ldv_main_2;
  case_3:
  {
  tmp___19 = ldv_undef_int();
  }
  if (tmp___19 != 0) {
    {
    tmp___17 = ldv_xmalloc_unknown_size(0UL);
    ldv_2_ldv_param_22_1_default = (char *)tmp___17;
    tmp___18 = ldv_xmalloc_unknown_size(0UL);
    ldv_2_ldv_param_22_3_default = (long long *)tmp___18;
    ldv_character_driver_scenario_callback_2_22(ldv_2_callback_read, ldv_2_resource_file,
                                                ldv_2_ldv_param_22_1_default, ldv_2_size_cnt_write_size,
                                                ldv_2_ldv_param_22_3_default);
    ldv_free((void *)ldv_2_ldv_param_22_1_default);
    ldv_free((void *)ldv_2_ldv_param_22_3_default);
    }
  } else {
    {
    ldv_character_driver_scenario_callback_2_5(ldv_2_callback_llseek, ldv_2_resource_file,
                                               ldv_2_ldv_param_5_1_default, ldv_2_ldv_param_5_2_default);
    }
  }
  goto ldv_30374;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  ldv_30374: ;
  goto ldv_call_2;
  return ((void *)0);
}
}
void *ldv_character_driver_scenario_3(void *arg0 )
{
  loff_t (*ldv_3_callback_llseek)(struct file * , loff_t , int ) ;
  ssize_t (*ldv_3_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  struct file_operations *ldv_3_container_file_operations ;
  char *ldv_3_ldv_param_22_1_default ;
  long long *ldv_3_ldv_param_22_3_default ;
  char *ldv_3_ldv_param_4_1_default ;
  long long *ldv_3_ldv_param_4_3_default ;
  long long ldv_3_ldv_param_5_1_default ;
  int ldv_3_ldv_param_5_2_default ;
  struct file *ldv_3_resource_file ;
  struct inode *ldv_3_resource_inode ;
  int ldv_3_ret_default ;
  size_t ldv_3_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  int tmp___19 ;
  {
  {
  tmp = external_allocated_data();
  ldv_3_callback_llseek = (loff_t (*)(struct file * , loff_t , int ))tmp;
  tmp___0 = external_allocated_data();
  ldv_3_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_3_container_file_operations = (struct file_operations *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_3_ldv_param_22_1_default = (char *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_3_ldv_param_22_3_default = (long long *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_3_ldv_param_4_1_default = (char *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_3_ldv_param_4_3_default = (long long *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_3_resource_file = (struct file *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_3_resource_inode = (struct inode *)tmp___7;
  ldv_3_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___8 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_container_file_operations = (struct file_operations *)tmp___8;
  tmp___9 = ldv_xmalloc(520UL);
  ldv_3_resource_file = (struct file *)tmp___9;
  tmp___10 = ldv_xmalloc(1032UL);
  ldv_3_resource_inode = (struct inode *)tmp___10;
  tmp___11 = ldv_undef_int();
  ldv_3_size_cnt_write_size = (size_t )tmp___11;
  }
  goto ldv_main_3;
  return ((void *)0);
  ldv_main_3:
  {
  tmp___13 = ldv_undef_int();
  }
  if (tmp___13 != 0) {
    {
    ldv_3_ret_default = ldv_character_driver_scenario_probe_3_13(ldv_3_container_file_operations->open,
                                                                 ldv_3_resource_inode,
                                                                 ldv_3_resource_file);
    ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
    tmp___12 = ldv_undef_int();
    }
    if (tmp___12 != 0) {
      {
      __VERIFIER_assume(ldv_3_ret_default == 0);
      }
      goto ldv_call_3;
    } else {
      {
      __VERIFIER_assume(ldv_3_ret_default != 0);
      }
      goto ldv_main_3;
    }
  } else {
    {
    ldv_free((void *)ldv_3_resource_file);
    ldv_free((void *)ldv_3_resource_inode);
    ldv_free((void *)ldv_3_container_file_operations);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_3:
  {
  tmp___14 = ldv_undef_int();
  }
  {
  if (tmp___14 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___14 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___14 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___15 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_ldv_param_4_1_default = (char *)tmp___15;
  tmp___16 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_ldv_param_4_3_default = (long long *)tmp___16;
  __VERIFIER_assume(ldv_3_size_cnt_write_size <= 2147479552UL);
  ldv_character_driver_scenario_write_3_4((ssize_t (*)(struct file * , char * , size_t ,
                                                       loff_t * ))ldv_3_container_file_operations->write,
                                          ldv_3_resource_file, ldv_3_ldv_param_4_1_default,
                                          ldv_3_size_cnt_write_size, ldv_3_ldv_param_4_3_default);
  ldv_free((void *)ldv_3_ldv_param_4_1_default);
  ldv_free((void *)ldv_3_ldv_param_4_3_default);
  }
  goto ldv_call_3;
  case_2:
  {
  ldv_character_driver_scenario_release_3_2(ldv_3_container_file_operations->release,
                                            ldv_3_resource_inode, ldv_3_resource_file);
  }
  goto ldv_main_3;
  case_3:
  {
  tmp___19 = ldv_undef_int();
  }
  if (tmp___19 != 0) {
    {
    tmp___17 = ldv_xmalloc_unknown_size(0UL);
    ldv_3_ldv_param_22_1_default = (char *)tmp___17;
    tmp___18 = ldv_xmalloc_unknown_size(0UL);
    ldv_3_ldv_param_22_3_default = (long long *)tmp___18;
    ldv_character_driver_scenario_callback_3_22(ldv_3_callback_read, ldv_3_resource_file,
                                                ldv_3_ldv_param_22_1_default, ldv_3_size_cnt_write_size,
                                                ldv_3_ldv_param_22_3_default);
    ldv_free((void *)ldv_3_ldv_param_22_1_default);
    ldv_free((void *)ldv_3_ldv_param_22_3_default);
    }
  } else {
    {
    ldv_character_driver_scenario_callback_3_5(ldv_3_callback_llseek, ldv_3_resource_file,
                                               ldv_3_ldv_param_5_1_default, ldv_3_ldv_param_5_2_default);
    }
  }
  goto ldv_30404;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  ldv_30404: ;
  goto ldv_call_3;
  return ((void *)0);
}
}
void *ldv_character_driver_scenario_4(void *arg0 )
{
  loff_t (*ldv_4_callback_llseek)(struct file * , loff_t , int ) ;
  ssize_t (*ldv_4_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  struct file_operations *ldv_4_container_file_operations ;
  char *ldv_4_ldv_param_22_1_default ;
  long long *ldv_4_ldv_param_22_3_default ;
  char *ldv_4_ldv_param_4_1_default ;
  long long *ldv_4_ldv_param_4_3_default ;
  long long ldv_4_ldv_param_5_1_default ;
  int ldv_4_ldv_param_5_2_default ;
  struct file *ldv_4_resource_file ;
  struct inode *ldv_4_resource_inode ;
  int ldv_4_ret_default ;
  size_t ldv_4_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  int tmp___19 ;
  {
  {
  tmp = external_allocated_data();
  ldv_4_callback_llseek = (loff_t (*)(struct file * , loff_t , int ))tmp;
  tmp___0 = external_allocated_data();
  ldv_4_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_4_container_file_operations = (struct file_operations *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_4_ldv_param_22_1_default = (char *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_4_ldv_param_22_3_default = (long long *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_4_ldv_param_4_1_default = (char *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_4_ldv_param_4_3_default = (long long *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_4_resource_file = (struct file *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_4_resource_inode = (struct inode *)tmp___7;
  ldv_4_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___8 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_container_file_operations = (struct file_operations *)tmp___8;
  tmp___9 = ldv_xmalloc(520UL);
  ldv_4_resource_file = (struct file *)tmp___9;
  tmp___10 = ldv_xmalloc(1032UL);
  ldv_4_resource_inode = (struct inode *)tmp___10;
  tmp___11 = ldv_undef_int();
  ldv_4_size_cnt_write_size = (size_t )tmp___11;
  }
  goto ldv_main_4;
  return ((void *)0);
  ldv_main_4:
  {
  tmp___13 = ldv_undef_int();
  }
  if (tmp___13 != 0) {
    {
    ldv_4_ret_default = ldv_character_driver_scenario_probe_4_13(ldv_4_container_file_operations->open,
                                                                 ldv_4_resource_inode,
                                                                 ldv_4_resource_file);
    ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
    tmp___12 = ldv_undef_int();
    }
    if (tmp___12 != 0) {
      {
      __VERIFIER_assume(ldv_4_ret_default == 0);
      }
      goto ldv_call_4;
    } else {
      {
      __VERIFIER_assume(ldv_4_ret_default != 0);
      }
      goto ldv_main_4;
    }
  } else {
    {
    ldv_free((void *)ldv_4_resource_file);
    ldv_free((void *)ldv_4_resource_inode);
    ldv_free((void *)ldv_4_container_file_operations);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_4:
  {
  tmp___14 = ldv_undef_int();
  }
  {
  if (tmp___14 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___14 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___14 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___15 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_4_1_default = (char *)tmp___15;
  tmp___16 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_4_3_default = (long long *)tmp___16;
  __VERIFIER_assume(ldv_4_size_cnt_write_size <= 2147479552UL);
  ldv_character_driver_scenario_write_4_4((ssize_t (*)(struct file * , char * , size_t ,
                                                       loff_t * ))ldv_4_container_file_operations->write,
                                          ldv_4_resource_file, ldv_4_ldv_param_4_1_default,
                                          ldv_4_size_cnt_write_size, ldv_4_ldv_param_4_3_default);
  ldv_free((void *)ldv_4_ldv_param_4_1_default);
  ldv_free((void *)ldv_4_ldv_param_4_3_default);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_character_driver_scenario_release_4_2(ldv_4_container_file_operations->release,
                                            ldv_4_resource_inode, ldv_4_resource_file);
  }
  goto ldv_main_4;
  case_3:
  {
  tmp___19 = ldv_undef_int();
  }
  if (tmp___19 != 0) {
    {
    tmp___17 = ldv_xmalloc_unknown_size(0UL);
    ldv_4_ldv_param_22_1_default = (char *)tmp___17;
    tmp___18 = ldv_xmalloc_unknown_size(0UL);
    ldv_4_ldv_param_22_3_default = (long long *)tmp___18;
    ldv_character_driver_scenario_callback_4_22(ldv_4_callback_read, ldv_4_resource_file,
                                                ldv_4_ldv_param_22_1_default, ldv_4_size_cnt_write_size,
                                                ldv_4_ldv_param_22_3_default);
    ldv_free((void *)ldv_4_ldv_param_22_1_default);
    ldv_free((void *)ldv_4_ldv_param_22_3_default);
    }
  } else {
    {
    ldv_character_driver_scenario_callback_4_5(ldv_4_callback_llseek, ldv_4_resource_file,
                                               ldv_4_ldv_param_5_1_default, ldv_4_ldv_param_5_2_default);
    }
  }
  goto ldv_30434;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  ldv_30434: ;
  goto ldv_call_4;
  return ((void *)0);
}
}
void *ldv_character_driver_scenario_5(void *arg0 )
{
  loff_t (*ldv_5_callback_llseek)(struct file * , loff_t , int ) ;
  ssize_t (*ldv_5_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  struct file_operations *ldv_5_container_file_operations ;
  char *ldv_5_ldv_param_22_1_default ;
  long long *ldv_5_ldv_param_22_3_default ;
  char *ldv_5_ldv_param_4_1_default ;
  long long *ldv_5_ldv_param_4_3_default ;
  long long ldv_5_ldv_param_5_1_default ;
  int ldv_5_ldv_param_5_2_default ;
  struct file *ldv_5_resource_file ;
  struct inode *ldv_5_resource_inode ;
  int ldv_5_ret_default ;
  size_t ldv_5_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  int tmp___19 ;
  {
  {
  tmp = external_allocated_data();
  ldv_5_callback_llseek = (loff_t (*)(struct file * , loff_t , int ))tmp;
  tmp___0 = external_allocated_data();
  ldv_5_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_5_container_file_operations = (struct file_operations *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_5_ldv_param_22_1_default = (char *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_5_ldv_param_22_3_default = (long long *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_5_ldv_param_4_1_default = (char *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_5_ldv_param_4_3_default = (long long *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_5_resource_file = (struct file *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_5_resource_inode = (struct inode *)tmp___7;
  ldv_5_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___8 = ldv_xmalloc_unknown_size(0UL);
  ldv_5_container_file_operations = (struct file_operations *)tmp___8;
  tmp___9 = ldv_xmalloc(520UL);
  ldv_5_resource_file = (struct file *)tmp___9;
  tmp___10 = ldv_xmalloc(1032UL);
  ldv_5_resource_inode = (struct inode *)tmp___10;
  tmp___11 = ldv_undef_int();
  ldv_5_size_cnt_write_size = (size_t )tmp___11;
  }
  goto ldv_main_5;
  return ((void *)0);
  ldv_main_5:
  {
  tmp___13 = ldv_undef_int();
  }
  if (tmp___13 != 0) {
    {
    ldv_5_ret_default = ldv_character_driver_scenario_probe_5_13(ldv_5_container_file_operations->open,
                                                                 ldv_5_resource_inode,
                                                                 ldv_5_resource_file);
    ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
    tmp___12 = ldv_undef_int();
    }
    if (tmp___12 != 0) {
      {
      __VERIFIER_assume(ldv_5_ret_default == 0);
      }
      goto ldv_call_5;
    } else {
      {
      __VERIFIER_assume(ldv_5_ret_default != 0);
      }
      goto ldv_main_5;
    }
  } else {
    {
    ldv_free((void *)ldv_5_resource_file);
    ldv_free((void *)ldv_5_resource_inode);
    ldv_free((void *)ldv_5_container_file_operations);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_5:
  {
  tmp___14 = ldv_undef_int();
  }
  {
  if (tmp___14 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___14 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___14 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___15 = ldv_xmalloc_unknown_size(0UL);
  ldv_5_ldv_param_4_1_default = (char *)tmp___15;
  tmp___16 = ldv_xmalloc_unknown_size(0UL);
  ldv_5_ldv_param_4_3_default = (long long *)tmp___16;
  __VERIFIER_assume(ldv_5_size_cnt_write_size <= 2147479552UL);
  ldv_character_driver_scenario_write_5_4((ssize_t (*)(struct file * , char * , size_t ,
                                                       loff_t * ))ldv_5_container_file_operations->write,
                                          ldv_5_resource_file, ldv_5_ldv_param_4_1_default,
                                          ldv_5_size_cnt_write_size, ldv_5_ldv_param_4_3_default);
  ldv_free((void *)ldv_5_ldv_param_4_1_default);
  ldv_free((void *)ldv_5_ldv_param_4_3_default);
  }
  goto ldv_call_5;
  case_2:
  {
  ldv_character_driver_scenario_release_5_2(ldv_5_container_file_operations->release,
                                            ldv_5_resource_inode, ldv_5_resource_file);
  }
  goto ldv_main_5;
  case_3:
  {
  tmp___19 = ldv_undef_int();
  }
  if (tmp___19 != 0) {
    {
    tmp___17 = ldv_xmalloc_unknown_size(0UL);
    ldv_5_ldv_param_22_1_default = (char *)tmp___17;
    tmp___18 = ldv_xmalloc_unknown_size(0UL);
    ldv_5_ldv_param_22_3_default = (long long *)tmp___18;
    ldv_character_driver_scenario_callback_5_22(ldv_5_callback_read, ldv_5_resource_file,
                                                ldv_5_ldv_param_22_1_default, ldv_5_size_cnt_write_size,
                                                ldv_5_ldv_param_22_3_default);
    ldv_free((void *)ldv_5_ldv_param_22_1_default);
    ldv_free((void *)ldv_5_ldv_param_22_3_default);
    }
  } else {
    {
    ldv_character_driver_scenario_callback_5_5(ldv_5_callback_llseek, ldv_5_resource_file,
                                               ldv_5_ldv_param_5_1_default, ldv_5_ldv_param_5_2_default);
    }
  }
  goto ldv_30464;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  ldv_30464: ;
  goto ldv_call_5;
  return ((void *)0);
}
}
void ldv_character_driver_scenario_callback_2_22(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 )
{
  {
  {
  command_file_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_2_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 )
{
  {
  {
  generic_file_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_3_22(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 )
{
  {
  {
  event_file_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_3_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 )
{
  {
  {
  generic_file_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_4_22(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 )
{
  {
  {
  r_heartbeat_file_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_4_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 )
{
  {
  {
  generic_file_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_5_22(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 )
{
  {
  {
  remote_settings_file_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_5_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 )
{
  {
  {
  generic_file_llseek(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_character_driver_scenario_probe_2_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = command_file_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_character_driver_scenario_probe_3_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = event_file_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_character_driver_scenario_probe_4_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = r_heartbeat_file_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_character_driver_scenario_probe_5_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = simple_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_character_driver_scenario_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 )
{
  {
  {
  command_file_close(arg1, arg2);
  }
  return;
}
}
void ldv_character_driver_scenario_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 )
{
  {
  {
  event_file_close(arg1, arg2);
  }
  return;
}
}
void ldv_character_driver_scenario_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 )
{
  {
  {
  r_heartbeat_file_close(arg1, arg2);
  }
  return;
}
}
void ldv_character_driver_scenario_release_5_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 )
{
  {
  {
  remote_settings_file_close(arg1, arg2);
  }
  return;
}
}
void ldv_character_driver_scenario_write_2_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 )
{
  {
  {
  command_file_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_character_driver_scenario_write_3_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 )
{
  {
  {
  event_file_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_character_driver_scenario_write_4_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 )
{
  {
  {
  r_heartbeat_file_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_character_driver_scenario_write_5_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 )
{
  {
  {
  remote_settings_file_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
static void ldv___ldv_spin_lock_46(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_47(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_lock();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_48(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_lock_of_service_processor();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_51(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_54(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_57(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void *memcpy(void * , void const * , size_t ) ;
static void ldv___ldv_spin_lock_53(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_55(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_57___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_59(spinlock_t *ldv_func_arg1 ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  {
  {
  memcpy(dst, (void const *)src, count);
  }
  return;
}
}
extern void schedule(void) ;
void ibmasm_receive_event(struct service_processor *sp , void *data , unsigned int data_size ) ;
static void wake_up_event_readers(struct service_processor *sp )
{
  struct event_reader *reader ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)(sp->event_buffer)->readers.next;
  reader = (struct event_reader *)(__mptr + 0xffffffffffffffa0UL);
  goto ldv_32374;
  ldv_32373:
  {
  __wake_up(& reader->wait, 1U, 1, (void *)0);
  __mptr___0 = (struct list_head const *)reader->node.next;
  reader = (struct event_reader *)(__mptr___0 + 0xffffffffffffffa0UL);
  }
  ldv_32374: ;
  if ((unsigned long )(& reader->node) != (unsigned long )(& (sp->event_buffer)->readers)) {
    goto ldv_32373;
  } else {
  }
  return;
}
}
void ibmasm_receive_event(struct service_processor *sp , void *data , unsigned int data_size )
{
  struct event_buffer *buffer ;
  struct ibmasm_event *event ;
  unsigned long flags ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  {
  {
  buffer = sp->event_buffer;
  _min1 = data_size;
  _min2 = 2048U;
  data_size = _min1 < _min2 ? _min1 : _min2;
  ldv___ldv_spin_lock_53(& sp->lock);
  event = (struct ibmasm_event *)(& buffer->events + (unsigned long )buffer->next_index);
  memcpy_fromio((void *)(& event->data), (void const volatile *)data, (size_t )data_size);
  event->data_size = data_size;
  event->serial_number = buffer->next_serial_number;
  buffer->next_index = (buffer->next_index + 1U) % 10U;
  buffer->next_serial_number = buffer->next_serial_number + 1U;
  reader_next_serial_number = reader_next_serial_number + 1;
  ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
  wake_up_event_readers(sp);
  }
  return;
}
}
__inline static int event_available(struct event_buffer *b , struct event_reader *r )
{
  {
  return (r->next_serial_number < b->next_serial_number);
}
}
int ibmasm_get_next_event(struct service_processor *sp , struct event_reader *reader )
{
  struct event_buffer *buffer ;
  struct ibmasm_event *event ;
  unsigned int index ;
  unsigned long flags ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  buffer = sp->event_buffer;
  reader->cancelled = 0;
  __ret = 0;
  tmp___1 = event_available(buffer, reader);
  }
  if (tmp___1 == 0 && reader->cancelled == 0) {
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_32405:
    {
    tmp = prepare_to_wait_event(& reader->wait, & __wait, 1);
    __int = tmp;
    tmp___0 = event_available(buffer, reader);
    }
    if (tmp___0 != 0 || reader->cancelled != 0) {
      goto ldv_32404;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_32404;
    } else {
    }
    {
    schedule();
    }
    goto ldv_32405;
    ldv_32404:
    {
    finish_wait(& reader->wait, & __wait);
    }
    __ret = (int )__ret___0;
  } else {
  }
  if (__ret != 0) {
    return (-512);
  } else {
  }
  {
  tmp___2 = event_available(buffer, reader);
  }
  if (tmp___2 == 0) {
    return (0);
  } else {
  }
  {
  ldv___ldv_spin_lock_55(& sp->lock);
  index = buffer->next_index;
  event = (struct ibmasm_event *)(& buffer->events + (unsigned long )index);
  }
  goto ldv_32409;
  ldv_32408:
  index = (index + 1U) % 10U;
  event = (struct ibmasm_event *)(& buffer->events + (unsigned long )index);
  ldv_32409: ;
  if (event->serial_number < reader->next_serial_number) {
    goto ldv_32408;
  } else {
  }
  {
  memcpy((void *)(& reader->data), (void const *)(& event->data), (size_t )event->data_size);
  reader->data_size = event->data_size;
  reader->next_serial_number = event->serial_number + 1U;
  ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
  }
  return ((int )event->data_size);
}
}
void ibmasm_cancel_next_event(struct event_reader *reader )
{
  {
  {
  reader->cancelled = 1;
  __wake_up(& reader->wait, 1U, 1, (void *)0);
  }
  return;
}
}
void ibmasm_event_reader_register(struct service_processor *sp , struct event_reader *reader )
{
  unsigned long flags ;
  struct lock_class_key __key ;
  {
  {
  ldv___ldv_spin_lock_57___0(& sp->lock);
  reader->next_serial_number = (sp->event_buffer)->next_serial_number;
  reader_next_serial_number = 1;
  ldv_assert("", reader_next_serial_number == 1);
  __init_waitqueue_head(& reader->wait, "&reader->wait", & __key);
  list_add(& reader->node, & (sp->event_buffer)->readers);
  ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
  }
  return;
}
}
void ibmasm_event_reader_unregister(struct service_processor *sp , struct event_reader *reader )
{
  unsigned long flags ;
  {
  {
  ldv___ldv_spin_lock_59(& sp->lock);
  list_del(& reader->node);
  ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
  }
  return;
}
}
int ibmasm_event_buffer_init(struct service_processor *sp )
{
  struct event_buffer *buffer ;
  struct ibmasm_event *event ;
  int i ;
  void *tmp ;
  {
  {
  tmp = kmalloc(20584UL, 208U);
  buffer = (struct event_buffer *)tmp;
  }
  if ((unsigned long )buffer == (unsigned long )((struct event_buffer *)0)) {
    return (1);
  } else {
  }
  buffer->next_index = 0U;
  buffer->next_serial_number = 1U;
  event = (struct ibmasm_event *)(& buffer->events);
  i = 0;
  goto ldv_32432;
  ldv_32431:
  event->serial_number = 0U;
  i = i + 1;
  event = event + 1;
  ldv_32432: ;
  if (i <= 9) {
    goto ldv_32431;
  } else {
  }
  {
  INIT_LIST_HEAD(& buffer->readers);
  sp->event_buffer = buffer;
  }
  return (0);
}
}
void ibmasm_event_buffer_exit(struct service_processor *sp )
{
  {
  {
  kfree((void const *)sp->event_buffer);
  }
  return;
}
}
static void ldv___ldv_spin_lock_53(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_55(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_57___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_59(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  }
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __xadd_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5537;
  case_2:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5537;
  case_4:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5537;
  case_8:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5537;
  switch_default:
  {
  __xadd_wrong_size();
  }
  switch_break: ;
  }
  ldv_5537: ;
  return (i + __ret);
}
}
static void ldv___ldv_spin_lock_51___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_53___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_56(spinlock_t *ldv_func_arg1 ) ;
__inline static void ldv_spin_unlock_irqrestore_47(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
extern void do_gettimeofday(struct timeval * ) ;
__inline static void kref_init(struct kref *kref )
{
  {
  {
  atomic_set(& kref->refcount, 1);
  }
  return;
}
}
__inline static void kref_get(struct kref *kref )
{
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = atomic_add_return(1, & kref->refcount);
  __ret_warn_once = tmp <= 1;
  tmp___2 = __builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp___0 = __builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_null("include/linux/kref.h", 47);
      }
    } else {
    }
    {
    tmp___1 = __builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  {
  __builtin_expect(__ret_warn_once != 0, 0L);
  }
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern long schedule_timeout(long ) ;
__inline static char *get_timestamp(char *buf )
{
  struct timeval now ;
  {
  {
  do_gettimeofday(& now);
  sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_usec);
  }
  return (buf);
}
}
__inline static void command_put___0(struct command *cmd )
{
  unsigned long flags ;
  spinlock_t *lock ;
  {
  {
  lock = cmd->lock;
  ldv___ldv_spin_lock_51___0(lock);
  kref_put(& cmd->kref, & ibmasm_free_command);
  ldv_spin_unlock_irqrestore_47(lock, flags);
  }
  return;
}
}
__inline static void command_get(struct command *cmd )
{
  {
  {
  kref_get(& cmd->kref);
  }
  return;
}
}
void ibmasm_receive_command_response(struct service_processor *sp , void *response ,
                                     size_t size ) ;
int ibmasm_send_i2o_message(struct service_processor *sp ) ;
static void exec_next_command(struct service_processor *sp ) ;
static atomic_t command_count = {0};
struct command *ibmasm_new_command(struct service_processor *sp , size_t buffer_size )
{
  struct command *cmd ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  int tmp___1 ;
  {
  if (buffer_size > 32768UL) {
    return ((struct command *)0);
  } else {
  }
  {
  tmp = kzalloc(136UL, 208U);
  cmd = (struct command *)tmp;
  }
  if ((unsigned long )cmd == (unsigned long )((struct command *)0)) {
    return ((struct command *)0);
  } else {
  }
  {
  tmp___0 = kzalloc(buffer_size, 208U);
  cmd->buffer = (unsigned char *)tmp___0;
  }
  if ((unsigned long )cmd->buffer == (unsigned long )((unsigned char *)0U)) {
    {
    kfree((void const *)cmd);
    }
    return ((struct command *)0);
  } else {
  }
  {
  cmd->buffer_size = buffer_size;
  kref_init(& cmd->kref);
  cmd->lock = & sp->lock;
  cmd->status = 0;
  __init_waitqueue_head(& cmd->wait, "&cmd->wait", & __key);
  INIT_LIST_HEAD(& cmd->queue_node);
  atomic_inc(& command_count);
  }
  if (ibmasm_debug != 0) {
    {
    tmp___1 = atomic_read((atomic_t const *)(& command_count));
    printk("\017command count: %d\n", tmp___1);
    }
  } else {
  }
  return (cmd);
}
}
void ibmasm_free_command(struct kref *kref )
{
  struct command *cmd ;
  struct kref const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct kref const *)kref;
  cmd = (struct command *)(__mptr + 0xffffffffffffff84UL);
  list_del(& cmd->queue_node);
  atomic_dec(& command_count);
  }
  if (ibmasm_debug != 0) {
    {
    tmp = atomic_read((atomic_t const *)(& command_count));
    printk("\017command count: %d\n", tmp);
    }
  } else {
  }
  {
  kfree((void const *)cmd->buffer);
  kfree((void const *)cmd);
  }
  return;
}
}
static void enqueue_command(struct service_processor *sp , struct command *cmd )
{
  {
  {
  list_add_tail(& cmd->queue_node, & sp->command_queue);
  }
  return;
}
}
static struct command *dequeue_command(struct service_processor *sp )
{
  struct command *cmd ;
  struct list_head *next ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  {
  tmp = list_empty((struct list_head const *)(& sp->command_queue));
  }
  if (tmp != 0) {
    return ((struct command *)0);
  } else {
  }
  {
  next = sp->command_queue.next;
  list_del_init(next);
  __mptr = (struct list_head const *)next;
  cmd = (struct command *)__mptr;
  }
  return (cmd);
}
}
__inline static void do_exec_command(struct service_processor *sp )
{
  char tsbuf[32U] ;
  char *tmp ;
  int tmp___0 ;
  {
  if (ibmasm_debug != 0) {
    {
    tmp = get_timestamp((char *)(& tsbuf));
    printk("\017%s:%d at %s\n", "do_exec_command", 101, tmp);
    }
  } else {
  }
  {
  tmp___0 = ibmasm_send_i2o_message(sp);
  }
  if (tmp___0 != 0) {
    {
    (sp->current_command)->status = 2;
    __wake_up(& (sp->current_command)->wait, 3U, 1, (void *)0);
    command_put___0(sp->current_command);
    exec_next_command(sp);
    }
  } else {
  }
  return;
}
}
void ibmasm_exec_command(struct service_processor *sp , struct command *cmd )
{
  unsigned long flags ;
  char tsbuf[32U] ;
  char *tmp ;
  {
  if (ibmasm_debug != 0) {
    {
    tmp = get_timestamp((char *)(& tsbuf));
    printk("\017%s:%d at %s\n", "ibmasm_exec_command", 124, tmp);
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_53___0(& sp->lock);
  }
  if ((unsigned long )sp->current_command == (unsigned long )((struct command *)0)) {
    {
    sp->current_command = cmd;
    command_get(sp->current_command);
    ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
    do_exec_command(sp);
    }
  } else {
    {
    enqueue_command(sp, cmd);
    ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
    }
  }
  return;
}
}
static void exec_next_command(struct service_processor *sp )
{
  unsigned long flags ;
  char tsbuf[32U] ;
  char *tmp ;
  {
  if (ibmasm_debug != 0) {
    {
    tmp = get_timestamp((char *)(& tsbuf));
    printk("\017%s:%d at %s\n", "exec_next_command", 144, tmp);
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_56(& sp->lock);
  sp->current_command = dequeue_command(sp);
  }
  if ((unsigned long )sp->current_command != (unsigned long )((struct command *)0)) {
    {
    command_get(sp->current_command);
    ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
    do_exec_command(sp);
    }
  } else {
    {
    ldv_spin_unlock_irqrestore_49(& sp->lock, flags);
    }
  }
  return;
}
}
void ibmasm_wait_for_response(struct command *cmd , int timeout )
{
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  bool __cond___0 ;
  {
  __ret = (long )(timeout * 250);
  __cond___0 = (unsigned int )cmd->status - 1U <= 1U;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    __ret___0 = (long )(timeout * 250);
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_32415:
    {
    tmp = prepare_to_wait_event(& cmd->wait, & __wait, 1);
    __int = tmp;
    __cond = (unsigned int )cmd->status - 1U <= 1U;
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_32414;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_32414;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_32415;
    ldv_32414:
    {
    finish_wait(& cmd->wait, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  return;
}
}
void ibmasm_receive_command_response(struct service_processor *sp , void *response ,
                                     size_t size )
{
  struct command *cmd ;
  size_t _min1 ;
  size_t _min2 ;
  {
  cmd = sp->current_command;
  if ((unsigned long )sp->current_command == (unsigned long )((struct command *)0)) {
    return;
  } else {
  }
  {
  _min1 = size;
  _min2 = cmd->buffer_size;
  memcpy_fromio((void *)cmd->buffer, (void const volatile *)response, _min1 < _min2 ? _min1 : _min2);
  cmd->status = 1;
  __wake_up(& (sp->current_command)->wait, 3U, 1, (void *)0);
  command_put___0(sp->current_command);
  exec_next_command(sp);
  }
  return;
}
}
static void ldv___ldv_spin_lock_51___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_53___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_56(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_service_processor();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern struct input_dev *input_allocate_device(void) ;
extern void input_free_device(struct input_dev * ) ;
extern int input_register_device(struct input_dev * ) ;
extern void input_unregister_device(struct input_dev * ) ;
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_report_key(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  {
  input_event(dev, 1U, code, value != 0);
  }
  return;
}
}
__inline static void input_report_abs(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  {
  input_event(dev, 3U, code, value);
  }
  return;
}
}
__inline static void input_sync(struct input_dev *dev )
{
  {
  {
  input_event(dev, 0U, 0U, 0);
  }
  return;
}
}
extern void input_set_abs_params(struct input_dev * , unsigned int , int , int ,
                                 int , int ) ;
void ibmasm_handle_mouse_interrupt(struct service_processor *sp ) ;
__inline static int advance_queue_reader(struct service_processor *sp , unsigned long reader )
{
  {
  reader = reader + 1UL;
  if (reader == 60UL) {
    reader = 0UL;
  } else {
  }
  {
  writel((unsigned int )reader, (void volatile *)(sp->base_address + 704520U));
  }
  return ((int )reader);
}
}
static unsigned short const xlate_high[256U] =
  { (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        14U, 15U, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, 28U, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        70U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, 1U,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        102U, 105U, 103U, 106U,
        108U, 104U, 109U, 107U,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, 110U,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, 69U,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, 77U, 72U,
        75U, 80U, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, 55U, 78U,
        (unsigned short)0, 74U, 83U, 98U,
        82U, 79U, 80U, 81U,
        75U, 76U, 77U, 71U,
        72U, 73U, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, 59U, 60U,
        61U, 62U, 63U, 64U,
        65U, 66U, 67U, 68U,
        87U, 88U, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, 42U, (unsigned short)0, 29U,
        (unsigned short)0, 58U, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, 56U, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, 111U};
static unsigned short const xlate[256U] =
  { 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
        57U, 2U, 40U, 4U,
        5U, 6U, 8U, 40U,
        10U, 11U, 9U, 13U,
        51U, 12U, 52U, 53U,
        11U, 2U, 3U, 4U,
        5U, 6U, 7U, 8U,
        9U, 10U, 39U, 39U,
        51U, 13U, 52U, 53U,
        3U, 30U, 48U, 46U,
        32U, 18U, 33U, 34U,
        35U, 23U, 36U, 37U,
        38U, 50U, 49U, 24U,
        25U, 16U, 19U, 31U,
        20U, 22U, 47U, 17U,
        45U, 21U, 44U, 26U,
        43U, 27U, 7U, 12U,
        41U, 30U, 48U, 46U,
        32U, 18U, 33U, 34U,
        35U, 23U, 36U, 37U,
        38U, 50U, 49U, 24U,
        25U, 16U, 19U, 31U,
        20U, 22U, 47U, 17U,
        45U, 21U, 44U, 26U,
        43U, 27U, 41U};
static void print_input(struct remote_input *input )
{
  unsigned char buttons ;
  {
  if ((unsigned int )input->type == 1U) {
    buttons = input->mouse_buttons;
    if (ibmasm_debug != 0) {
      {
      printk("\017remote mouse movement: (x,y)=(%d,%d)%s%s%s%s\n", (int )input->data.mouse.x,
             (int )input->data.mouse.y, (unsigned int )buttons != 0U ? (char *)" -- buttons:" : (char *)"",
             (int )buttons & 1 ? (char *)"left " : (char *)"", ((int )buttons & 2) != 0 ? (char *)"middle " : (char *)"",
             ((int )buttons & 4) != 0 ? (char *)"right" : (char *)"");
      }
    } else {
    }
  } else
  if (ibmasm_debug != 0) {
    {
    printk("\017remote keypress (code, flag, down):%d (0x%x) [0x%x] [0x%x]\n", (int )input->data.keyboard.key_code,
           (int )input->data.keyboard.key_code, (int )input->data.keyboard.key_flag,
           (int )input->data.keyboard.key_down);
    }
  } else {
  }
  return;
}
}
static void send_mouse_event(struct input_dev *dev , struct remote_input *input )
{
  unsigned char buttons ;
  {
  {
  buttons = input->mouse_buttons;
  input_report_abs(dev, 0U, (int )input->data.mouse.x);
  input_report_abs(dev, 1U, (int )input->data.mouse.y);
  input_report_key(dev, 272U, (int )buttons & 1);
  input_report_key(dev, 274U, (int )buttons & 2);
  input_report_key(dev, 273U, (int )buttons & 4);
  input_sync(dev);
  }
  return;
}
}
static void send_keyboard_event(struct input_dev *dev , struct remote_input *input )
{
  unsigned int key ;
  unsigned short code ;
  {
  code = input->data.keyboard.key_code;
  if (((int )code & 65280) != 0) {
    key = (unsigned int )xlate_high[(int )code & 255];
  } else {
    key = (unsigned int )xlate[(int )code];
  }
  {
  input_report_key(dev, key, (int )input->data.keyboard.key_down);
  input_sync(dev);
  }
  return;
}
}
void ibmasm_handle_mouse_interrupt(struct service_processor *sp )
{
  unsigned long reader ;
  unsigned long writer ;
  struct remote_input input ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  tmp = readl((void const volatile *)(sp->base_address + 704520U));
  reader = (unsigned long )tmp;
  tmp___0 = readl((void const volatile *)(sp->base_address + 704524U));
  writer = (unsigned long )tmp___0;
  }
  goto ldv_29890;
  ldv_29889:
  {
  memcpy_fromio((void *)(& input), (void const volatile *)(sp->base_address + (reader + 88066UL) * 8UL),
                8UL);
  print_input(& input);
  }
  if ((unsigned int )input.type == 1U) {
    {
    send_mouse_event(sp->remote.mouse_dev, & input);
    }
  } else
  if ((unsigned int )input.type == 2U) {
    {
    send_keyboard_event(sp->remote.keybd_dev, & input);
    }
  } else {
    goto ldv_29888;
  }
  {
  tmp___1 = advance_queue_reader(sp, reader);
  reader = (unsigned long )tmp___1;
  tmp___2 = readl((void const volatile *)(sp->base_address + 704524U));
  writer = (unsigned long )tmp___2;
  }
  ldv_29890: ;
  if (reader != writer) {
    goto ldv_29889;
  } else {
  }
  ldv_29888: ;
  return;
}
}
int ibmasm_init_remote_input_dev(struct service_processor *sp )
{
  struct input_dev *mouse_dev ;
  struct input_dev *keybd_dev ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  int error ;
  int i ;
  {
  {
  __mptr = (struct device const *)sp->dev;
  pdev = (struct pci_dev *)(__mptr + 0xffffffffffffff68UL);
  error = -12;
  mouse_dev = input_allocate_device();
  sp->remote.mouse_dev = mouse_dev;
  keybd_dev = input_allocate_device();
  sp->remote.keybd_dev = keybd_dev;
  }
  if ((unsigned long )mouse_dev == (unsigned long )((struct input_dev *)0) || (unsigned long )keybd_dev == (unsigned long )((struct input_dev *)0)) {
    goto err_free_devices;
  } else {
  }
  {
  mouse_dev->id.bustype = 1U;
  mouse_dev->id.vendor = pdev->vendor;
  mouse_dev->id.product = pdev->device;
  mouse_dev->id.version = 1U;
  mouse_dev->dev.parent = sp->dev;
  mouse_dev->evbit[0] = 10UL;
  mouse_dev->keybit[4] = 458752UL;
  set_bit(330L, (unsigned long volatile *)(& mouse_dev->keybit));
  mouse_dev->name = "ibmasm RSA I remote mouse";
  input_set_abs_params(mouse_dev, 0U, 0, 1600, 0, 0);
  input_set_abs_params(mouse_dev, 1U, 0, 1200, 0, 0);
  keybd_dev->id.bustype = 1U;
  keybd_dev->id.vendor = pdev->vendor;
  keybd_dev->id.product = pdev->device;
  keybd_dev->id.version = 2U;
  keybd_dev->dev.parent = sp->dev;
  keybd_dev->evbit[0] = 2UL;
  keybd_dev->name = "ibmasm RSA I remote keyboard";
  i = 0;
  }
  goto ldv_29903;
  ldv_29902: ;
  if ((unsigned int )((unsigned short )xlate_high[i]) != 0U) {
    {
    set_bit((long )xlate_high[i], (unsigned long volatile *)(& keybd_dev->keybit));
    }
  } else {
  }
  if ((unsigned int )((unsigned short )xlate[i]) != 0U) {
    {
    set_bit((long )xlate[i], (unsigned long volatile *)(& keybd_dev->keybit));
    }
  } else {
  }
  i = i + 1;
  ldv_29903: ;
  if (i <= 255) {
    goto ldv_29902;
  } else {
  }
  {
  error = input_register_device(mouse_dev);
  }
  if (error != 0) {
    goto err_free_devices;
  } else {
  }
  {
  error = input_register_device(keybd_dev);
  }
  if (error != 0) {
    goto err_unregister_mouse_dev;
  } else {
  }
  {
  writel(1U, (void volatile *)(sp->base_address + 704512U));
  printk("\016ibmasm remote responding to events on RSA card %d\n", sp->number);
  }
  return (0);
  err_unregister_mouse_dev:
  {
  input_unregister_device(mouse_dev);
  mouse_dev = (struct input_dev *)0;
  }
  err_free_devices:
  {
  input_free_device(mouse_dev);
  input_free_device(keybd_dev);
  }
  return (error);
}
}
void ibmasm_free_remote_input_dev(struct service_processor *sp )
{
  {
  {
  writel(0U, (void volatile *)(sp->base_address + 704512U));
  input_unregister_device(sp->remote.mouse_dev);
  input_unregister_device(sp->remote.keybd_dev);
  }
  return;
}
}
extern struct atomic_notifier_head panic_notifier_list ;
static void ldv___ldv_spin_lock_46___0(spinlock_t *ldv_func_arg1 ) ;
__inline static void ldv_spin_unlock_irqrestore_47(spinlock_t *lock , unsigned long flags ) ;
extern int atomic_notifier_chain_register(struct atomic_notifier_head * , struct notifier_block * ) ;
extern int atomic_notifier_chain_unregister(struct atomic_notifier_head * , struct notifier_block * ) ;
__inline static void command_put___1(struct command *cmd )
{
  unsigned long flags ;
  spinlock_t *lock ;
  {
  {
  lock = cmd->lock;
  ldv___ldv_spin_lock_46___0(lock);
  kref_put(& cmd->kref, & ibmasm_free_command);
  ldv_spin_unlock_irqrestore_47(lock, flags);
  }
  return;
}
}
void ibmasm_receive_heartbeat(struct service_processor *sp , void *message , size_t size ) ;
static int suspend_heartbeats = 0;
static int panic_happened(struct notifier_block *n , unsigned long val , void *v )
{
  {
  suspend_heartbeats = 1;
  return (0);
}
}
static struct notifier_block panic_notifier = {& panic_happened, (struct notifier_block *)0, 1};
void ibmasm_register_panic_notifier(void)
{
  {
  {
  atomic_notifier_chain_register(& panic_notifier_list, & panic_notifier);
  }
  return;
}
}
void ibmasm_unregister_panic_notifier(void)
{
  {
  {
  atomic_notifier_chain_unregister(& panic_notifier_list, & panic_notifier);
  }
  return;
}
}
int ibmasm_heartbeat_init(struct service_processor *sp )
{
  {
  {
  sp->heartbeat = ibmasm_new_command(sp, 1024UL);
  }
  if ((unsigned long )sp->heartbeat == (unsigned long )((struct command *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
void ibmasm_heartbeat_exit(struct service_processor *sp )
{
  char tsbuf[32U] ;
  char *tmp ;
  char *tmp___0 ;
  {
  if (ibmasm_debug != 0) {
    {
    tmp = get_timestamp((char *)(& tsbuf));
    printk("\017%s:%d at %s\n", "ibmasm_heartbeat_exit", 78, tmp);
    }
  } else {
  }
  {
  ibmasm_wait_for_response(sp->heartbeat, 45);
  }
  if (ibmasm_debug != 0) {
    {
    tmp___0 = get_timestamp((char *)(& tsbuf));
    printk("\017%s:%d at %s\n", "ibmasm_heartbeat_exit", 80, tmp___0);
    }
  } else {
  }
  {
  suspend_heartbeats = 1;
  command_put___1(sp->heartbeat);
  }
  return;
}
}
void ibmasm_receive_heartbeat(struct service_processor *sp , void *message , size_t size )
{
  struct command *cmd ;
  struct dot_command_header *header___0 ;
  char tsbuf[32U] ;
  char *tmp ;
  size_t _min1 ;
  size_t _min2 ;
  {
  cmd = sp->heartbeat;
  header___0 = (struct dot_command_header *)cmd->buffer;
  if (ibmasm_debug != 0) {
    {
    tmp = get_timestamp((char *)(& tsbuf));
    printk("\017%s:%d at %s\n", "ibmasm_receive_heartbeat", 91, tmp);
    }
  } else {
  }
  if (suspend_heartbeats != 0) {
    return;
  } else {
  }
  {
  cmd->status = 0;
  _min1 = size;
  _min2 = cmd->buffer_size;
  size = _min1 < _min2 ? _min1 : _min2;
  memcpy_fromio((void *)cmd->buffer, (void const volatile *)message, size);
  header___0->type = 0U;
  ibmasm_exec_command(sp, cmd);
  }
  return;
}
}
static void ldv___ldv_spin_lock_46___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2978;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2978;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2978;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2978;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_2978: ;
  return (pfo_ret__);
}
}
static void ldv___ldv_spin_lock_51___1(spinlock_t *ldv_func_arg1 ) ;
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp___0 ;
  {
  {
  tmp___0 = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  }
  return (tmp___0);
}
}
__inline static void ldv_spin_unlock_irqrestore_47(spinlock_t *lock , unsigned long flags ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  }
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = __builtin_expect(tmp != 0, 0L);
  }
  return ((int )tmp___0);
}
}
__inline static void command_put___2(struct command *cmd )
{
  unsigned long flags ;
  spinlock_t *lock ;
  {
  {
  lock = cmd->lock;
  ldv___ldv_spin_lock_51___1(lock);
  kref_put(& cmd->kref, & ibmasm_free_command);
  ldv_spin_unlock_irqrestore_47(lock, flags);
  }
  return;
}
}
static struct __anonstruct_rhb_dot_cmd_202 rhb_dot_cmd = {{2U, 3U, 0U, 0U, (unsigned char)0}, {4U, 3U, 6U}};
void ibmasm_init_reverse_heartbeat(struct service_processor *sp , struct reverse_heartbeat *rhb )
{
  struct lock_class_key __key ;
  {
  {
  __init_waitqueue_head(& rhb->wait, "&rhb->wait", & __key);
  rhb->stopped = 0U;
  }
  return;
}
}
int ibmasm_start_reverse_heartbeat(struct service_processor *sp , struct reverse_heartbeat *rhb )
{
  struct command *cmd ;
  int times_failed ;
  int result ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  bool __cond___0 ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  {
  {
  times_failed = 0;
  result = 1;
  cmd = ibmasm_new_command(sp, 9UL);
  }
  if ((unsigned long )cmd == (unsigned long )((struct command *)0)) {
    return (-12);
  } else {
  }
  goto ldv_32310;
  ldv_32309:
  {
  memcpy((void *)cmd->buffer, (void const *)(& rhb_dot_cmd), 9UL);
  cmd->status = 0;
  ibmasm_exec_command(sp, cmd);
  ibmasm_wait_for_response(cmd, 45);
  }
  if (cmd->status != 1) {
    times_failed = times_failed + 1;
  } else {
  }
  __ret = 30000L;
  __cond___0 = rhb->stopped != 0U;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    __ret___0 = 30000L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_32305:
    {
    tmp = prepare_to_wait_event(& rhb->wait, & __wait, 1);
    __int = tmp;
    __cond = rhb->stopped != 0U;
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_32304;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_32304;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_32305;
    ldv_32304:
    {
    finish_wait(& rhb->wait, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  {
  tmp___0 = get_current();
  tmp___1 = signal_pending(tmp___0);
  }
  if (tmp___1 != 0 || rhb->stopped != 0U) {
    result = -4;
    goto ldv_32308;
  } else {
  }
  ldv_32310: ;
  if (times_failed <= 2) {
    goto ldv_32309;
  } else {
  }
  ldv_32308:
  {
  command_put___2(cmd);
  rhb->stopped = 0U;
  }
  return (result);
}
}
void ibmasm_stop_reverse_heartbeat(struct reverse_heartbeat *rhb )
{
  {
  {
  rhb->stopped = 1U;
  __wake_up(& rhb->wait, 1U, 1, (void *)0);
  }
  return;
}
}
static void ldv___ldv_spin_lock_51___1(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
extern char *strcat(char * , char const * ) ;
static void ldv___ldv_spin_lock_46___1(spinlock_t *ldv_func_arg1 ) ;
__inline static void ldv_spin_unlock_irqrestore_47(spinlock_t *lock , unsigned long flags ) ;
__inline static void command_put___3(struct command *cmd )
{
  unsigned long flags ;
  spinlock_t *lock ;
  {
  {
  lock = cmd->lock;
  ldv___ldv_spin_lock_46___1(lock);
  kref_put(& cmd->kref, & ibmasm_free_command);
  ldv_spin_unlock_irqrestore_47(lock, flags);
  }
  return;
}
}
void ibmasm_receive_message(struct service_processor *sp , void *message , int message_size ) ;
__inline static size_t get_dot_command_size(void *buffer )
{
  struct dot_command_header *cmd ;
  {
  cmd = (struct dot_command_header *)buffer;
  return (((unsigned long )cmd->command_size + (unsigned long )cmd->data_size) + 6UL);
}
}
void ibmasm_receive_message(struct service_processor *sp , void *message , int message_size )
{
  u32 size ;
  struct dot_command_header *header___0 ;
  size_t tmp ;
  {
  header___0 = (struct dot_command_header *)message;
  if (message_size == 0) {
    return;
  } else {
  }
  {
  tmp = get_dot_command_size(message);
  size = (u32 )tmp;
  }
  if (size == 0U) {
    return;
  } else {
  }
  if (size > (u32 )message_size) {
    size = (u32 )message_size;
  } else {
  }
  {
  if ((int )header___0->type == 5) {
    goto case_5;
  } else {
  }
  if ((int )header___0->type == 4) {
    goto case_4;
  } else {
  }
  if ((int )header___0->type == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_5:
  {
  ibmasm_receive_event(sp, message, size);
  }
  goto ldv_29868;
  case_4:
  {
  ibmasm_receive_command_response(sp, message, (size_t )size);
  }
  goto ldv_29868;
  case_6:
  {
  ibmasm_receive_heartbeat(sp, message, (size_t )size);
  }
  goto ldv_29868;
  switch_default:
  {
  dev_err((struct device const *)sp->dev, "Received unknown message from service processor\n");
  }
  switch_break: ;
  }
  ldv_29868: ;
  return;
}
}
int ibmasm_send_driver_vpd(struct service_processor *sp )
{
  struct command *command ;
  struct dot_command_header *header___0 ;
  u8 *vpd_command ;
  u8 *vpd_data ;
  int result ;
  {
  {
  result = 0;
  command = ibmasm_new_command(sp, 32UL);
  }
  if ((unsigned long )command == (unsigned long )((struct command *)0)) {
    return (-12);
  } else {
  }
  {
  header___0 = (struct dot_command_header *)command->buffer;
  header___0->type = 0U;
  header___0->command_size = 4U;
  header___0->data_size = 16U;
  header___0->status = 0U;
  header___0->reserved = 0U;
  vpd_command = command->buffer + 6U;
  *vpd_command = 4U;
  *(vpd_command + 1UL) = 3U;
  *(vpd_command + 2UL) = 5U;
  *(vpd_command + 3UL) = 10U;
  vpd_data = vpd_command + (unsigned long )header___0->command_size;
  *vpd_data = 0U;
  strcat((char *)vpd_data, "Lin32 6.08      ");
  *(vpd_data + 10UL) = 0U;
  *(vpd_data + 15UL) = 0U;
  ibmasm_exec_command(sp, command);
  ibmasm_wait_for_response(command, 45);
  }
  if (command->status != 1) {
    result = -19;
  } else {
  }
  {
  command_put___3(command);
  }
  return (result);
}
}
int ibmasm_send_os_state(struct service_processor *sp , int os_state )
{
  struct command *cmd ;
  struct os_state_command *os_state_cmd ;
  int result ;
  {
  {
  result = 0;
  cmd = ibmasm_new_command(sp, 10UL);
  }
  if ((unsigned long )cmd == (unsigned long )((struct command *)0)) {
    return (-12);
  } else {
  }
  {
  os_state_cmd = (struct os_state_command *)cmd->buffer;
  os_state_cmd->header.type = 0U;
  os_state_cmd->header.command_size = 3U;
  os_state_cmd->header.data_size = 1U;
  os_state_cmd->header.status = 0U;
  os_state_cmd->command[0] = 4U;
  os_state_cmd->command[1] = 3U;
  os_state_cmd->command[2] = 6U;
  os_state_cmd->data = (unsigned char )os_state;
  ibmasm_exec_command(sp, cmd);
  ibmasm_wait_for_response(cmd, 45);
  }
  if (cmd->status != 1) {
    result = -19;
  } else {
  }
  {
  command_put___3(cmd);
  }
  return (result);
}
}
static void ldv___ldv_spin_lock_46___1(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  {
  {
  memcpy((void *)dst, src, count);
  }
  return;
}
}
__inline static int sp_interrupt_pending(void *base_address )
{
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)(base_address + 5024U));
  }
  return ((int )tmp & 8);
}
}
__inline static u32 get_mfa_outbound(void *base_address )
{
  int retry ;
  u32 mfa ;
  {
  retry = 0;
  goto ldv_29880;
  ldv_29879:
  {
  mfa = readl((void const volatile *)(base_address + 68U));
  }
  if (mfa != 4294967295U) {
    goto ldv_29878;
  } else {
  }
  retry = retry + 1;
  ldv_29880: ;
  if (retry <= 10) {
    goto ldv_29879;
  } else {
  }
  ldv_29878: ;
  return (mfa);
}
}
__inline static void set_mfa_outbound(void *base_address , u32 mfa )
{
  {
  {
  writel(mfa, (void volatile *)(base_address + 68U));
  }
  return;
}
}
__inline static u32 get_mfa_inbound(void *base_address )
{
  u32 mfa ;
  unsigned int tmp ;
  {
  {
  tmp = readl(base_address + 64U);
  mfa = tmp;
  }
  if ((int )mfa & 1) {
    return (0U);
  } else {
  }
  return (mfa);
}
}
__inline static void set_mfa_inbound(void *base_address , u32 mfa )
{
  {
  {
  writel(mfa, (void volatile *)(base_address + 64U));
  }
  return;
}
}
__inline static struct i2o_message *get_i2o_message(void *base_address , u32 mfa )
{
  {
  return ((struct i2o_message *)(base_address + ((unsigned long )mfa & 4294967040UL)));
}
}
__inline static unsigned short outgoing_message_size(unsigned int data_size )
{
  unsigned int size ;
  unsigned short i2o_size ;
  {
  if (data_size > 4084U) {
    data_size = 4084U;
  } else {
  }
  size = data_size + 12U;
  i2o_size = (unsigned short )(size / 4U);
  if ((size & 3U) != 0U) {
    i2o_size = (unsigned short )((int )i2o_size + 1);
  } else {
  }
  return (i2o_size);
}
}
__inline static u32 incoming_data_size(struct i2o_message *i2o_message )
{
  {
  return ((u32 )i2o_message->header.message_size * 4U);
}
}
static struct i2o_header header =
     {1U, 0U, (unsigned short)0, 0U, 64U, 0U, 255U, 0U};
int ibmasm_send_i2o_message(struct service_processor *sp )
{
  u32 mfa ;
  unsigned int command_size ;
  struct i2o_message *message ;
  struct command *command ;
  size_t tmp ;
  {
  {
  command = sp->current_command;
  mfa = get_mfa_inbound(sp->base_address);
  }
  if (mfa == 0U) {
    return (1);
  } else {
  }
  {
  tmp = get_dot_command_size((void *)command->buffer);
  command_size = (unsigned int )tmp;
  header.message_size = outgoing_message_size(command_size);
  message = get_i2o_message(sp->base_address, mfa);
  memcpy_toio((void volatile *)(& message->header), (void const *)(& header),
              12UL);
  memcpy_toio((void volatile *)(& message->data), (void const *)command->buffer,
              (size_t )command_size);
  set_mfa_inbound(sp->base_address, mfa);
  }
  return (0);
}
}
irqreturn_t ibmasm_interrupt_handler(int irq , void *dev_id )
{
  u32 mfa ;
  struct service_processor *sp ;
  void *base_address ;
  char tsbuf[32U] ;
  int tmp ;
  char *tmp___0 ;
  unsigned int tmp___1 ;
  struct i2o_message *msg ;
  struct i2o_message *tmp___2 ;
  u32 tmp___3 ;
  char *tmp___4 ;
  {
  {
  sp = (struct service_processor *)dev_id;
  base_address = sp->base_address;
  tmp = sp_interrupt_pending(base_address);
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  if (ibmasm_debug != 0) {
    {
    tmp___0 = get_timestamp((char *)(& tsbuf));
    printk("\017respond to interrupt at %s\n", tmp___0);
    }
  } else {
  }
  {
  tmp___1 = readl((void const volatile *)(sp->base_address + 704516U));
  }
  if (tmp___1 != 0U) {
    {
    ibmasm_handle_mouse_interrupt(sp);
    writel(0U, (void volatile *)(sp->base_address + 704516U));
    }
  } else {
  }
  {
  mfa = get_mfa_outbound(base_address);
  }
  if (mfa != 4294967295U) {
    {
    tmp___2 = get_i2o_message(base_address, mfa);
    msg = tmp___2;
    tmp___3 = incoming_data_size(msg);
    ibmasm_receive_message(sp, (void *)(& msg->data), (int )tmp___3);
    }
  } else
  if (ibmasm_debug != 0) {
    {
    printk("\017didn\'t get a valid MFA\n");
    }
  } else {
  }
  {
  set_mfa_outbound(base_address, mfa);
  }
  if (ibmasm_debug != 0) {
    {
    tmp___4 = get_timestamp((char *)(& tsbuf));
    printk("\017finished interrupt at   %s\n", tmp___4);
    }
  } else {
  }
  return (1);
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)(master + 1U));
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  __VERIFIER_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void ldv_assert(char const *desc , int expr ) ;
long __builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void __builtin_trap(void)
{
  {
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
void *ldv_calloc_unknown_size(void) ;
void *ldv_zalloc_unknown_size(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
extern void *memset(void * , int , size_t ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    __VERIFIER_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    __VERIFIER_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  __VERIFIER_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  __VERIFIER_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_malloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    __VERIFIER_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    memset(res, 0, 8UL);
    __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    __VERIFIER_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc_unknown_size(void)
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc_unknown_size();
  }
  return (tmp);
}
}
void *ldv_xmalloc_unknown_size(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = external_allocated_data();
  res = tmp;
  __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  __VERIFIER_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_undef_ptr(void) ;
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  {
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  __VERIFIER_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  __VERIFIER_assume(ret <= 0);
  }
  return (ret);
}
}
extern void __VERIFIER_error(void) ;
extern int pthread_mutex_lock(pthread_mutex_t * ) ;
extern int pthread_mutex_trylock(pthread_mutex_t * ) ;
pthread_mutex_t pmutex_i_mutex_of_inode ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_i_mutex_of_inode);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_i_mutex_of_inode);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_i_mutex_of_inode);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_i_mutex_of_inode);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_i_mutex_of_inode);
  }
  return;
}
}
pthread_mutex_t pmutex_lock ;
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_lock);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_lock);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_lock);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_lock);
  }
  return;
}
}
pthread_mutex_t pmutex_mutex_of_device ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_device);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_mutex_of_device);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_mutex_of_device);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_mutex_of_device);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_device);
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  return;
}
}
void ldv_check_final_state(void)
{
  {
  return;
}
}
void ldv_assert(char const *desc , int expr )
{
  {
  if (expr == 0) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern int pthread_mutex_unlock(pthread_mutex_t * ) ;
pthread_mutex_t smutex_alloc_lock_of_task_struct ;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  pthread_mutex_lock(& smutex_alloc_lock_of_task_struct);
  }
  return;
}
}
void ldv_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_alloc_lock_of_task_struct);
  }
  return;
}
}
int ldv_spin_trylock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_alloc_lock_of_task_struct);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_alloc_lock_of_task_struct();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_i_lock_of_inode ;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  pthread_mutex_lock(& smutex_i_lock_of_inode);
  }
  return;
}
}
void ldv_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_i_lock_of_inode);
  }
  return;
}
}
int ldv_spin_trylock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_i_lock_of_inode);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_i_lock_of_inode();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock ;
void ldv_spin_lock_lock(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock);
  }
  return;
}
}
void ldv_spin_unlock_lock(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock);
  }
  return;
}
}
int ldv_spin_trylock_lock(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock_of_NOT_ARG_SIGN ;
void ldv_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_NOT_ARG_SIGN);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_NOT_ARG_SIGN);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_NOT_ARG_SIGN);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_NOT_ARG_SIGN();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock_of_service_processor ;
void ldv_spin_lock_lock_of_service_processor(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_service_processor);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_service_processor(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_service_processor);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_service_processor(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_service_processor);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_service_processor(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_service_processor(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_lock_of_service_processor(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_service_processor();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_service_processor(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_service_processor(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_service_processor();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_node_size_lock_of_pglist_data ;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  pthread_mutex_lock(& smutex_node_size_lock_of_pglist_data);
  }
  return;
}
}
void ldv_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_node_size_lock_of_pglist_data);
  }
  return;
}
}
int ldv_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_node_size_lock_of_pglist_data);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_node_size_lock_of_pglist_data();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_ptl ;
void ldv_spin_lock_ptl(void)
{
  {
  {
  pthread_mutex_lock(& smutex_ptl);
  }
  return;
}
}
void ldv_spin_unlock_ptl(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_ptl);
  }
  return;
}
}
int ldv_spin_trylock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_ptl);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_ptl(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_ptl();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_siglock_of_sighand_struct ;
void ldv_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  pthread_mutex_lock(& smutex_siglock_of_sighand_struct);
  }
  return;
}
}
void ldv_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_siglock_of_sighand_struct);
  }
  return;
}
}
int ldv_spin_trylock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_siglock_of_sighand_struct);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_siglock_of_sighand_struct();
    }
    return (1);
  } else {
  }
  return (0);
}
}
