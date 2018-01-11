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
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u64 __be64;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
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
struct thread_struct;
struct mm_struct;
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
struct file_operations;
struct completion;
struct pid;
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
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct seq_operations;
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
struct kmem_cache;
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
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
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
struct hrtimer;
enum hrtimer_restart;
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
struct dma_pool;
struct msix_entry {
   u32 vector ;
   u16 entry ;
};
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
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
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
struct task_rss_stat {
   int events ;
   int count[3U] ;
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
struct user_struct;
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
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
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
struct io_context;
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
struct nsproxy;
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
struct __anonstruct_sigset_t_182 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_182 sigset_t;
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
struct __anonstruct__kill_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_185 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_186 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_187 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_188 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_189 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_190 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_183 {
   int _pad[28U] ;
   struct __anonstruct__kill_184 _kill ;
   struct __anonstruct__timer_185 _timer ;
   struct __anonstruct__rt_186 _rt ;
   struct __anonstruct__sigchld_187 _sigchld ;
   struct __anonstruct__sigfault_188 _sigfault ;
   struct __anonstruct__sigpoll_189 _sigpoll ;
   struct __anonstruct__sigsys_190 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_183 _sifields ;
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
union __anonunion____missing_field_name_193 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_194 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_196 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_195 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_196 __annonCompField65 ;
};
union __anonunion_type_data_197 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_199 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_198 {
   union __anonunion_payload_199 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_193 __annonCompField63 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_194 __annonCompField64 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_195 __annonCompField66 ;
   union __anonunion_type_data_197 type_data ;
   union __anonunion____missing_field_name_198 __annonCompField67 ;
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
struct __anonstruct_global_213 {
   __be64 subnet_prefix ;
   __be64 interface_id ;
};
union ib_gid {
   u8 raw[16U] ;
   struct __anonstruct_global_213 global ;
};
enum rdma_link_layer {
    IB_LINK_LAYER_UNSPECIFIED = 0,
    IB_LINK_LAYER_INFINIBAND = 1,
    IB_LINK_LAYER_ETHERNET = 2
} ;
enum ib_atomic_cap {
    IB_ATOMIC_NONE = 0,
    IB_ATOMIC_HCA = 1,
    IB_ATOMIC_GLOB = 2
} ;
struct ib_device_attr {
   u64 fw_ver ;
   __be64 sys_image_guid ;
   u64 max_mr_size ;
   u64 page_size_cap ;
   u32 vendor_id ;
   u32 vendor_part_id ;
   u32 hw_ver ;
   int max_qp ;
   int max_qp_wr ;
   int device_cap_flags ;
   int max_sge ;
   int max_sge_rd ;
   int max_cq ;
   int max_cqe ;
   int max_mr ;
   int max_pd ;
   int max_qp_rd_atom ;
   int max_ee_rd_atom ;
   int max_res_rd_atom ;
   int max_qp_init_rd_atom ;
   int max_ee_init_rd_atom ;
   enum ib_atomic_cap atomic_cap ;
   enum ib_atomic_cap masked_atomic_cap ;
   int max_ee ;
   int max_rdd ;
   int max_mw ;
   int max_raw_ipv6_qp ;
   int max_raw_ethy_qp ;
   int max_mcast_grp ;
   int max_mcast_qp_attach ;
   int max_total_mcast_qp_attach ;
   int max_ah ;
   int max_fmr ;
   int max_map_per_fmr ;
   int max_srq ;
   int max_srq_wr ;
   int max_srq_sge ;
   unsigned int max_fast_reg_page_list_len ;
   u16 max_pkeys ;
   u8 local_ca_ack_delay ;
};
enum ib_mtu {
    IB_MTU_256 = 1,
    IB_MTU_512 = 2,
    IB_MTU_1024 = 3,
    IB_MTU_2048 = 4,
    IB_MTU_4096 = 5
} ;
enum ib_port_state {
    IB_PORT_NOP = 0,
    IB_PORT_DOWN = 1,
    IB_PORT_INIT = 2,
    IB_PORT_ARMED = 3,
    IB_PORT_ACTIVE = 4,
    IB_PORT_ACTIVE_DEFER = 5
} ;
struct ib_protocol_stats {
};
struct iw_protocol_stats {
   u64 ipInReceives ;
   u64 ipInHdrErrors ;
   u64 ipInTooBigErrors ;
   u64 ipInNoRoutes ;
   u64 ipInAddrErrors ;
   u64 ipInUnknownProtos ;
   u64 ipInTruncatedPkts ;
   u64 ipInDiscards ;
   u64 ipInDelivers ;
   u64 ipOutForwDatagrams ;
   u64 ipOutRequests ;
   u64 ipOutDiscards ;
   u64 ipOutNoRoutes ;
   u64 ipReasmTimeout ;
   u64 ipReasmReqds ;
   u64 ipReasmOKs ;
   u64 ipReasmFails ;
   u64 ipFragOKs ;
   u64 ipFragFails ;
   u64 ipFragCreates ;
   u64 ipInMcastPkts ;
   u64 ipOutMcastPkts ;
   u64 ipInBcastPkts ;
   u64 ipOutBcastPkts ;
   u64 tcpRtoAlgorithm ;
   u64 tcpRtoMin ;
   u64 tcpRtoMax ;
   u64 tcpMaxConn ;
   u64 tcpActiveOpens ;
   u64 tcpPassiveOpens ;
   u64 tcpAttemptFails ;
   u64 tcpEstabResets ;
   u64 tcpCurrEstab ;
   u64 tcpInSegs ;
   u64 tcpOutSegs ;
   u64 tcpRetransSegs ;
   u64 tcpInErrs ;
   u64 tcpOutRsts ;
};
union rdma_protocol_stats {
   struct ib_protocol_stats ib ;
   struct iw_protocol_stats iw ;
};
struct ib_port_attr {
   enum ib_port_state state ;
   enum ib_mtu max_mtu ;
   enum ib_mtu active_mtu ;
   int gid_tbl_len ;
   u32 port_cap_flags ;
   u32 max_msg_sz ;
   u32 bad_pkey_cntr ;
   u32 qkey_viol_cntr ;
   u16 pkey_tbl_len ;
   u16 lid ;
   u16 sm_lid ;
   u8 lmc ;
   u8 max_vl_num ;
   u8 sm_sl ;
   u8 subnet_timeout ;
   u8 init_type_reply ;
   u8 active_width ;
   u8 active_speed ;
   u8 phys_state ;
};
struct ib_device_modify {
   u64 sys_image_guid ;
   char node_desc[64U] ;
};
struct ib_port_modify {
   u32 set_port_cap_mask ;
   u32 clr_port_cap_mask ;
   u8 init_type ;
};
enum ib_event_type {
    IB_EVENT_CQ_ERR = 0,
    IB_EVENT_QP_FATAL = 1,
    IB_EVENT_QP_REQ_ERR = 2,
    IB_EVENT_QP_ACCESS_ERR = 3,
    IB_EVENT_COMM_EST = 4,
    IB_EVENT_SQ_DRAINED = 5,
    IB_EVENT_PATH_MIG = 6,
    IB_EVENT_PATH_MIG_ERR = 7,
    IB_EVENT_DEVICE_FATAL = 8,
    IB_EVENT_PORT_ACTIVE = 9,
    IB_EVENT_PORT_ERR = 10,
    IB_EVENT_LID_CHANGE = 11,
    IB_EVENT_PKEY_CHANGE = 12,
    IB_EVENT_SM_CHANGE = 13,
    IB_EVENT_SRQ_ERR = 14,
    IB_EVENT_SRQ_LIMIT_REACHED = 15,
    IB_EVENT_QP_LAST_WQE_REACHED = 16,
    IB_EVENT_CLIENT_REREGISTER = 17,
    IB_EVENT_GID_CHANGE = 18
} ;
struct ib_device;
struct ib_cq;
struct ib_qp;
struct ib_srq;
union __anonunion_element_214 {
   struct ib_cq *cq ;
   struct ib_qp *qp ;
   struct ib_srq *srq ;
   u8 port_num ;
};
struct ib_event {
   struct ib_device *device ;
   union __anonunion_element_214 element ;
   enum ib_event_type event ;
};
struct ib_event_handler {
   struct ib_device *device ;
   void (*handler)(struct ib_event_handler * , struct ib_event * ) ;
   struct list_head list ;
};
struct ib_global_route {
   union ib_gid dgid ;
   u32 flow_label ;
   u8 sgid_index ;
   u8 hop_limit ;
   u8 traffic_class ;
};
struct ib_grh {
   __be32 version_tclass_flow ;
   __be16 paylen ;
   u8 next_hdr ;
   u8 hop_limit ;
   union ib_gid sgid ;
   union ib_gid dgid ;
};
struct ib_ah_attr {
   struct ib_global_route grh ;
   u16 dlid ;
   u8 sl ;
   u8 src_path_bits ;
   u8 static_rate ;
   u8 ah_flags ;
   u8 port_num ;
   u8 dmac[6U] ;
   u16 vlan_id ;
};
enum ib_wc_status {
    IB_WC_SUCCESS = 0,
    IB_WC_LOC_LEN_ERR = 1,
    IB_WC_LOC_QP_OP_ERR = 2,
    IB_WC_LOC_EEC_OP_ERR = 3,
    IB_WC_LOC_PROT_ERR = 4,
    IB_WC_WR_FLUSH_ERR = 5,
    IB_WC_MW_BIND_ERR = 6,
    IB_WC_BAD_RESP_ERR = 7,
    IB_WC_LOC_ACCESS_ERR = 8,
    IB_WC_REM_INV_REQ_ERR = 9,
    IB_WC_REM_ACCESS_ERR = 10,
    IB_WC_REM_OP_ERR = 11,
    IB_WC_RETRY_EXC_ERR = 12,
    IB_WC_RNR_RETRY_EXC_ERR = 13,
    IB_WC_LOC_RDD_VIOL_ERR = 14,
    IB_WC_REM_INV_RD_REQ_ERR = 15,
    IB_WC_REM_ABORT_ERR = 16,
    IB_WC_INV_EECN_ERR = 17,
    IB_WC_INV_EEC_STATE_ERR = 18,
    IB_WC_FATAL_ERR = 19,
    IB_WC_RESP_TIMEOUT_ERR = 20,
    IB_WC_GENERAL_ERR = 21
} ;
enum ib_wc_opcode {
    IB_WC_SEND = 0,
    IB_WC_RDMA_WRITE = 1,
    IB_WC_RDMA_READ = 2,
    IB_WC_COMP_SWAP = 3,
    IB_WC_FETCH_ADD = 4,
    IB_WC_BIND_MW = 5,
    IB_WC_LSO = 6,
    IB_WC_LOCAL_INV = 7,
    IB_WC_FAST_REG_MR = 8,
    IB_WC_MASKED_COMP_SWAP = 9,
    IB_WC_MASKED_FETCH_ADD = 10,
    IB_WC_RECV = 128,
    IB_WC_RECV_RDMA_WITH_IMM = 129
} ;
union __anonunion_ex_215 {
   __be32 imm_data ;
   u32 invalidate_rkey ;
};
struct ib_wc {
   u64 wr_id ;
   enum ib_wc_status status ;
   enum ib_wc_opcode opcode ;
   u32 vendor_err ;
   u32 byte_len ;
   struct ib_qp *qp ;
   union __anonunion_ex_215 ex ;
   u32 src_qp ;
   int wc_flags ;
   u16 pkey_index ;
   u16 slid ;
   u8 sl ;
   u8 dlid_path_bits ;
   u8 port_num ;
   u8 smac[6U] ;
   u16 vlan_id ;
};
enum ib_cq_notify_flags {
    IB_CQ_SOLICITED = 1,
    IB_CQ_NEXT_COMP = 2,
    IB_CQ_SOLICITED_MASK = 3,
    IB_CQ_REPORT_MISSED_EVENTS = 4
} ;
enum ib_srq_type {
    IB_SRQT_BASIC = 0,
    IB_SRQT_XRC = 1
} ;
enum ib_srq_attr_mask {
    IB_SRQ_MAX_WR = 1,
    IB_SRQ_LIMIT = 2
} ;
struct ib_srq_attr {
   u32 max_wr ;
   u32 max_sge ;
   u32 srq_limit ;
};
struct ib_xrcd;
struct __anonstruct_xrc_217 {
   struct ib_xrcd *xrcd ;
   struct ib_cq *cq ;
};
union __anonunion_ext_216 {
   struct __anonstruct_xrc_217 xrc ;
};
struct ib_srq_init_attr {
   void (*event_handler)(struct ib_event * , void * ) ;
   void *srq_context ;
   struct ib_srq_attr attr ;
   enum ib_srq_type srq_type ;
   union __anonunion_ext_216 ext ;
};
struct ib_qp_cap {
   u32 max_send_wr ;
   u32 max_recv_wr ;
   u32 max_send_sge ;
   u32 max_recv_sge ;
   u32 max_inline_data ;
};
enum ib_sig_type {
    IB_SIGNAL_ALL_WR = 0,
    IB_SIGNAL_REQ_WR = 1
} ;
enum ib_qp_type {
    IB_QPT_SMI = 0,
    IB_QPT_GSI = 1,
    IB_QPT_RC = 2,
    IB_QPT_UC = 3,
    IB_QPT_UD = 4,
    IB_QPT_RAW_IPV6 = 5,
    IB_QPT_RAW_ETHERTYPE = 6,
    IB_QPT_RAW_PACKET = 8,
    IB_QPT_XRC_INI = 9,
    IB_QPT_XRC_TGT = 10,
    IB_QPT_MAX = 11,
    IB_QPT_RESERVED1 = 4096,
    IB_QPT_RESERVED2 = 4097,
    IB_QPT_RESERVED3 = 4098,
    IB_QPT_RESERVED4 = 4099,
    IB_QPT_RESERVED5 = 4100,
    IB_QPT_RESERVED6 = 4101,
    IB_QPT_RESERVED7 = 4102,
    IB_QPT_RESERVED8 = 4103,
    IB_QPT_RESERVED9 = 4104,
    IB_QPT_RESERVED10 = 4105
} ;
enum ib_qp_create_flags {
    IB_QP_CREATE_IPOIB_UD_LSO = 1,
    IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK = 2,
    IB_QP_CREATE_NETIF_QP = 32,
    IB_QP_CREATE_RESERVED_START = 67108864,
    IB_QP_CREATE_RESERVED_END = (-0x7FFFFFFF-1)
} ;
struct ib_qp_init_attr {
   void (*event_handler)(struct ib_event * , void * ) ;
   void *qp_context ;
   struct ib_cq *send_cq ;
   struct ib_cq *recv_cq ;
   struct ib_srq *srq ;
   struct ib_xrcd *xrcd ;
   struct ib_qp_cap cap ;
   enum ib_sig_type sq_sig_type ;
   enum ib_qp_type qp_type ;
   enum ib_qp_create_flags create_flags ;
   u8 port_num ;
};
enum ib_qp_state {
    IB_QPS_RESET = 0,
    IB_QPS_INIT = 1,
    IB_QPS_RTR = 2,
    IB_QPS_RTS = 3,
    IB_QPS_SQD = 4,
    IB_QPS_SQE = 5,
    IB_QPS_ERR = 6
} ;
enum ib_mig_state {
    IB_MIG_MIGRATED = 0,
    IB_MIG_REARM = 1,
    IB_MIG_ARMED = 2
} ;
enum ib_mw_type {
    IB_MW_TYPE_1 = 1,
    IB_MW_TYPE_2 = 2
} ;
struct ib_qp_attr {
   enum ib_qp_state qp_state ;
   enum ib_qp_state cur_qp_state ;
   enum ib_mtu path_mtu ;
   enum ib_mig_state path_mig_state ;
   u32 qkey ;
   u32 rq_psn ;
   u32 sq_psn ;
   u32 dest_qp_num ;
   int qp_access_flags ;
   struct ib_qp_cap cap ;
   struct ib_ah_attr ah_attr ;
   struct ib_ah_attr alt_ah_attr ;
   u16 pkey_index ;
   u16 alt_pkey_index ;
   u8 en_sqd_async_notify ;
   u8 sq_draining ;
   u8 max_rd_atomic ;
   u8 max_dest_rd_atomic ;
   u8 min_rnr_timer ;
   u8 port_num ;
   u8 timeout ;
   u8 retry_cnt ;
   u8 rnr_retry ;
   u8 alt_port_num ;
   u8 alt_timeout ;
   u8 smac[6U] ;
   u8 alt_smac[6U] ;
   u16 vlan_id ;
   u16 alt_vlan_id ;
};
enum ib_wr_opcode {
    IB_WR_RDMA_WRITE = 0,
    IB_WR_RDMA_WRITE_WITH_IMM = 1,
    IB_WR_SEND = 2,
    IB_WR_SEND_WITH_IMM = 3,
    IB_WR_RDMA_READ = 4,
    IB_WR_ATOMIC_CMP_AND_SWP = 5,
    IB_WR_ATOMIC_FETCH_AND_ADD = 6,
    IB_WR_LSO = 7,
    IB_WR_SEND_WITH_INV = 8,
    IB_WR_RDMA_READ_WITH_INV = 9,
    IB_WR_LOCAL_INV = 10,
    IB_WR_FAST_REG_MR = 11,
    IB_WR_MASKED_ATOMIC_CMP_AND_SWP = 12,
    IB_WR_MASKED_ATOMIC_FETCH_AND_ADD = 13,
    IB_WR_BIND_MW = 14,
    IB_WR_RESERVED1 = 240,
    IB_WR_RESERVED2 = 241,
    IB_WR_RESERVED3 = 242,
    IB_WR_RESERVED4 = 243,
    IB_WR_RESERVED5 = 244,
    IB_WR_RESERVED6 = 245,
    IB_WR_RESERVED7 = 246,
    IB_WR_RESERVED8 = 247,
    IB_WR_RESERVED9 = 248,
    IB_WR_RESERVED10 = 249
} ;
struct ib_sge {
   u64 addr ;
   u32 length ;
   u32 lkey ;
};
struct ib_fast_reg_page_list {
   struct ib_device *device ;
   u64 *page_list ;
   unsigned int max_page_list_len ;
};
struct ib_mr;
struct ib_mw_bind_info {
   struct ib_mr *mr ;
   u64 addr ;
   u64 length ;
   int mw_access_flags ;
};
union __anonunion_ex_218 {
   __be32 imm_data ;
   u32 invalidate_rkey ;
};
struct __anonstruct_rdma_220 {
   u64 remote_addr ;
   u32 rkey ;
};
struct __anonstruct_atomic_221 {
   u64 remote_addr ;
   u64 compare_add ;
   u64 swap ;
   u64 compare_add_mask ;
   u64 swap_mask ;
   u32 rkey ;
};
struct ib_ah;
struct __anonstruct_ud_222 {
   struct ib_ah *ah ;
   void *header ;
   int hlen ;
   int mss ;
   u32 remote_qpn ;
   u32 remote_qkey ;
   u16 pkey_index ;
   u8 port_num ;
};
struct __anonstruct_fast_reg_223 {
   u64 iova_start ;
   struct ib_fast_reg_page_list *page_list ;
   unsigned int page_shift ;
   unsigned int page_list_len ;
   u32 length ;
   int access_flags ;
   u32 rkey ;
};
struct ib_mw;
struct __anonstruct_bind_mw_224 {
   struct ib_mw *mw ;
   u32 rkey ;
   struct ib_mw_bind_info bind_info ;
};
union __anonunion_wr_219 {
   struct __anonstruct_rdma_220 rdma ;
   struct __anonstruct_atomic_221 atomic ;
   struct __anonstruct_ud_222 ud ;
   struct __anonstruct_fast_reg_223 fast_reg ;
   struct __anonstruct_bind_mw_224 bind_mw ;
};
struct ib_send_wr {
   struct ib_send_wr *next ;
   u64 wr_id ;
   struct ib_sge *sg_list ;
   int num_sge ;
   enum ib_wr_opcode opcode ;
   int send_flags ;
   union __anonunion_ex_218 ex ;
   union __anonunion_wr_219 wr ;
   u32 xrc_remote_srq_num ;
};
struct ib_recv_wr {
   struct ib_recv_wr *next ;
   u64 wr_id ;
   struct ib_sge *sg_list ;
   int num_sge ;
};
struct ib_phys_buf {
   u64 addr ;
   u64 size ;
};
struct ib_pd;
struct ib_mr_attr {
   struct ib_pd *pd ;
   u64 device_virt_addr ;
   u64 size ;
   int mr_access_flags ;
   u32 lkey ;
   u32 rkey ;
};
struct ib_mw_bind {
   u64 wr_id ;
   int send_flags ;
   struct ib_mw_bind_info bind_info ;
};
struct ib_fmr_attr {
   int max_pages ;
   int max_maps ;
   u8 page_shift ;
};
struct ib_ucontext {
   struct ib_device *device ;
   struct list_head pd_list ;
   struct list_head mr_list ;
   struct list_head mw_list ;
   struct list_head cq_list ;
   struct list_head qp_list ;
   struct list_head srq_list ;
   struct list_head ah_list ;
   struct list_head xrcd_list ;
   struct list_head rule_list ;
   int closing ;
};
struct ib_uobject {
   u64 user_handle ;
   struct ib_ucontext *context ;
   void *object ;
   struct list_head list ;
   int id ;
   struct kref ref ;
   struct rw_semaphore mutex ;
   int live ;
};
struct ib_udata {
   void const *inbuf ;
   void *outbuf ;
   size_t inlen ;
   size_t outlen ;
};
struct ib_pd {
   struct ib_device *device ;
   struct ib_uobject *uobject ;
   atomic_t usecnt ;
};
struct ib_xrcd {
   struct ib_device *device ;
   atomic_t usecnt ;
   struct inode *inode ;
   struct mutex tgt_qp_mutex ;
   struct list_head tgt_qp_list ;
};
struct ib_ah {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_uobject *uobject ;
};
struct ib_cq {
   struct ib_device *device ;
   struct ib_uobject *uobject ;
   void (*comp_handler)(struct ib_cq * , void * ) ;
   void (*event_handler)(struct ib_event * , void * ) ;
   void *cq_context ;
   int cqe ;
   atomic_t usecnt ;
};
struct __anonstruct_xrc_226 {
   struct ib_xrcd *xrcd ;
   struct ib_cq *cq ;
   u32 srq_num ;
};
union __anonunion_ext_225 {
   struct __anonstruct_xrc_226 xrc ;
};
struct ib_srq {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_uobject *uobject ;
   void (*event_handler)(struct ib_event * , void * ) ;
   void *srq_context ;
   enum ib_srq_type srq_type ;
   atomic_t usecnt ;
   union __anonunion_ext_225 ext ;
};
struct ib_qp {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_cq *send_cq ;
   struct ib_cq *recv_cq ;
   struct ib_srq *srq ;
   struct ib_xrcd *xrcd ;
   struct list_head xrcd_list ;
   atomic_t usecnt ;
   struct list_head open_list ;
   struct ib_qp *real_qp ;
   struct ib_uobject *uobject ;
   void (*event_handler)(struct ib_event * , void * ) ;
   void *qp_context ;
   u32 qp_num ;
   enum ib_qp_type qp_type ;
};
struct ib_mr {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_uobject *uobject ;
   u32 lkey ;
   u32 rkey ;
   atomic_t usecnt ;
};
struct ib_mw {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_uobject *uobject ;
   u32 rkey ;
   enum ib_mw_type type ;
};
struct ib_fmr {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct list_head list ;
   u32 lkey ;
   u32 rkey ;
};
enum ib_flow_attr_type {
    IB_FLOW_ATTR_NORMAL = 0,
    IB_FLOW_ATTR_ALL_DEFAULT = 1,
    IB_FLOW_ATTR_MC_DEFAULT = 2,
    IB_FLOW_ATTR_SNIFFER = 3
} ;
struct ib_flow_attr {
   enum ib_flow_attr_type type ;
   u16 size ;
   u16 priority ;
   u32 flags ;
   u8 num_of_specs ;
   u8 port ;
};
struct ib_flow {
   struct ib_qp *qp ;
   struct ib_uobject *uobject ;
};
struct ib_mad;
struct ib_pkey_cache;
struct ib_gid_cache;
struct ib_cache {
   rwlock_t lock ;
   struct ib_event_handler event_handler ;
   struct ib_pkey_cache **pkey_cache ;
   struct ib_gid_cache **gid_cache ;
   u8 *lmc_cache ;
};
struct ib_dma_mapping_ops {
   int (*mapping_error)(struct ib_device * , u64 ) ;
   u64 (*map_single)(struct ib_device * , void * , size_t , enum dma_data_direction ) ;
   void (*unmap_single)(struct ib_device * , u64 , size_t , enum dma_data_direction ) ;
   u64 (*map_page)(struct ib_device * , struct page * , unsigned long , size_t ,
                   enum dma_data_direction ) ;
   void (*unmap_page)(struct ib_device * , u64 , size_t , enum dma_data_direction ) ;
   int (*map_sg)(struct ib_device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*unmap_sg)(struct ib_device * , struct scatterlist * , int , enum dma_data_direction ) ;
   u64 (*dma_address)(struct ib_device * , struct scatterlist * ) ;
   unsigned int (*dma_len)(struct ib_device * , struct scatterlist * ) ;
   void (*sync_single_for_cpu)(struct ib_device * , u64 , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct ib_device * , u64 , size_t , enum dma_data_direction ) ;
   void *(*alloc_coherent)(struct ib_device * , size_t , u64 * , gfp_t ) ;
   void (*free_coherent)(struct ib_device * , size_t , void * , u64 ) ;
};
struct iw_cm_verbs;
enum ldv_25341 {
    IB_DEV_UNINITIALIZED = 0,
    IB_DEV_REGISTERED = 1,
    IB_DEV_UNREGISTERED = 2
} ;
struct ib_device {
   struct device *dma_device ;
   char name[64U] ;
   struct list_head event_handler_list ;
   spinlock_t event_handler_lock ;
   spinlock_t client_data_lock ;
   struct list_head core_list ;
   struct list_head client_data_list ;
   struct ib_cache cache ;
   int *pkey_tbl_len ;
   int *gid_tbl_len ;
   int num_comp_vectors ;
   struct iw_cm_verbs *iwcm ;
   int (*get_protocol_stats)(struct ib_device * , union rdma_protocol_stats * ) ;
   int (*query_device)(struct ib_device * , struct ib_device_attr * ) ;
   int (*query_port)(struct ib_device * , u8 , struct ib_port_attr * ) ;
   enum rdma_link_layer (*get_link_layer)(struct ib_device * , u8 ) ;
   int (*query_gid)(struct ib_device * , u8 , int , union ib_gid * ) ;
   int (*query_pkey)(struct ib_device * , u8 , u16 , u16 * ) ;
   int (*modify_device)(struct ib_device * , int , struct ib_device_modify * ) ;
   int (*modify_port)(struct ib_device * , u8 , int , struct ib_port_modify * ) ;
   struct ib_ucontext *(*alloc_ucontext)(struct ib_device * , struct ib_udata * ) ;
   int (*dealloc_ucontext)(struct ib_ucontext * ) ;
   int (*mmap)(struct ib_ucontext * , struct vm_area_struct * ) ;
   struct ib_pd *(*alloc_pd)(struct ib_device * , struct ib_ucontext * , struct ib_udata * ) ;
   int (*dealloc_pd)(struct ib_pd * ) ;
   struct ib_ah *(*create_ah)(struct ib_pd * , struct ib_ah_attr * ) ;
   int (*modify_ah)(struct ib_ah * , struct ib_ah_attr * ) ;
   int (*query_ah)(struct ib_ah * , struct ib_ah_attr * ) ;
   int (*destroy_ah)(struct ib_ah * ) ;
   struct ib_srq *(*create_srq)(struct ib_pd * , struct ib_srq_init_attr * , struct ib_udata * ) ;
   int (*modify_srq)(struct ib_srq * , struct ib_srq_attr * , enum ib_srq_attr_mask ,
                     struct ib_udata * ) ;
   int (*query_srq)(struct ib_srq * , struct ib_srq_attr * ) ;
   int (*destroy_srq)(struct ib_srq * ) ;
   int (*post_srq_recv)(struct ib_srq * , struct ib_recv_wr * , struct ib_recv_wr ** ) ;
   struct ib_qp *(*create_qp)(struct ib_pd * , struct ib_qp_init_attr * , struct ib_udata * ) ;
   int (*modify_qp)(struct ib_qp * , struct ib_qp_attr * , int , struct ib_udata * ) ;
   int (*query_qp)(struct ib_qp * , struct ib_qp_attr * , int , struct ib_qp_init_attr * ) ;
   int (*destroy_qp)(struct ib_qp * ) ;
   int (*post_send)(struct ib_qp * , struct ib_send_wr * , struct ib_send_wr ** ) ;
   int (*post_recv)(struct ib_qp * , struct ib_recv_wr * , struct ib_recv_wr ** ) ;
   struct ib_cq *(*create_cq)(struct ib_device * , int , int , struct ib_ucontext * ,
                              struct ib_udata * ) ;
   int (*modify_cq)(struct ib_cq * , u16 , u16 ) ;
   int (*destroy_cq)(struct ib_cq * ) ;
   int (*resize_cq)(struct ib_cq * , int , struct ib_udata * ) ;
   int (*poll_cq)(struct ib_cq * , int , struct ib_wc * ) ;
   int (*peek_cq)(struct ib_cq * , int ) ;
   int (*req_notify_cq)(struct ib_cq * , enum ib_cq_notify_flags ) ;
   int (*req_ncomp_notif)(struct ib_cq * , int ) ;
   struct ib_mr *(*get_dma_mr)(struct ib_pd * , int ) ;
   struct ib_mr *(*reg_phys_mr)(struct ib_pd * , struct ib_phys_buf * , int , int ,
                                u64 * ) ;
   struct ib_mr *(*reg_user_mr)(struct ib_pd * , u64 , u64 , u64 , int , struct ib_udata * ) ;
   int (*query_mr)(struct ib_mr * , struct ib_mr_attr * ) ;
   int (*dereg_mr)(struct ib_mr * ) ;
   struct ib_mr *(*alloc_fast_reg_mr)(struct ib_pd * , int ) ;
   struct ib_fast_reg_page_list *(*alloc_fast_reg_page_list)(struct ib_device * ,
                                                             int ) ;
   void (*free_fast_reg_page_list)(struct ib_fast_reg_page_list * ) ;
   int (*rereg_phys_mr)(struct ib_mr * , int , struct ib_pd * , struct ib_phys_buf * ,
                        int , int , u64 * ) ;
   struct ib_mw *(*alloc_mw)(struct ib_pd * , enum ib_mw_type ) ;
   int (*bind_mw)(struct ib_qp * , struct ib_mw * , struct ib_mw_bind * ) ;
   int (*dealloc_mw)(struct ib_mw * ) ;
   struct ib_fmr *(*alloc_fmr)(struct ib_pd * , int , struct ib_fmr_attr * ) ;
   int (*map_phys_fmr)(struct ib_fmr * , u64 * , int , u64 ) ;
   int (*unmap_fmr)(struct list_head * ) ;
   int (*dealloc_fmr)(struct ib_fmr * ) ;
   int (*attach_mcast)(struct ib_qp * , union ib_gid * , u16 ) ;
   int (*detach_mcast)(struct ib_qp * , union ib_gid * , u16 ) ;
   int (*process_mad)(struct ib_device * , int , u8 , struct ib_wc * , struct ib_grh * ,
                      struct ib_mad * , struct ib_mad * ) ;
   struct ib_xrcd *(*alloc_xrcd)(struct ib_device * , struct ib_ucontext * , struct ib_udata * ) ;
   int (*dealloc_xrcd)(struct ib_xrcd * ) ;
   struct ib_flow *(*create_flow)(struct ib_qp * , struct ib_flow_attr * , int ) ;
   int (*destroy_flow)(struct ib_flow * ) ;
   struct ib_dma_mapping_ops *dma_ops ;
   struct module *owner ;
   struct device dev ;
   struct kobject *ports_parent ;
   struct list_head port_list ;
   enum ldv_25341 reg_state ;
   int uverbs_abi_ver ;
   u64 uverbs_cmd_mask ;
   u64 uverbs_ex_cmd_mask ;
   char node_desc[64U] ;
   __be64 node_guid ;
   u32 local_dma_lkey ;
   u8 node_type ;
   u8 phys_port_cnt ;
};
struct ib_mad_hdr {
   u8 base_version ;
   u8 mgmt_class ;
   u8 class_version ;
   u8 method ;
   __be16 status ;
   __be16 class_specific ;
   __be64 tid ;
   __be16 attr_id ;
   __be16 resv ;
   __be32 attr_mod ;
};
struct ib_mad {
   struct ib_mad_hdr mad_hdr ;
   u8 data[232U] ;
};
struct ib_smp {
   u8 base_version ;
   u8 mgmt_class ;
   u8 class_version ;
   u8 method ;
   __be16 status ;
   u8 hop_ptr ;
   u8 hop_cnt ;
   __be64 tid ;
   __be16 attr_id ;
   __be16 resv ;
   __be32 attr_mod ;
   __be64 mkey ;
   __be16 dr_slid ;
   __be16 dr_dlid ;
   u8 reserved[28U] ;
   u8 data[64U] ;
   u8 initial_path[64U] ;
   u8 return_path[64U] ;
};
struct mlx5_ib_alloc_ucontext_req_v2 {
   __u32 total_num_uuars ;
   __u32 num_low_latency_uuars ;
   __u32 flags ;
   __u32 reserved ;
};
struct mlx5_ib_alloc_ucontext_resp {
   __u32 qp_tab_size ;
   __u32 bf_reg_size ;
   __u32 tot_uuars ;
   __u32 cache_line_size ;
   __u16 max_sq_desc_sz ;
   __u16 max_rq_desc_sz ;
   __u32 max_send_wqebb ;
   __u32 max_recv_wr ;
   __u32 max_srq_recv_wr ;
   __u16 num_ports ;
   __u16 reserved ;
};
struct mlx5_ib_alloc_pd_resp {
   __u32 pdn ;
};
struct mlx5_inbox_hdr {
   __be16 opcode ;
   u8 rsvd[4U] ;
   __be16 opmod ;
};
struct mlx5_outbox_hdr {
   u8 status ;
   u8 rsvd[3U] ;
   __be32 syndrome ;
};
struct mlx5_cmd_layout {
   u8 type ;
   u8 rsvd0[3U] ;
   __be32 inlen ;
   __be64 in_ptr ;
   __be32 in[4U] ;
   __be32 out[4U] ;
   __be64 out_ptr ;
   __be32 outlen ;
   u8 token ;
   u8 sig ;
   u8 rsvd1 ;
   u8 status_own ;
};
struct health_buffer {
   __be32 assert_var[5U] ;
   __be32 rsvd0[3U] ;
   __be32 assert_exit_ptr ;
   __be32 assert_callra ;
   __be32 rsvd1[2U] ;
   __be32 fw_ver ;
   __be32 hw_id ;
   __be32 rsvd2 ;
   u8 irisc_index ;
   u8 synd ;
   __be16 ext_sync ;
};
struct mlx5_init_seg {
   __be32 fw_rev ;
   __be32 cmdif_rev_fw_sub ;
   __be32 rsvd0[2U] ;
   __be32 cmdq_addr_h ;
   __be32 cmdq_addr_l_sz ;
   __be32 cmd_dbell ;
   __be32 rsvd1[121U] ;
   struct health_buffer health ;
   __be32 rsvd2[884U] ;
   __be32 health_counter ;
   __be32 rsvd3[1019U] ;
   __be64 ieee1588_clk ;
   __be32 ieee1588_clk_type ;
   __be32 clr_intx ;
};
struct mlx5_mkey_seg {
   u8 status ;
   u8 pcie_control ;
   u8 flags ;
   u8 version ;
   __be32 qpn_mkey7_0 ;
   u8 rsvd1[4U] ;
   __be32 flags_pd ;
   __be64 start_addr ;
   __be64 len ;
   __be32 bsfs_octo_size ;
   u8 rsvd2[16U] ;
   __be32 xlt_oct_size ;
   u8 rsvd3[3U] ;
   u8 log2_page_size ;
   u8 rsvd4[4U] ;
};
struct mlx5_create_mkey_mbox_in {
   struct mlx5_inbox_hdr hdr ;
   __be32 input_mkey_index ;
   u8 rsvd0[4U] ;
   struct mlx5_mkey_seg seg ;
   u8 rsvd1[16U] ;
   __be32 xlat_oct_act_size ;
   __be32 rsvd2 ;
   u8 rsvd3[168U] ;
   __be64 pas[0U] ;
};
struct mlx5_create_mkey_mbox_out {
   struct mlx5_outbox_hdr hdr ;
   __be32 mkey ;
   u8 rsvd[4U] ;
};
enum dbg_rsc_type {
    MLX5_DBG_RSC_QP = 0,
    MLX5_DBG_RSC_EQ = 1,
    MLX5_DBG_RSC_CQ = 2
} ;
struct mlx5_field_desc {
   struct dentry *dent ;
   int i ;
};
struct mlx5_core_dev;
struct mlx5_rsc_debug {
   struct mlx5_core_dev *dev ;
   void *object ;
   enum dbg_rsc_type type ;
   struct dentry *root ;
   struct mlx5_field_desc fields[0U] ;
};
enum mlx5_dev_event {
    MLX5_DEV_EVENT_SYS_ERROR = 0,
    MLX5_DEV_EVENT_PORT_UP = 1,
    MLX5_DEV_EVENT_PORT_DOWN = 2,
    MLX5_DEV_EVENT_PORT_INITIALIZED = 3,
    MLX5_DEV_EVENT_LID_CHANGE = 4,
    MLX5_DEV_EVENT_PKEY_CHANGE = 5,
    MLX5_DEV_EVENT_GUID_CHANGE = 6,
    MLX5_DEV_EVENT_CLIENT_REREG = 7
} ;
struct mlx5_uar;
struct mlx5_bf;
struct mlx5_uuar_info {
   struct mlx5_uar *uars ;
   int num_uars ;
   int num_low_latency_uuars ;
   unsigned long *bitmap ;
   unsigned int *count ;
   struct mlx5_bf *bfs ;
   struct mutex lock ;
   u32 ver ;
};
struct mlx5_bf {
   void *reg ;
   void *regreg ;
   int buf_size ;
   struct mlx5_uar *uar ;
   unsigned long offset ;
   int need_lock ;
   spinlock_t lock ;
   spinlock_t lock32 ;
   int uuarn ;
};
struct mlx5_cmd_first {
   __be32 data[4U] ;
};
struct cache_ent;
struct mlx5_cmd_mailbox;
struct mlx5_cmd_msg {
   struct list_head list ;
   struct cache_ent *cache ;
   u32 len ;
   struct mlx5_cmd_first first ;
   struct mlx5_cmd_mailbox *next ;
};
struct mlx5_cmd_debug {
   struct dentry *dbg_root ;
   struct dentry *dbg_in ;
   struct dentry *dbg_out ;
   struct dentry *dbg_outlen ;
   struct dentry *dbg_status ;
   struct dentry *dbg_run ;
   void *in_msg ;
   void *out_msg ;
   u8 status ;
   u16 inlen ;
   u16 outlen ;
};
struct cache_ent {
   spinlock_t lock ;
   struct list_head head ;
};
struct cmd_msg_cache {
   struct cache_ent large ;
   struct cache_ent med ;
};
struct mlx5_cmd_stats {
   u64 sum ;
   u64 n ;
   struct dentry *root ;
   struct dentry *avg ;
   struct dentry *count ;
   spinlock_t lock ;
};
struct mlx5_cmd_work_ent;
struct mlx5_cmd {
   void *cmd_buf ;
   dma_addr_t dma ;
   u16 cmdif_rev ;
   u8 log_sz ;
   u8 log_stride ;
   int max_reg_cmds ;
   int events ;
   u32 *vector ;
   spinlock_t alloc_lock ;
   spinlock_t token_lock ;
   u8 token ;
   unsigned long bitmask ;
   char wq_name[32U] ;
   struct workqueue_struct *wq ;
   struct semaphore sem ;
   struct semaphore pages_sem ;
   int mode ;
   struct mlx5_cmd_work_ent *ent_arr[32U] ;
   struct dma_pool *pool ;
   struct mlx5_cmd_debug dbg ;
   struct cmd_msg_cache cache ;
   int checksum_disabled ;
   struct mlx5_cmd_stats stats[2064U] ;
};
struct mlx5_port_caps {
   int gid_table_len ;
   int pkey_table_len ;
};
struct mlx5_caps {
   u8 log_max_eq ;
   u8 log_max_cq ;
   u8 log_max_qp ;
   u8 log_max_mkey ;
   u8 log_max_pd ;
   u8 log_max_srq ;
   u32 max_cqes ;
   int max_wqes ;
   int max_sq_desc_sz ;
   int max_rq_desc_sz ;
   u64 flags ;
   u16 stat_rate_support ;
   int log_max_msg ;
   int num_ports ;
   int max_ra_res_qp ;
   int max_ra_req_qp ;
   int max_srq_wqes ;
   int bf_reg_size ;
   int bf_regs_per_page ;
   struct mlx5_port_caps port[2U] ;
   u8 ext_port_cap[2U] ;
   int max_vf ;
   u32 reserved_lkey ;
   u8 local_ca_ack_delay ;
   u8 log_max_mcg ;
   u32 max_qp_mcg ;
   int min_page_sz ;
};
struct mlx5_cmd_mailbox {
   void *buf ;
   dma_addr_t dma ;
   struct mlx5_cmd_mailbox *next ;
};
struct mlx5_buf_list {
   void *buf ;
   dma_addr_t map ;
};
struct mlx5_buf {
   struct mlx5_buf_list direct ;
   struct mlx5_buf_list *page_list ;
   int nbufs ;
   int npages ;
   int page_shift ;
   int size ;
};
struct mlx5_eq {
   struct mlx5_core_dev *dev ;
   __be32 *doorbell ;
   u32 cons_index ;
   struct mlx5_buf buf ;
   int size ;
   u8 irqn ;
   u8 eqn ;
   int nent ;
   u64 mask ;
   char name[32U] ;
   struct list_head list ;
   int index ;
   struct mlx5_rsc_debug *dbg ;
};
struct mlx5_core_mr {
   u64 iova ;
   u64 size ;
   u32 key ;
   u32 pd ;
   u32 access ;
};
struct mlx5_eq_table {
   void *update_ci ;
   void *update_arm_ci ;
   struct list_head *comp_eq_head ;
   struct mlx5_eq pages_eq ;
   struct mlx5_eq async_eq ;
   struct mlx5_eq cmd_eq ;
   struct msix_entry *msix_arr ;
   int num_comp_vectors ;
   spinlock_t lock ;
};
struct mlx5_uar {
   u32 index ;
   struct list_head bf_list ;
   unsigned int free_bf_bmap ;
   void *wc_map ;
   void *map ;
};
struct mlx5_core_health {
   struct health_buffer *health ;
   __be32 *health_counter ;
   struct timer_list timer ;
   struct list_head list ;
   u32 prev ;
   int miss_counter ;
};
struct mlx5_cq_table {
   spinlock_t lock ;
   struct radix_tree_root tree ;
};
struct mlx5_qp_table {
   spinlock_t lock ;
   struct radix_tree_root tree ;
};
struct mlx5_srq_table {
   spinlock_t lock ;
   struct radix_tree_root tree ;
};
struct mlx5_priv {
   char name[16U] ;
   struct mlx5_eq_table eq_table ;
   struct mlx5_uuar_info uuari ;
   struct workqueue_struct *pg_wq ;
   struct rb_root page_root ;
   int fw_pages ;
   int reg_pages ;
   struct list_head free_list ;
   struct mlx5_core_health health ;
   struct mlx5_srq_table srq_table ;
   struct mlx5_qp_table qp_table ;
   struct dentry *qp_debugfs ;
   struct dentry *eq_debugfs ;
   struct dentry *cq_debugfs ;
   struct dentry *cmdif_debugfs ;
   struct mlx5_cq_table cq_table ;
   struct mutex pgdir_mutex ;
   struct list_head pgdir_list ;
   struct dentry *dbg_root ;
   spinlock_t mkey_lock ;
   u8 mkey_key ;
};
struct mlx5_profile;
struct mlx5_core_dev {
   struct pci_dev *pdev ;
   u8 rev_id ;
   char board_id[64U] ;
   struct mlx5_cmd cmd ;
   struct mlx5_caps caps ;
   phys_addr_t iseg_base ;
   struct mlx5_init_seg *iseg ;
   void (*event)(struct mlx5_core_dev * , enum mlx5_dev_event , void * ) ;
   struct mlx5_priv priv ;
   struct mlx5_profile *profile ;
   atomic_t num_qps ;
};
struct mlx5_cmd_work_ent {
   struct mlx5_cmd_msg *in ;
   struct mlx5_cmd_msg *out ;
   void *uout ;
   int uout_size ;
   void (*callback)(int , void * ) ;
   void *context ;
   int idx ;
   struct completion done ;
   struct mlx5_cmd *cmd ;
   struct work_struct work ;
   struct mlx5_cmd_layout *lay ;
   int ret ;
   int page_queue ;
   u8 status ;
   u8 token ;
   struct timespec ts1 ;
   struct timespec ts2 ;
   u16 op ;
};
struct __anonstruct_mr_cache_229 {
   int size ;
   int limit ;
};
struct mlx5_profile {
   u64 mask ;
   u32 log_max_qp ;
   struct __anonstruct_mr_cache_229 mr_cache[16U] ;
};
struct mlx5_ib_ucontext {
   struct ib_ucontext ibucontext ;
   struct list_head db_page_list ;
   struct mutex db_page_mutex ;
   struct mlx5_uuar_info uuari ;
};
struct mlx5_ib_pd {
   struct ib_pd ibpd ;
   u32 pdn ;
   u32 pa_lkey ;
};
struct mlx5_ib_dev;
struct umr_common {
   struct ib_pd *pd ;
   struct ib_cq *cq ;
   struct ib_qp *qp ;
   struct ib_mr *mr ;
   struct semaphore sem ;
};
struct mlx5_cache_ent {
   struct list_head head ;
   spinlock_t lock ;
   struct dentry *dir ;
   char name[4U] ;
   u32 order ;
   u32 size ;
   u32 cur ;
   u32 miss ;
   u32 limit ;
   struct dentry *fsize ;
   struct dentry *fcur ;
   struct dentry *fmiss ;
   struct dentry *flimit ;
   struct mlx5_ib_dev *dev ;
   struct work_struct work ;
   struct delayed_work dwork ;
   int pending ;
};
struct mlx5_mr_cache {
   struct workqueue_struct *wq ;
   struct mlx5_cache_ent ent[16U] ;
   int stopped ;
   struct dentry *root ;
   unsigned long last_add ;
};
struct mlx5_ib_resources {
   struct ib_cq *c0 ;
   struct ib_xrcd *x0 ;
   struct ib_xrcd *x1 ;
   struct ib_pd *p0 ;
   struct ib_srq *s0 ;
};
struct mlx5_ib_dev {
   struct ib_device ib_dev ;
   struct mlx5_core_dev mdev ;
   struct list_head eqs_list ;
   int num_ports ;
   int num_comp_vectors ;
   struct mutex cap_mask_mutex ;
   bool ib_active ;
   struct umr_common umrc ;
   spinlock_t mr_lock ;
   struct mlx5_ib_resources devr ;
   struct mlx5_mr_cache cache ;
   struct timer_list delay_timer ;
   int fill_delay ;
};
struct mlx5_reg_node_desc {
   u8 desc[64U] ;
};
struct ldv_struct_insmod_6 {
   int signal_pending ;
};
struct ldv_struct_pci_scenario_4 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_scenario_5 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef __u8 uint8_t;
typedef __u16 uint16_t;
typedef __u64 uint64_t;
enum hrtimer_restart;
struct ib_umem {
   struct ib_ucontext *context ;
   size_t length ;
   int offset ;
   int page_size ;
   int writable ;
   int hugetlb ;
   struct list_head chunk_list ;
   struct work_struct work ;
   struct mm_struct *mm ;
   unsigned long diff ;
};
enum mlx5_event {
    MLX5_EVENT_TYPE_COMP = 0,
    MLX5_EVENT_TYPE_PATH_MIG = 1,
    MLX5_EVENT_TYPE_COMM_EST = 2,
    MLX5_EVENT_TYPE_SQ_DRAINED = 3,
    MLX5_EVENT_TYPE_SRQ_LAST_WQE = 19,
    MLX5_EVENT_TYPE_SRQ_RQ_LIMIT = 20,
    MLX5_EVENT_TYPE_CQ_ERROR = 4,
    MLX5_EVENT_TYPE_WQ_CATAS_ERROR = 5,
    MLX5_EVENT_TYPE_PATH_MIG_FAILED = 7,
    MLX5_EVENT_TYPE_WQ_INVAL_REQ_ERROR = 16,
    MLX5_EVENT_TYPE_WQ_ACCESS_ERROR = 17,
    MLX5_EVENT_TYPE_SRQ_CATAS_ERROR = 18,
    MLX5_EVENT_TYPE_INTERNAL_ERROR = 8,
    MLX5_EVENT_TYPE_PORT_CHANGE = 9,
    MLX5_EVENT_TYPE_GPIO_EVENT = 21,
    MLX5_EVENT_TYPE_REMOTE_CONFIG = 25,
    MLX5_EVENT_TYPE_DB_BF_CONGESTION = 26,
    MLX5_EVENT_TYPE_STALL_EVENT = 27,
    MLX5_EVENT_TYPE_CMD = 10,
    MLX5_EVENT_TYPE_PAGE_REQUEST = 11
} ;
struct mlx5_err_cqe {
   u8 rsvd0[32U] ;
   __be32 srqn ;
   u8 rsvd1[18U] ;
   u8 vendor_err_synd ;
   u8 syndrome ;
   __be32 s_wqe_opcode_qpn ;
   __be16 wqe_counter ;
   u8 signature ;
   u8 op_own ;
};
struct mlx5_cqe64 {
   u8 rsvd0[17U] ;
   u8 ml_path ;
   u8 rsvd20[4U] ;
   __be16 slid ;
   __be32 flags_rqpn ;
   u8 rsvd28[4U] ;
   __be32 srqn ;
   __be32 imm_inval_pkey ;
   u8 rsvd40[4U] ;
   __be32 byte_cnt ;
   __be64 timestamp ;
   __be32 sop_drop_qpn ;
   __be16 wqe_counter ;
   u8 signature ;
   u8 op_own ;
};
struct mlx5_cq_context {
   u8 status ;
   u8 cqe_sz_flags ;
   u8 st ;
   u8 rsvd3 ;
   u8 rsvd4[6U] ;
   __be16 page_offset ;
   __be32 log_sz_usr_page ;
   __be16 cq_period ;
   __be16 cq_max_count ;
   __be16 rsvd20 ;
   __be16 c_eqn ;
   u8 log_pg_sz ;
   u8 rsvd25[7U] ;
   __be32 last_notified_index ;
   __be32 solicit_producer_index ;
   __be32 consumer_counter ;
   __be32 producer_counter ;
   u8 rsvd48[8U] ;
   __be64 db_record_addr ;
};
struct mlx5_create_cq_mbox_in {
   struct mlx5_inbox_hdr hdr ;
   __be32 input_cqn ;
   u8 rsvdx[4U] ;
   struct mlx5_cq_context ctx ;
   u8 rsvd6[192U] ;
   __be64 pas[0U] ;
};
struct mlx5_modify_cq_mbox_in {
   struct mlx5_inbox_hdr hdr ;
   __be32 cqn ;
   __be32 field_select ;
   struct mlx5_cq_context ctx ;
   u8 rsvd[192U] ;
   __be64 pas[0U] ;
};
struct mlx5_core_srq {
   u32 srqn ;
   int max ;
   int max_gs ;
   int max_avail_gather ;
   int wqe_shift ;
   void (*event)(struct mlx5_core_srq * , enum mlx5_event ) ;
   atomic_t refcount ;
   struct completion free ;
};
struct mlx5_db_pgdir;
struct mlx5_ib_user_db_page;
union __anonunion_u_211 {
   struct mlx5_db_pgdir *pgdir ;
   struct mlx5_ib_user_db_page *user_page ;
};
struct mlx5_db {
   __be32 *db ;
   union __anonunion_u_211 u ;
   dma_addr_t dma ;
   int index ;
};
struct mlx5_db_pgdir {
   struct list_head list ;
   unsigned long bitmap[1U] ;
   __be32 *db_page ;
   dma_addr_t db_dma ;
};
struct mlx5_core_cq {
   u32 cqn ;
   int cqe_sz ;
   __be32 *set_ci_db ;
   __be32 *arm_db ;
   atomic_t refcount ;
   struct completion free ;
   unsigned int vector ;
   int irqn ;
   void (*comp)(struct mlx5_core_cq * ) ;
   void (*event)(struct mlx5_core_cq * , enum mlx5_event ) ;
   struct mlx5_uar *uar ;
   u32 cons_index ;
   unsigned int arm_sn ;
   struct mlx5_rsc_debug *dbg ;
   int pid ;
};
struct mlx5_wqe_data_seg {
   __be32 byte_count ;
   __be32 lkey ;
   __be64 addr ;
};
struct mlx5_core_qp {
   void (*event)(struct mlx5_core_qp * , int ) ;
   int qpn ;
   atomic_t refcount ;
   struct completion free ;
   struct mlx5_rsc_debug *dbg ;
   int pid ;
};
struct wr_list {
   u16 opcode ;
   u16 next ;
};
struct mlx5_ib_wq {
   u64 *wrid ;
   u32 *wr_data ;
   struct wr_list *w_list ;
   unsigned int *wqe_head ;
   u16 unsig_count ;
   spinlock_t lock ;
   int wqe_cnt ;
   int max_post ;
   int max_gs ;
   int offset ;
   int wqe_shift ;
   unsigned int head ;
   unsigned int tail ;
   u16 cur_post ;
   u16 last_poll ;
   void *qend ;
};
struct mlx5_ib_qp {
   struct ib_qp ibqp ;
   struct mlx5_core_qp mqp ;
   struct mlx5_buf buf ;
   struct mlx5_db db ;
   struct mlx5_ib_wq rq ;
   u32 doorbell_qpn ;
   u8 sq_signal_bits ;
   u8 fm_cache ;
   int sq_max_wqes_per_wr ;
   int sq_spare_wqes ;
   struct mlx5_ib_wq sq ;
   struct ib_umem *umem ;
   int buf_size ;
   struct mutex mutex ;
   u16 xrcdn ;
   u32 flags ;
   u8 port ;
   u8 alt_port ;
   u8 atomic_rd_en ;
   u8 resp_depth ;
   u8 state ;
   int mlx_type ;
   int wq_sig ;
   int scat_cqe ;
   int max_inline_data ;
   struct mlx5_bf *bf ;
   int has_rq ;
   int uuarn ;
   int create_type ;
   u32 pa_lkey ;
};
struct mlx5_ib_cq_buf {
   struct mlx5_buf buf ;
   struct ib_umem *umem ;
   int cqe_size ;
   int nent ;
};
struct mlx5_ib_cq {
   struct ib_cq ibcq ;
   struct mlx5_core_cq mcq ;
   struct mlx5_ib_cq_buf buf ;
   struct mlx5_db db ;
   spinlock_t lock ;
   struct mutex resize_mutex ;
   struct mlx5_ib_cq_buf *resize_buf ;
   struct ib_umem *resize_umem ;
   int cqe_size ;
};
struct mlx5_ib_srq {
   struct ib_srq ibsrq ;
   struct mlx5_core_srq msrq ;
   struct mlx5_buf buf ;
   struct mlx5_db db ;
   u64 *wrid ;
   spinlock_t lock ;
   int head ;
   int tail ;
   u16 wqe_ctr ;
   struct ib_umem *umem ;
   struct mutex mutex ;
   int wq_sig ;
};
struct mlx5_ib_create_cq {
   __u64 buf_addr ;
   __u64 db_addr ;
   __u32 cqe_size ;
};
struct mlx5_ib_resize_cq {
   __u64 buf_addr ;
   __u16 cqe_size ;
   __u16 reserved0 ;
   __u32 reserved1 ;
};
enum hrtimer_restart;
struct ib_umem_chunk {
   struct list_head list ;
   int nents ;
   int nmap ;
   struct scatterlist page_list[0U] ;
};
struct mlx5_ib_user_db_page {
   struct list_head list ;
   struct ib_umem *umem ;
   unsigned long user_virt ;
   int refcnt ;
};
enum hrtimer_restart;
enum ib_qp_attr_mask {
    IB_QP_STATE = 1,
    IB_QP_CUR_STATE = 2,
    IB_QP_EN_SQD_ASYNC_NOTIFY = 4,
    IB_QP_ACCESS_FLAGS = 8,
    IB_QP_PKEY_INDEX = 16,
    IB_QP_PORT = 32,
    IB_QP_QKEY = 64,
    IB_QP_AV = 128,
    IB_QP_PATH_MTU = 256,
    IB_QP_TIMEOUT = 512,
    IB_QP_RETRY_CNT = 1024,
    IB_QP_RNR_RETRY = 2048,
    IB_QP_RQ_PSN = 4096,
    IB_QP_MAX_QP_RD_ATOMIC = 8192,
    IB_QP_ALT_PATH = 16384,
    IB_QP_MIN_RNR_TIMER = 32768,
    IB_QP_SQ_PSN = 65536,
    IB_QP_MAX_DEST_RD_ATOMIC = 131072,
    IB_QP_PATH_MIG_STATE = 262144,
    IB_QP_CAP = 524288,
    IB_QP_DEST_QPN = 1048576,
    IB_QP_SMAC = 2097152,
    IB_QP_ALT_SMAC = 4194304,
    IB_QP_VID = 8388608,
    IB_QP_ALT_VID = 16777216
} ;
enum mlx5_qp_optpar {
    MLX5_QP_OPTPAR_ALT_ADDR_PATH = 1,
    MLX5_QP_OPTPAR_RRE = 2,
    MLX5_QP_OPTPAR_RAE = 4,
    MLX5_QP_OPTPAR_RWE = 8,
    MLX5_QP_OPTPAR_PKEY_INDEX = 16,
    MLX5_QP_OPTPAR_Q_KEY = 32,
    MLX5_QP_OPTPAR_RNR_TIMEOUT = 64,
    MLX5_QP_OPTPAR_PRIMARY_ADDR_PATH = 128,
    MLX5_QP_OPTPAR_SRA_MAX = 256,
    MLX5_QP_OPTPAR_RRA_MAX = 512,
    MLX5_QP_OPTPAR_PM_STATE = 1024,
    MLX5_QP_OPTPAR_RETRY_COUNT = 4096,
    MLX5_QP_OPTPAR_RNR_RETRY = 8192,
    MLX5_QP_OPTPAR_ACK_TIMEOUT = 16384,
    MLX5_QP_OPTPAR_PRI_PORT = 65536,
    MLX5_QP_OPTPAR_SRQN = 262144,
    MLX5_QP_OPTPAR_CQN_RCV = 524288,
    MLX5_QP_OPTPAR_DC_HS = 1048576,
    MLX5_QP_OPTPAR_DC_KEY = 2097152
} ;
enum mlx5_qp_state {
    MLX5_QP_STATE_RST = 0,
    MLX5_QP_STATE_INIT = 1,
    MLX5_QP_STATE_RTR = 2,
    MLX5_QP_STATE_RTS = 3,
    MLX5_QP_STATE_SQER = 4,
    MLX5_QP_STATE_SQD = 5,
    MLX5_QP_STATE_ERR = 6,
    MLX5_QP_STATE_SQ_DRAINING = 7,
    MLX5_QP_STATE_SUSPENDED = 9,
    MLX5_QP_NUM_STATE = 10
} ;
struct mlx5_wqe_ctrl_seg {
   __be32 opmod_idx_opcode ;
   __be32 qpn_ds ;
   u8 signature ;
   u8 rsvd[2U] ;
   u8 fm_ce_se ;
   __be32 imm ;
};
struct mlx5_wqe_xrc_seg {
   __be32 xrc_srqn ;
   u8 rsvd[12U] ;
};
struct __anonstruct_qkey_223 {
   __be32 qkey ;
   __be32 reserved ;
};
union __anonunion_key_222 {
   struct __anonstruct_qkey_223 qkey ;
   __be64 dc_key ;
};
struct mlx5_av {
   union __anonunion_key_222 key ;
   __be32 dqp_dct ;
   u8 stat_rate_sl ;
   u8 fl_mlid ;
   __be16 rlid ;
   u8 reserved0[10U] ;
   u8 tclass ;
   u8 hop_limit ;
   __be32 grh_gid_fl ;
   u8 rgid[16U] ;
};
struct mlx5_wqe_datagram_seg {
   struct mlx5_av av ;
};
struct mlx5_wqe_raddr_seg {
   __be64 raddr ;
   __be32 rkey ;
   u32 reserved ;
};
struct mlx5_wqe_umr_ctrl_seg {
   u8 flags ;
   u8 rsvd0[3U] ;
   __be16 klm_octowords ;
   __be16 bsf_octowords ;
   __be64 mkey_mask ;
   u8 rsvd1[32U] ;
};
struct mlx5_rwqe_sig {
   u8 rsvd0[4U] ;
   u8 signature ;
   u8 rsvd1[11U] ;
};
struct mlx5_wqe_inline_seg {
   __be32 byte_count ;
};
struct mlx5_qp_path {
   u8 fl ;
   u8 rsvd3 ;
   u8 free_ar ;
   u8 pkey_index ;
   u8 rsvd0 ;
   u8 grh_mlid ;
   __be16 rlid ;
   u8 ackto_lt ;
   u8 mgid_index ;
   u8 static_rate ;
   u8 hop_limit ;
   __be32 tclass_flowlabel ;
   u8 rgid[16U] ;
   u8 rsvd1[4U] ;
   u8 sl ;
   u8 port ;
   u8 rsvd2[6U] ;
};
struct mlx5_qp_context {
   __be32 flags ;
   __be32 flags_pd ;
   u8 mtu_msgmax ;
   u8 rq_size_stride ;
   __be16 sq_crq_size ;
   __be32 qp_counter_set_usr_page ;
   __be32 wire_qpn ;
   __be32 log_pg_sz_remote_qpn ;
   struct mlx5_qp_path pri_path ;
   struct mlx5_qp_path alt_path ;
   __be32 params1 ;
   u8 reserved2[4U] ;
   __be32 next_send_psn ;
   __be32 cqn_send ;
   u8 reserved3[8U] ;
   __be32 last_acked_psn ;
   __be32 ssn ;
   __be32 params2 ;
   __be32 rnr_nextrecvpsn ;
   __be32 xrcd ;
   __be32 cqn_recv ;
   __be64 db_rec_addr ;
   __be32 qkey ;
   __be32 rq_type_srqn ;
   __be32 rmsn ;
   __be16 hw_sq_wqe_counter ;
   __be16 sw_sq_wqe_counter ;
   __be16 hw_rcyclic_byte_counter ;
   __be16 hw_rq_counter ;
   __be16 sw_rcyclic_byte_counter ;
   __be16 sw_rq_counter ;
   u8 rsvd0[5U] ;
   u8 cgs ;
   u8 cs_req ;
   u8 cs_res ;
   __be64 dc_access_key ;
   u8 rsvd1[24U] ;
};
struct mlx5_create_qp_mbox_in {
   struct mlx5_inbox_hdr hdr ;
   __be32 input_qpn ;
   u8 rsvd0[4U] ;
   __be32 opt_param_mask ;
   u8 rsvd1[4U] ;
   struct mlx5_qp_context ctx ;
   u8 rsvd3[16U] ;
   __be64 pas[0U] ;
};
struct mlx5_modify_qp_mbox_in {
   struct mlx5_inbox_hdr hdr ;
   __be32 qpn ;
   u8 rsvd1[4U] ;
   __be32 optparam ;
   u8 rsvd0[4U] ;
   struct mlx5_qp_context ctx ;
};
struct mlx5_query_qp_mbox_out {
   struct mlx5_outbox_hdr hdr ;
   u8 rsvd1[8U] ;
   __be32 optparam ;
   u8 rsvd0[4U] ;
   struct mlx5_qp_context ctx ;
   u8 rsvd2[16U] ;
   __be64 pas[0U] ;
};
enum mlx5_ib_latency_class {
    MLX5_IB_LATENCY_CLASS_LOW = 0,
    MLX5_IB_LATENCY_CLASS_MEDIUM = 1,
    MLX5_IB_LATENCY_CLASS_HIGH = 2,
    MLX5_IB_LATENCY_CLASS_FAST_PATH = 3
} ;
struct mlx5_ib_xrcd {
   struct ib_xrcd ibxrcd ;
   u32 xrcdn ;
};
struct mlx5_ib_fast_reg_page_list {
   struct ib_fast_reg_page_list ibfrpl ;
   __be64 *mapped_page_list ;
   dma_addr_t map ;
};
struct mlx5_ib_ah {
   struct ib_ah ibah ;
   struct mlx5_av av ;
};
struct mlx5_ib_create_qp {
   __u64 buf_addr ;
   __u64 db_addr ;
   __u32 sq_wqe_count ;
   __u32 rq_wqe_count ;
   __u32 rq_wqe_shift ;
   __u32 flags ;
};
struct mlx5_ib_create_qp_resp {
   __u32 uuar_index ;
};
struct umr_wr {
   u64 virt_addr ;
   struct ib_pd *pd ;
   unsigned int page_shift ;
   unsigned int npages ;
   u32 length ;
   int access_flags ;
   u32 mkey ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct mlx5_wqe_srq_next_seg {
   u8 rsvd0[2U] ;
   __be16 next_wqe_index ;
   u8 signature ;
   u8 rsvd1[11U] ;
};
struct mlx5_srq_ctx {
   u8 state_log_sz ;
   u8 rsvd0[3U] ;
   __be32 flags_xrcd ;
   __be32 pgoff_cqn ;
   u8 rsvd1[4U] ;
   u8 log_pg_sz ;
   u8 rsvd2[7U] ;
   __be32 pd ;
   __be16 lwm ;
   __be16 wqe_cnt ;
   u8 rsvd3[8U] ;
   __be64 db_record ;
};
struct mlx5_create_srq_mbox_in {
   struct mlx5_inbox_hdr hdr ;
   __be32 input_srqn ;
   u8 rsvd0[4U] ;
   struct mlx5_srq_ctx ctx ;
   u8 rsvd1[208U] ;
   __be64 pas[0U] ;
};
struct mlx5_query_srq_mbox_out {
   struct mlx5_outbox_hdr hdr ;
   u8 rsvd0[8U] ;
   struct mlx5_srq_ctx ctx ;
   u8 rsvd1[32U] ;
   __be64 pas[0U] ;
};
struct mlx5_ib_create_srq {
   __u64 buf_addr ;
   __u64 db_addr ;
   __u32 flags ;
};
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
enum hrtimer_restart;
struct mlx5_shared_mr_info {
   int mr_id ;
   struct ib_umem *umem ;
};
struct mlx5_ib_mr {
   struct ib_mr ibmr ;
   struct mlx5_core_mr mmr ;
   struct ib_umem *umem ;
   struct mlx5_shared_mr_info *smr_info ;
   struct list_head list ;
   int order ;
   int umred ;
   __be64 *pas ;
   dma_addr_t dma ;
   int npages ;
   struct completion done ;
   enum ib_wc_status status ;
   struct mlx5_ib_dev *dev ;
   struct mlx5_create_mkey_mbox_out out ;
};
enum hrtimer_restart;
enum hrtimer_restart;
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
int __builtin_bswap32(int ) ;
long __builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
long ldv_is_err(void const *ptr ) ;
void *ldv_err_ptr(long error ) ;
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cap_mask_mutex_of_mlx5_ib_dev(struct mutex *lock ) ;
void ldv_mutex_unlock_cap_mask_mutex_of_mlx5_ib_dev(struct mutex *lock ) ;
extern struct module __this_module ;
int ent_size;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void list_del(struct list_head * ) ;
extern pgprot_t pgprot_writecombine(pgprot_t ) ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 __fswab32(__u32 val )
{
  int tmp ;
  {
  {
  tmp = __builtin_bswap32(val);
  }
  return ((__u32 )tmp);
}
}
__inline static __u16 __swab16p(__u16 const *p )
{
  __u16 tmp ;
  {
  {
  tmp = __fswab16((int )*p);
  }
  return (tmp);
}
}
__inline static __u32 __swab32p(__u32 const *p )
{
  __u32 tmp ;
  {
  {
  tmp = __fswab32(*p);
  }
  return (tmp);
}
}
__inline static __u32 __be32_to_cpup(__be32 const *p )
{
  __u32 tmp ;
  {
  {
  tmp = __swab32p(p);
  }
  return (tmp);
}
}
__inline static __u16 __be16_to_cpup(__be16 const *p )
{
  __u16 tmp ;
  {
  {
  tmp = __swab16p(p);
  }
  return (tmp);
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
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
  goto ldv_3078;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3078;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3078;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3078;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3078: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
void ldv_spin_lock_lock_of_mlx5_eq_table(void) ;
void ldv_spin_unlock_lock_of_mlx5_eq_table(void) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
void ldv_check_final_state(void) ;
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
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_49(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_50(spinlock_t *lock ) ;
extern unsigned int ioread32be(void * ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
static void *ldv_dev_get_drvdata_32(struct device const *dev ) ;
static int ldv___pci_register_driver_63(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
static void ldv_pci_unregister_driver_64(struct pci_driver *ldv_func_arg1 ) ;
extern int remap_pfn_range(struct vm_area_struct * , unsigned long , unsigned long ,
                           unsigned long , pgprot_t ) ;
extern void kfree(void const * ) ;
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
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && n > 0xffffffffffffffffUL / size) {
    return ((void *)0);
  } else {
  }
  {
  tmp = __kmalloc(n * size, flags);
  }
  return (tmp);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
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
__inline static void sema_init(struct semaphore *sem , int val )
{
  struct lock_class_key __key ;
  struct semaphore __constr_expr_0 ;
  {
  {
  __constr_expr_0.lock.raw_lock.__annonCompField4.head_tail = 0U;
  __constr_expr_0.lock.magic = 3735899821U;
  __constr_expr_0.lock.owner_cpu = 4294967295U;
  __constr_expr_0.lock.owner = (void *)-1;
  __constr_expr_0.lock.dep_map.key = 0;
  __constr_expr_0.lock.dep_map.class_cache[0] = 0;
  __constr_expr_0.lock.dep_map.class_cache[1] = 0;
  __constr_expr_0.lock.dep_map.name = "(*sem).lock";
  __constr_expr_0.lock.dep_map.cpu = 0;
  __constr_expr_0.lock.dep_map.ip = 0UL;
  __constr_expr_0.count = (unsigned int )val;
  __constr_expr_0.wait_list.next = & sem->wait_list;
  __constr_expr_0.wait_list.prev = & sem->wait_list;
  *sem = __constr_expr_0;
  lockdep_init_map(& sem->lock.dep_map, "semaphore->lock", & __key, 0);
  }
  return;
}
}
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
extern struct ib_device *ib_alloc_device(size_t ) ;
extern void ib_dealloc_device(struct ib_device * ) ;
extern int ib_register_device(struct ib_device * , int (*)(struct ib_device * , u8 ,
                                                           struct kobject * ) ) ;
extern void ib_unregister_device(struct ib_device * ) ;
__inline static int ib_copy_from_udata(void *dest , struct ib_udata *udata , size_t len )
{
  unsigned long tmp ;
  {
  {
  tmp = copy_from_user(dest, udata->inbuf, len);
  }
  return (tmp != 0UL ? -14 : 0);
}
}
__inline static int ib_copy_to_udata(struct ib_udata *udata , void *src , size_t len )
{
  unsigned long tmp ;
  {
  {
  tmp = copy_to_user(udata->outbuf, (void const *)src, len);
  }
  return (tmp != 0UL ? -14 : 0);
}
}
extern void ib_dispatch_event(struct ib_event * ) ;
extern struct ib_pd *ib_alloc_pd(struct ib_device * ) ;
extern int ib_dealloc_pd(struct ib_pd * ) ;
extern struct ib_cq *ib_create_cq(struct ib_device * , void (*)(struct ib_cq * , void * ) ,
                                  void (*)(struct ib_event * , void * ) , void * ,
                                  int , int ) ;
extern int ib_destroy_cq(struct ib_cq * ) ;
__inline static int ib_req_notify_cq(struct ib_cq *cq , enum ib_cq_notify_flags flags )
{
  int tmp ;
  {
  {
  tmp = (*((cq->device)->req_notify_cq))(cq, flags);
  }
  return (tmp);
}
}
extern struct ib_mr *ib_get_dma_mr(struct ib_pd * , int ) ;
extern int ib_dereg_mr(struct ib_mr * ) ;
__inline static struct mlx5_core_dev *pci2mlx5_core_dev(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  }
  return ((struct mlx5_core_dev *)tmp);
}
}
__inline static u16 fw_rev_maj(struct mlx5_core_dev *dev )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32be((void *)(& (dev->iseg)->fw_rev));
  }
  return ((u16 )tmp);
}
}
__inline static u16 fw_rev_min(struct mlx5_core_dev *dev )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32be((void *)(& (dev->iseg)->fw_rev));
  }
  return ((u16 )(tmp >> 16));
}
}
__inline static u16 fw_rev_sub(struct mlx5_core_dev *dev )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32be((void *)(& (dev->iseg)->cmdif_rev_fw_sub));
  }
  return ((u16 )tmp);
}
}
extern int mlx5_dev_init(struct mlx5_core_dev * , struct pci_dev * ) ;
extern void mlx5_dev_cleanup(struct mlx5_core_dev * ) ;
extern int mlx5_cmd_alloc_uar(struct mlx5_core_dev * , u32 * ) ;
extern int mlx5_cmd_free_uar(struct mlx5_core_dev * , u32 ) ;
extern int mlx5_core_create_mkey(struct mlx5_core_dev * , struct mlx5_core_mr * ,
                                 struct mlx5_create_mkey_mbox_in * , int , void (*)(int ,
                                                                                     void * ) ,
                                 void * , struct mlx5_create_mkey_mbox_out * ) ;
extern int mlx5_core_destroy_mkey(struct mlx5_core_dev * , struct mlx5_core_mr * ) ;
extern int mlx5_core_alloc_pd(struct mlx5_core_dev * , u32 * ) ;
extern int mlx5_core_dealloc_pd(struct mlx5_core_dev * , u32 ) ;
extern int mlx5_create_map_eq(struct mlx5_core_dev * , struct mlx5_eq * , u8 , int ,
                              u64 , char const * , struct mlx5_uar * ) ;
extern int mlx5_destroy_unmap_eq(struct mlx5_core_dev * , struct mlx5_eq * ) ;
extern int mlx5_core_attach_mcg(struct mlx5_core_dev * , union ib_gid * , u32 ) ;
extern int mlx5_core_detach_mcg(struct mlx5_core_dev * , union ib_gid * , u32 ) ;
extern int mlx5_core_access_reg(struct mlx5_core_dev * , void * , int , void * ,
                                int , u16 , int , int ) ;
extern int mlx5_set_port_caps(struct mlx5_core_dev * , int , u32 ) ;
__inline static struct mlx5_ib_ucontext *to_mucontext(struct ib_ucontext *ibucontext )
{
  struct ib_ucontext const *__mptr ;
  {
  __mptr = (struct ib_ucontext const *)ibucontext;
  return ((struct mlx5_ib_ucontext *)__mptr);
}
}
__inline static struct mlx5_ib_dev *to_mdev(struct ib_device *ibdev )
{
  struct ib_device const *__mptr ;
  {
  __mptr = (struct ib_device const *)ibdev;
  return ((struct mlx5_ib_dev *)__mptr);
}
}
__inline static struct mlx5_ib_pd *to_mpd(struct ib_pd *ibpd )
{
  struct ib_pd const *__mptr ;
  {
  __mptr = (struct ib_pd const *)ibpd;
  return ((struct mlx5_ib_pd *)__mptr);
}
}
__inline static struct mlx5_ib_dev *mlx5_core2ibdev(struct mlx5_core_dev *dev )
{
  struct mlx5_core_dev const *__mptr ;
  {
  __mptr = (struct mlx5_core_dev const *)dev;
  return ((struct mlx5_ib_dev *)(__mptr + 0xfffffffffffff688UL));
}
}
__inline static struct mlx5_ib_dev *mlx5_pci2ibdev(struct pci_dev *pdev )
{
  struct mlx5_core_dev *tmp ;
  struct mlx5_ib_dev *tmp___0 ;
  {
  {
  tmp = pci2mlx5_core_dev(pdev);
  tmp___0 = mlx5_core2ibdev(tmp);
  }
  return (tmp___0);
}
}
int mlx5_MAD_IFC(struct mlx5_ib_dev *dev , int ignore_mkey , int ignore_bkey , int port ,
                 struct ib_wc *in_wc , struct ib_grh *in_grh , void *in_mad , void *response_mad ) ;
struct ib_ah *mlx5_ib_create_ah(struct ib_pd *pd , struct ib_ah_attr *ah_attr ) ;
int mlx5_ib_query_ah(struct ib_ah *ibah , struct ib_ah_attr *ah_attr ) ;
int mlx5_ib_destroy_ah(struct ib_ah *ah ) ;
struct ib_srq *mlx5_ib_create_srq(struct ib_pd *pd , struct ib_srq_init_attr *init_attr ,
                                  struct ib_udata *udata ) ;
int mlx5_ib_modify_srq(struct ib_srq *ibsrq , struct ib_srq_attr *attr , enum ib_srq_attr_mask attr_mask ,
                       struct ib_udata *udata ) ;
int mlx5_ib_query_srq(struct ib_srq *ibsrq , struct ib_srq_attr *srq_attr ) ;
int mlx5_ib_destroy_srq(struct ib_srq *srq ) ;
int mlx5_ib_post_srq_recv(struct ib_srq *ibsrq , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr ) ;
struct ib_qp *mlx5_ib_create_qp(struct ib_pd *pd , struct ib_qp_init_attr *init_attr ,
                                struct ib_udata *udata ) ;
int mlx5_ib_modify_qp(struct ib_qp *ibqp , struct ib_qp_attr *attr , int attr_mask ,
                      struct ib_udata *udata ) ;
int mlx5_ib_query_qp(struct ib_qp *ibqp , struct ib_qp_attr *qp_attr , int qp_attr_mask ,
                     struct ib_qp_init_attr *qp_init_attr ) ;
int mlx5_ib_destroy_qp(struct ib_qp *qp ) ;
int mlx5_ib_post_send(struct ib_qp *ibqp , struct ib_send_wr *wr , struct ib_send_wr **bad_wr ) ;
int mlx5_ib_post_recv(struct ib_qp *ibqp , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr ) ;
struct ib_cq *mlx5_ib_create_cq(struct ib_device *ibdev , int entries , int vector ,
                                struct ib_ucontext *context , struct ib_udata *udata ) ;
int mlx5_ib_destroy_cq(struct ib_cq *cq ) ;
int mlx5_ib_poll_cq(struct ib_cq *ibcq , int num_entries , struct ib_wc *wc ) ;
int mlx5_ib_arm_cq(struct ib_cq *ibcq , enum ib_cq_notify_flags flags ) ;
int mlx5_ib_modify_cq(struct ib_cq *cq , u16 cq_count , u16 cq_period ) ;
int mlx5_ib_resize_cq(struct ib_cq *ibcq , int entries , struct ib_udata *udata ) ;
struct ib_mr *mlx5_ib_get_dma_mr(struct ib_pd *pd , int acc ) ;
struct ib_mr *mlx5_ib_reg_user_mr(struct ib_pd *pd , u64 start , u64 length , u64 virt_addr ,
                                  int access_flags , struct ib_udata *udata ) ;
int mlx5_ib_dereg_mr(struct ib_mr *ibmr ) ;
struct ib_mr *mlx5_ib_alloc_fast_reg_mr(struct ib_pd *pd , int max_page_list_len ) ;
struct ib_fast_reg_page_list *mlx5_ib_alloc_fast_reg_page_list(struct ib_device *ibdev ,
                                                               int page_list_len ) ;
void mlx5_ib_free_fast_reg_page_list(struct ib_fast_reg_page_list *page_list ) ;
int mlx5_ib_process_mad(struct ib_device *ibdev , int mad_flags , u8 port_num , struct ib_wc *in_wc ,
                        struct ib_grh *in_grh , struct ib_mad *in_mad , struct ib_mad *out_mad ) ;
struct ib_xrcd *mlx5_ib_alloc_xrcd(struct ib_device *ibdev , struct ib_ucontext *context ,
                                   struct ib_udata *udata ) ;
int mlx5_ib_dealloc_xrcd(struct ib_xrcd *xrcd ) ;
int mlx5_vector2eqn(struct mlx5_ib_dev *dev , int vector , int *eqn , int *irqn ) ;
int mlx5_query_ext_port_caps(struct mlx5_ib_dev *dev , u8 port ) ;
int mlx5_ib_query_port(struct ib_device *ibdev , u8 port , struct ib_port_attr *props ) ;
int mlx5_mr_cache_init(struct mlx5_ib_dev *dev ) ;
int mlx5_mr_cache_cleanup(struct mlx5_ib_dev *dev ) ;
void mlx5_umr_cq_handler(struct ib_cq *cq , void *cq_context ) ;
__inline static void init_query_mad(struct ib_smp *mad )
{
  {
  mad->base_version = 1U;
  mad->mgmt_class = 1U;
  mad->class_version = 1U;
  mad->method = 1U;
  return;
}
}
static int prof_sel = 2;
static char mlx5_version[66U] =
  { 'm', 'l', 'x', '5',
        '_', 'i', 'b', ':',
        ' ', 'M', 'e', 'l',
        'l', 'a', 'n', 'o',
        'x', ' ', 'C', 'o',
        'n', 'n', 'e', 'c',
        't', '-', 'I', 'B',
        ' ', 'I', 'n', 'f',
        'i', 'n', 'i', 'b',
        'a', 'n', 'd', ' ',
        'd', 'r', 'i', 'v',
        'e', 'r', ' ', 'v',
        '2', '.', '2', '-',
        '1', ' ', '(', 'F',
        'e', 'b', ' ', '2',
        '0', '1', '4', ')',
        '\n', '\000'};
static struct mlx5_profile profile[3U] = { {0ULL, 0U, {{0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0,
                                                                                  0},
                 {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}}},
        {1ULL, 12U, {{0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0},
                  {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}}},
        {3ULL,
      17U, {{500, 250}, {500, 250}, {500, 250}, {500, 250}, {500, 250}, {500, 250},
            {500, 250}, {500, 250}, {500, 250}, {500, 250}, {500, 250}, {500, 250},
            {64, 32}, {32, 16}, {16, 8}, {8, 4}}}};
int mlx5_vector2eqn(struct mlx5_ib_dev *dev , int vector , int *eqn , int *irqn )
{
  struct mlx5_eq_table *table ;
  struct mlx5_eq *eq ;
  struct mlx5_eq *n ;
  int err ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  table = & dev->mdev.priv.eq_table;
  err = -2;
  ldv_spin_lock_49(& table->lock);
  __mptr = (struct list_head const *)dev->eqs_list.next;
  eq = (struct mlx5_eq *)(__mptr + 0xffffffffffffff88UL);
  __mptr___0 = (struct list_head const *)eq->list.next;
  n = (struct mlx5_eq *)(__mptr___0 + 0xffffffffffffff88UL);
  }
  goto ldv_36594;
  ldv_36593: ;
  if (eq->index == vector) {
    *eqn = (int )eq->eqn;
    *irqn = (int )eq->irqn;
    err = 0;
    goto ldv_36592;
  } else {
  }
  eq = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct mlx5_eq *)(__mptr___1 + 0xffffffffffffff88UL);
  ldv_36594: ;
  if ((unsigned long )(& eq->list) != (unsigned long )(& dev->eqs_list)) {
    goto ldv_36593;
  } else {
  }
  ldv_36592:
  {
  ldv_spin_unlock_50(& table->lock);
  }
  return (err);
}
}
static int alloc_comp_eqs(struct mlx5_ib_dev *dev )
{
  struct mlx5_eq_table *table ;
  char name[32U] ;
  struct mlx5_eq *eq ;
  struct mlx5_eq *n ;
  int ncomp_vec ;
  int nent ;
  int err ;
  int i ;
  void *tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  struct list_head const *__mptr___1 ;
  {
  {
  table = & dev->mdev.priv.eq_table;
  INIT_LIST_HEAD(& dev->eqs_list);
  ncomp_vec = table->num_comp_vectors;
  nent = 1024;
  i = 0;
  }
  goto ldv_36610;
  ldv_36609:
  {
  tmp = kzalloc(152UL, 208U);
  eq = (struct mlx5_eq *)tmp;
  }
  if ((unsigned long )eq == (unsigned long )((struct mlx5_eq *)0)) {
    err = -12;
    goto clean;
  } else {
  }
  {
  snprintf((char *)(& name), 32UL, "mlx5_comp%d", i);
  err = mlx5_create_map_eq(& dev->mdev, eq, (int )((unsigned int )((u8 )i) + 3U),
                           nent, 0ULL, (char const *)(& name), dev->mdev.priv.uuari.uars);
  }
  if (err != 0) {
    {
    kfree((void const *)eq);
    }
    goto clean;
  } else {
  }
  {
  descriptor.modname = "mlx5_ib";
  descriptor.function = "alloc_comp_eqs";
  descriptor.filename = "drivers/infiniband/hw/mlx5/main.c";
  descriptor.format = "%s:%s:%d:(pid %d): allocated completion EQN %d\n";
  descriptor.lineno = 192U;
  descriptor.flags = 0U;
  tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): allocated completion EQN %d\n",
                       (char *)(& dev->ib_dev.name), "alloc_comp_eqs", 192, tmp___0->pid,
                       (int )eq->eqn);
    }
  } else {
  }
  {
  eq->index = i;
  ldv_spin_lock_49(& table->lock);
  list_add_tail(& eq->list, & dev->eqs_list);
  ldv_spin_unlock_50(& table->lock);
  i = i + 1;
  }
  ldv_36610: ;
  if (i < ncomp_vec) {
    goto ldv_36609;
  } else {
  }
  dev->num_comp_vectors = ncomp_vec;
  return (0);
  clean:
  {
  ldv_spin_lock_49(& table->lock);
  __mptr = (struct list_head const *)dev->eqs_list.next;
  eq = (struct mlx5_eq *)(__mptr + 0xffffffffffffff88UL);
  __mptr___0 = (struct list_head const *)eq->list.next;
  n = (struct mlx5_eq *)(__mptr___0 + 0xffffffffffffff88UL);
  }
  goto ldv_36619;
  ldv_36618:
  {
  list_del(& eq->list);
  ldv_spin_unlock_50(& table->lock);
  tmp___3 = mlx5_destroy_unmap_eq(& dev->mdev, eq);
  }
  if (tmp___3 != 0) {
    {
    tmp___2 = get_current();
    printk("\f%s:%s:%d:(pid %d): failed to destroy EQ 0x%x\n", (char *)(& dev->ib_dev.name),
           "alloc_comp_eqs", 208, tmp___2->pid, (int )eq->eqn);
    }
  } else {
  }
  {
  kfree((void const *)eq);
  ldv_spin_lock_49(& table->lock);
  eq = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct mlx5_eq *)(__mptr___1 + 0xffffffffffffff88UL);
  }
  ldv_36619: ;
  if ((unsigned long )(& eq->list) != (unsigned long )(& dev->eqs_list)) {
    goto ldv_36618;
  } else {
  }
  {
  ldv_spin_unlock_50(& table->lock);
  }
  return (err);
}
}
static void free_comp_eqs(struct mlx5_ib_dev *dev )
{
  struct mlx5_eq_table *table ;
  struct mlx5_eq *eq ;
  struct mlx5_eq *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct task_struct *tmp ;
  int tmp___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  table = & dev->mdev.priv.eq_table;
  ldv_spin_lock_49(& table->lock);
  __mptr = (struct list_head const *)dev->eqs_list.next;
  eq = (struct mlx5_eq *)(__mptr + 0xffffffffffffff88UL);
  __mptr___0 = (struct list_head const *)eq->list.next;
  n = (struct mlx5_eq *)(__mptr___0 + 0xffffffffffffff88UL);
  }
  goto ldv_36635;
  ldv_36634:
  {
  list_del(& eq->list);
  ldv_spin_unlock_50(& table->lock);
  tmp___0 = mlx5_destroy_unmap_eq(& dev->mdev, eq);
  }
  if (tmp___0 != 0) {
    {
    tmp = get_current();
    printk("\f%s:%s:%d:(pid %d): failed to destroy EQ 0x%x\n", (char *)(& dev->ib_dev.name),
           "free_comp_eqs", 226, tmp->pid, (int )eq->eqn);
    }
  } else {
  }
  {
  kfree((void const *)eq);
  ldv_spin_lock_49(& table->lock);
  eq = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct mlx5_eq *)(__mptr___1 + 0xffffffffffffff88UL);
  }
  ldv_36635: ;
  if ((unsigned long )(& eq->list) != (unsigned long )(& dev->eqs_list)) {
    goto ldv_36634;
  } else {
  }
  {
  ldv_spin_unlock_50(& table->lock);
  }
  return;
}
}
static int mlx5_ib_query_device(struct ib_device *ibdev , struct ib_device_attr *props )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  int max_rq_sg ;
  int max_sq_sg ;
  u64 flags ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct mlx5_ib_dev *tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  __u32 tmp___6 ;
  __u16 tmp___7 ;
  int _min1 ;
  int _min2 ;
  {
  {
  tmp = to_mdev(ibdev);
  dev = tmp;
  in_mad = (struct ib_smp *)0;
  out_mad = (struct ib_smp *)0;
  err = -12;
  tmp___0 = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp___0;
  tmp___1 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___1;
  }
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  {
  init_query_mad(in_mad);
  in_mad->attr_id = 4352U;
  tmp___2 = to_mdev(ibdev);
  err = mlx5_MAD_IFC(tmp___2, 1, 1, 1, (struct ib_wc *)0, (struct ib_grh *)0, (void *)in_mad,
                     (void *)out_mad);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  {
  memset((void *)props, 0, 176UL);
  tmp___3 = fw_rev_maj(& dev->mdev);
  tmp___4 = fw_rev_min(& dev->mdev);
  tmp___5 = fw_rev_sub(& dev->mdev);
  props->fw_ver = (((unsigned long long )tmp___3 << 32) | (unsigned long long )((int )tmp___4 << 16)) | (unsigned long long )tmp___5;
  props->device_cap_flags = 7200;
  flags = dev->mdev.caps.flags;
  }
  if ((flags & 256ULL) != 0ULL) {
    props->device_cap_flags = props->device_cap_flags | 2;
  } else {
  }
  if ((flags & 512ULL) != 0ULL) {
    props->device_cap_flags = props->device_cap_flags | 4;
  } else {
  }
  if ((flags & 131072ULL) != 0ULL) {
    props->device_cap_flags = props->device_cap_flags | 16;
  } else {
  }
  props->device_cap_flags = props->device_cap_flags | 32768;
  if ((flags & 8ULL) != 0ULL) {
    props->device_cap_flags = props->device_cap_flags | 1048576;
  } else {
  }
  {
  props->device_cap_flags = props->device_cap_flags | 2097152;
  tmp___6 = __be32_to_cpup((__be32 const *)(& out_mad->data + 36U));
  props->vendor_id = tmp___6 & 16777215U;
  tmp___7 = __be16_to_cpup((__be16 const *)(& out_mad->data + 30U));
  props->vendor_part_id = (u32 )tmp___7;
  props->hw_ver = __be32_to_cpup((__be32 const *)(& out_mad->data + 32U));
  memcpy((void *)(& props->sys_image_guid), (void const *)(& out_mad->data + 4U),
         8UL);
  props->max_mr_size = 0xffffffffffffffffULL;
  props->page_size_cap = (u64 )dev->mdev.caps.min_page_sz;
  props->max_qp = 1 << (int )dev->mdev.caps.log_max_qp;
  props->max_qp_wr = dev->mdev.caps.max_wqes;
  max_rq_sg = (int )((unsigned long )dev->mdev.caps.max_rq_desc_sz / 16UL);
  max_sq_sg = (int )(((unsigned long )dev->mdev.caps.max_sq_desc_sz - 16UL) / 16UL);
  _min1 = max_rq_sg;
  _min2 = max_sq_sg;
  props->max_sge = _min1 < _min2 ? _min1 : _min2;
  props->max_cq = 1 << (int )dev->mdev.caps.log_max_cq;
  props->max_cqe = (int )(dev->mdev.caps.max_cqes - 1U);
  props->max_mr = 1 << (int )dev->mdev.caps.log_max_mkey;
  props->max_pd = 1 << (int )dev->mdev.caps.log_max_pd;
  props->max_qp_rd_atom = dev->mdev.caps.max_ra_req_qp;
  props->max_qp_init_rd_atom = dev->mdev.caps.max_ra_res_qp;
  props->max_res_rd_atom = props->max_qp_rd_atom * props->max_qp;
  props->max_srq = 1 << (int )dev->mdev.caps.log_max_srq;
  props->max_srq_wr = dev->mdev.caps.max_srq_wqes + -1;
  props->max_srq_sge = max_rq_sg + -1;
  props->max_fast_reg_page_list_len = 4294967295U;
  props->local_ca_ack_delay = dev->mdev.caps.local_ca_ack_delay;
  props->atomic_cap = 0;
  props->masked_atomic_cap = 0;
  props->max_pkeys = __be16_to_cpup((__be16 const *)(& out_mad->data + 28U));
  props->max_mcast_grp = 1 << (int )dev->mdev.caps.log_max_mcg;
  props->max_mcast_qp_attach = (int )dev->mdev.caps.max_qp_mcg;
  props->max_total_mcast_qp_attach = props->max_mcast_qp_attach * props->max_mcast_grp;
  props->max_map_per_fmr = 2147483647;
  }
  out:
  {
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  }
  return (err);
}
}
int mlx5_ib_query_port(struct ib_device *ibdev , u8 port , struct ib_port_attr *props )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int ext_active_speed ;
  int err ;
  struct task_struct *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  __u32 tmp___3 ;
  struct task_struct *tmp___4 ;
  struct mlx5_ib_dev *tmp___5 ;
  struct mlx5_ib_dev *tmp___6 ;
  __u16 tmp___7 ;
  __u16 tmp___8 ;
  __u32 tmp___9 ;
  {
  {
  tmp = to_mdev(ibdev);
  dev = tmp;
  in_mad = (struct ib_smp *)0;
  out_mad = (struct ib_smp *)0;
  err = -12;
  }
  if ((unsigned int )port == 0U || (int )port > dev->mdev.caps.num_ports) {
    {
    tmp___0 = get_current();
    printk("\f%s:%s:%d:(pid %d): invalid port number %d\n", (char *)(& dev->ib_dev.name),
           "mlx5_ib_query_port", 329, tmp___0->pid, (int )port);
    }
    return (-22);
  } else {
  }
  {
  tmp___1 = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp___1;
  tmp___2 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___2;
  }
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  {
  memset((void *)props, 0, 48UL);
  init_query_mad(in_mad);
  in_mad->attr_id = 5376U;
  tmp___3 = __fswab32((__u32 )port);
  in_mad->attr_mod = tmp___3;
  err = mlx5_MAD_IFC(dev, 1, 1, (int )port, (struct ib_wc *)0, (struct ib_grh *)0,
                     (void *)in_mad, (void *)out_mad);
  }
  if (err != 0) {
    {
    tmp___4 = get_current();
    printk("\f%s:%s:%d:(pid %d): err %d\n", (char *)(& dev->ib_dev.name), "mlx5_ib_query_port",
           346, tmp___4->pid, err);
    }
    goto out;
  } else {
  }
  {
  props->lid = __be16_to_cpup((__be16 const *)(& out_mad->data + 16U));
  props->lmc = (unsigned int )out_mad->data[34] & 7U;
  props->sm_lid = __be16_to_cpup((__be16 const *)(& out_mad->data + 18U));
  props->sm_sl = (unsigned int )out_mad->data[36] & 15U;
  props->state = (enum ib_port_state )((int )out_mad->data[32] & 15);
  props->phys_state = (u8 )((int )out_mad->data[33] >> 4);
  props->port_cap_flags = __be32_to_cpup((__be32 const *)(& out_mad->data + 20U));
  props->gid_tbl_len = (int )out_mad->data[50];
  tmp___5 = to_mdev(ibdev);
  props->max_msg_sz = (u32 )(1 << tmp___5->mdev.caps.log_max_msg);
  tmp___6 = to_mdev(ibdev);
  props->pkey_tbl_len = (u16 )tmp___6->mdev.caps.port[(int )port + -1].pkey_table_len;
  tmp___7 = __be16_to_cpup((__be16 const *)(& out_mad->data + 46U));
  props->bad_pkey_cntr = (u32 )tmp___7;
  tmp___8 = __be16_to_cpup((__be16 const *)(& out_mad->data + 48U));
  props->qkey_viol_cntr = (u32 )tmp___8;
  props->active_width = (unsigned int )out_mad->data[31] & 15U;
  props->active_speed = (u8 )((int )out_mad->data[35] >> 4);
  props->max_mtu = (enum ib_mtu )((int )out_mad->data[41] & 15);
  props->active_mtu = (enum ib_mtu )((int )out_mad->data[36] >> 4);
  props->subnet_timeout = (unsigned int )out_mad->data[51] & 31U;
  props->max_vl_num = (u8 )((int )out_mad->data[37] >> 4);
  props->init_type_reply = (u8 )((int )out_mad->data[41] >> 4);
  }
  if ((props->port_cap_flags & 16384U) != 0U) {
    ext_active_speed = (int )out_mad->data[62] >> 4;
    {
    if (ext_active_speed == 1) {
      goto case_1;
    } else {
    }
    if (ext_active_speed == 2) {
      goto case_2;
    } else {
    }
    goto switch_break;
    case_1:
    props->active_speed = 16U;
    goto ldv_36665;
    case_2:
    props->active_speed = 32U;
    goto ldv_36665;
    switch_break: ;
    }
    ldv_36665: ;
  } else {
  }
  if ((unsigned int )props->active_speed == 4U) {
    if ((int )dev->mdev.caps.ext_port_cap[(int )port + -1] & 1) {
      {
      init_query_mad(in_mad);
      in_mad->attr_id = 37119U;
      tmp___9 = __fswab32((__u32 )port);
      in_mad->attr_mod = tmp___9;
      err = mlx5_MAD_IFC(dev, 1, 1, (int )port, (struct ib_wc *)0, (struct ib_grh *)0,
                         (void *)in_mad, (void *)out_mad);
      }
      if (err != 0) {
        goto out;
      } else {
      }
      if ((int )out_mad->data[15] & 1) {
        props->active_speed = 8U;
      } else {
      }
    } else {
    }
  } else {
  }
  out:
  {
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  }
  return (err);
}
}
static int mlx5_ib_query_gid(struct ib_device *ibdev , u8 port , int index , union ib_gid *gid )
{
  struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  struct mlx5_ib_dev *tmp___2 ;
  __u32 tmp___3 ;
  struct mlx5_ib_dev *tmp___4 ;
  {
  {
  in_mad = (struct ib_smp *)0;
  out_mad = (struct ib_smp *)0;
  err = -12;
  tmp = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp;
  tmp___0 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___0;
  }
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  {
  init_query_mad(in_mad);
  in_mad->attr_id = 5376U;
  tmp___1 = __fswab32((__u32 )port);
  in_mad->attr_mod = tmp___1;
  tmp___2 = to_mdev(ibdev);
  err = mlx5_MAD_IFC(tmp___2, 1, 1, (int )port, (struct ib_wc *)0, (struct ib_grh *)0,
                     (void *)in_mad, (void *)out_mad);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  {
  memcpy((void *)(& gid->raw), (void const *)(& out_mad->data + 8U), 8UL);
  init_query_mad(in_mad);
  in_mad->attr_id = 5120U;
  tmp___3 = __fswab32((__u32 )(index / 8));
  in_mad->attr_mod = tmp___3;
  tmp___4 = to_mdev(ibdev);
  err = mlx5_MAD_IFC(tmp___4, 1, 1, (int )port, (struct ib_wc *)0, (struct ib_grh *)0,
                     (void *)in_mad, (void *)out_mad);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  {
  memcpy((void *)(& gid->raw + 8U), (void const *)(& out_mad->data + (unsigned long )((index % 8) * 8)),
         8UL);
  }
  out:
  {
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  }
  return (err);
}
}
static int mlx5_ib_query_pkey(struct ib_device *ibdev , u8 port , u16 index , u16 *pkey )
{
  struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  struct mlx5_ib_dev *tmp___2 ;
  __u16 tmp___3 ;
  {
  {
  in_mad = (struct ib_smp *)0;
  out_mad = (struct ib_smp *)0;
  err = -12;
  tmp = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp;
  tmp___0 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___0;
  }
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  {
  init_query_mad(in_mad);
  in_mad->attr_id = 5632U;
  tmp___1 = __fswab32((unsigned int )index / 32U);
  in_mad->attr_mod = tmp___1;
  tmp___2 = to_mdev(ibdev);
  err = mlx5_MAD_IFC(tmp___2, 1, 1, (int )port, (struct ib_wc *)0, (struct ib_grh *)0,
                     (void *)in_mad, (void *)out_mad);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  {
  tmp___3 = __fswab16((int )*((__be16 *)(& out_mad->data + ((unsigned long )index & 31UL))));
  *pkey = tmp___3;
  }
  out:
  {
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  }
  return (err);
}
}
static int mlx5_ib_modify_device(struct ib_device *ibdev , int mask , struct ib_device_modify *props )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_reg_node_desc in ;
  struct mlx5_reg_node_desc out ;
  int err ;
  {
  {
  tmp = to_mdev(ibdev);
  dev = tmp;
  }
  if ((mask & -3) != 0) {
    return (-95);
  } else {
  }
  if ((mask & 2) == 0) {
    return (0);
  } else {
  }
  {
  memcpy((void *)(& in), (void const *)(& props->node_desc), 64UL);
  err = mlx5_core_access_reg(& dev->mdev, (void *)(& in), 64, (void *)(& out), 64,
                             24577, 0, 1);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  memcpy((void *)(& ibdev->node_desc), (void const *)(& props->node_desc), 64UL);
  }
  return (err);
}
}
static int mlx5_ib_modify_port(struct ib_device *ibdev , u8 port , int mask , struct ib_port_modify *props )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct ib_port_attr attr ;
  u32 tmp___0 ;
  int err ;
  {
  {
  tmp = to_mdev(ibdev);
  dev = tmp;
  ldv_mutex_lock_61(& dev->cap_mask_mutex);
  err = mlx5_ib_query_port(ibdev, (int )port, & attr);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  {
  tmp___0 = (attr.port_cap_flags | props->set_port_cap_mask) & ~ props->clr_port_cap_mask;
  err = mlx5_set_port_caps(& dev->mdev, (int )port, tmp___0);
  }
  out:
  {
  ldv_mutex_unlock_62(& dev->cap_mask_mutex);
  }
  return (err);
}
}
static struct ib_ucontext *mlx5_ib_alloc_ucontext(struct ib_device *ibdev , struct ib_udata *udata )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_alloc_ucontext_req_v2 req ;
  struct mlx5_ib_alloc_ucontext_resp resp ;
  struct mlx5_ib_ucontext *context ;
  struct mlx5_uuar_info *uuari ;
  struct mlx5_uar *uars ;
  int gross_uuars ;
  int num_uars ;
  int ver ;
  int uuarn ;
  int err ;
  int i ;
  int reqlen ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  struct lock_class_key __key ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  struct lock_class_key __key___0 ;
  void *tmp___12 ;
  {
  {
  tmp = to_mdev(ibdev);
  dev = tmp;
  }
  if (! dev->ib_active) {
    {
    tmp___0 = ERR_PTR(-11L);
    }
    return ((struct ib_ucontext *)tmp___0);
  } else {
  }
  {
  memset((void *)(& req), 0, 16UL);
  reqlen = (int )((unsigned int )udata->inlen - 8U);
  }
  if (reqlen == 8) {
    ver = 0;
  } else
  if (reqlen == 16) {
    ver = 2;
  } else {
    {
    tmp___1 = ERR_PTR(-22L);
    }
    return ((struct ib_ucontext *)tmp___1);
  }
  {
  err = ib_copy_from_udata((void *)(& req), udata, (size_t )reqlen);
  }
  if (err != 0) {
    {
    tmp___2 = ERR_PTR((long )err);
    }
    return ((struct ib_ucontext *)tmp___2);
  } else {
  }
  if (req.flags != 0U || req.reserved != 0U) {
    {
    tmp___3 = ERR_PTR(-22L);
    }
    return ((struct ib_ucontext *)tmp___3);
  } else {
  }
  if (req.total_num_uuars > 512U) {
    {
    tmp___4 = ERR_PTR(-12L);
    }
    return ((struct ib_ucontext *)tmp___4);
  } else {
  }
  if (req.total_num_uuars == 0U) {
    {
    tmp___5 = ERR_PTR(-22L);
    }
    return ((struct ib_ucontext *)tmp___5);
  } else {
  }
  req.total_num_uuars = (req.total_num_uuars + 1U) & 4294967294U;
  if (req.num_low_latency_uuars > req.total_num_uuars - 1U) {
    {
    tmp___6 = ERR_PTR(-22L);
    }
    return ((struct ib_ucontext *)tmp___6);
  } else {
  }
  {
  num_uars = (int )(req.total_num_uuars / 2U);
  gross_uuars = num_uars * 4;
  resp.qp_tab_size = (__u32 )(1 << (int )dev->mdev.caps.log_max_qp);
  resp.bf_reg_size = (__u32 )dev->mdev.caps.bf_reg_size;
  resp.cache_line_size = 64U;
  resp.max_sq_desc_sz = (__u16 )dev->mdev.caps.max_sq_desc_sz;
  resp.max_rq_desc_sz = (__u16 )dev->mdev.caps.max_rq_desc_sz;
  resp.max_send_wqebb = (__u32 )dev->mdev.caps.max_wqes;
  resp.max_recv_wr = (__u32 )dev->mdev.caps.max_wqes;
  resp.max_srq_recv_wr = (__u32 )dev->mdev.caps.max_srq_wqes;
  tmp___7 = kzalloc(560UL, 208U);
  context = (struct mlx5_ib_ucontext *)tmp___7;
  }
  if ((unsigned long )context == (unsigned long )((struct mlx5_ib_ucontext *)0)) {
    {
    tmp___8 = ERR_PTR(-12L);
    }
    return ((struct ib_ucontext *)tmp___8);
  } else {
  }
  {
  uuari = & context->uuari;
  __mutex_init(& uuari->lock, "&uuari->lock", & __key);
  tmp___9 = kcalloc((size_t )num_uars, 48UL, 208U);
  uars = (struct mlx5_uar *)tmp___9;
  }
  if ((unsigned long )uars == (unsigned long )((struct mlx5_uar *)0)) {
    err = -12;
    goto out_ctx;
  } else {
  }
  {
  tmp___10 = kcalloc(((unsigned long )gross_uuars + 63UL) / 64UL, 8UL, 208U);
  uuari->bitmap = (unsigned long *)tmp___10;
  }
  if ((unsigned long )uuari->bitmap == (unsigned long )((unsigned long *)0UL)) {
    err = -12;
    goto out_uar_ctx;
  } else {
  }
  i = 0;
  goto ldv_36730;
  ldv_36729:
  uuarn = i & 3;
  if ((unsigned int )uuarn - 2U <= 1U) {
    {
    set_bit((long )i, (unsigned long volatile *)uuari->bitmap);
    }
  } else {
  }
  i = i + 1;
  ldv_36730: ;
  if (i < gross_uuars) {
    goto ldv_36729;
  } else {
  }
  {
  tmp___11 = kcalloc((size_t )gross_uuars, 4UL, 208U);
  uuari->count = (unsigned int *)tmp___11;
  }
  if ((unsigned long )uuari->count == (unsigned long )((unsigned int *)0U)) {
    err = -12;
    goto out_bitmap;
  } else {
  }
  i = 0;
  goto ldv_36735;
  ldv_36734:
  {
  err = mlx5_cmd_alloc_uar(& dev->mdev, & (uars + (unsigned long )i)->index);
  }
  if (err != 0) {
    goto out_count;
  } else {
  }
  i = i + 1;
  ldv_36735: ;
  if (i < num_uars) {
    goto ldv_36734;
  } else {
  }
  {
  INIT_LIST_HEAD(& context->db_page_list);
  __mutex_init(& context->db_page_mutex, "&context->db_page_mutex", & __key___0);
  resp.tot_uuars = req.total_num_uuars;
  resp.num_ports = (__u16 )dev->mdev.caps.num_ports;
  err = ib_copy_to_udata(udata, (void *)(& resp), 34UL);
  }
  if (err != 0) {
    goto out_uars;
  } else {
  }
  uuari->ver = (u32 )ver;
  uuari->num_low_latency_uuars = (int )req.num_low_latency_uuars;
  uuari->uars = uars;
  uuari->num_uars = num_uars;
  return (& context->ibucontext);
  out_uars:
  i = i - 1;
  goto ldv_36740;
  ldv_36739:
  {
  mlx5_cmd_free_uar(& dev->mdev, (uars + (unsigned long )i)->index);
  i = i - 1;
  }
  ldv_36740: ;
  if (i >= 0) {
    goto ldv_36739;
  } else {
  }
  out_count:
  {
  kfree((void const *)uuari->count);
  }
  out_bitmap:
  {
  kfree((void const *)uuari->bitmap);
  }
  out_uar_ctx:
  {
  kfree((void const *)uars);
  }
  out_ctx:
  {
  kfree((void const *)context);
  tmp___12 = ERR_PTR((long )err);
  }
  return ((struct ib_ucontext *)tmp___12);
}
}
static int mlx5_ib_dealloc_ucontext(struct ib_ucontext *ibcontext )
{
  struct mlx5_ib_ucontext *context ;
  struct mlx5_ib_ucontext *tmp ;
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp___0 ;
  struct mlx5_uuar_info *uuari ;
  int i ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = to_mucontext(ibcontext);
  context = tmp;
  tmp___0 = to_mdev(ibcontext->device);
  dev = tmp___0;
  uuari = & context->uuari;
  i = 0;
  }
  goto ldv_36751;
  ldv_36750:
  {
  tmp___2 = mlx5_cmd_free_uar(& dev->mdev, (uuari->uars + (unsigned long )i)->index);
  }
  if (tmp___2 != 0) {
    {
    tmp___1 = get_current();
    printk("\f%s:%s:%d:(pid %d): failed to free UAR 0x%x\n", (char *)(& dev->ib_dev.name),
           "mlx5_ib_dealloc_ucontext", 674, tmp___1->pid, (uuari->uars + (unsigned long )i)->index);
    }
  } else {
  }
  i = i + 1;
  ldv_36751: ;
  if (i < uuari->num_uars) {
    goto ldv_36750;
  } else {
  }
  {
  kfree((void const *)uuari->count);
  kfree((void const *)uuari->bitmap);
  kfree((void const *)uuari->uars);
  kfree((void const *)context);
  }
  return (0);
}
}
static phys_addr_t uar_index2pfn(struct mlx5_ib_dev *dev , int index )
{
  {
  return (((dev->mdev.pdev)->resource[0].start >> 12) + (resource_size_t )index);
}
}
static int get_command(unsigned long offset )
{
  {
  return ((int )(offset >> 8) & 255);
}
}
static int get_arg(unsigned long offset )
{
  {
  return ((int )offset & 255);
}
}
static int get_index(unsigned long offset )
{
  int tmp ;
  {
  {
  tmp = get_arg(offset);
  }
  return (tmp);
}
}
static int mlx5_ib_mmap(struct ib_ucontext *ibcontext , struct vm_area_struct *vma )
{
  struct mlx5_ib_ucontext *context ;
  struct mlx5_ib_ucontext *tmp ;
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp___0 ;
  struct mlx5_uuar_info *uuari ;
  unsigned long command ;
  unsigned long idx ;
  phys_addr_t pfn ;
  int tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___6 ;
  long tmp___7 ;
  {
  {
  tmp = to_mucontext(ibcontext);
  context = tmp;
  tmp___0 = to_mdev(ibcontext->device);
  dev = tmp___0;
  uuari = & context->uuari;
  tmp___1 = get_command(vma->vm_pgoff);
  command = (unsigned long )tmp___1;
  }
  {
  if (command == 0UL) {
    goto case_0;
  } else {
  }
  if (command == 1UL) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  if (vma->vm_end - vma->vm_start != 4096UL) {
    return (-22);
  } else {
  }
  {
  tmp___2 = get_index(vma->vm_pgoff);
  idx = (unsigned long )tmp___2;
  pfn = uar_index2pfn(dev, (int )(uuari->uars + idx)->index);
  descriptor.modname = "mlx5_ib";
  descriptor.function = "mlx5_ib_mmap";
  descriptor.filename = "drivers/infiniband/hw/mlx5/main.c";
  descriptor.format = "%s:%s:%d:(pid %d): uar idx 0x%lx, pfn 0x%llx\n";
  descriptor.lineno = 723U;
  descriptor.flags = 0U;
  tmp___4 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    tmp___3 = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): uar idx 0x%lx, pfn 0x%llx\n",
                       (char *)(& dev->ib_dev.name), "mlx5_ib_mmap", 723, tmp___3->pid,
                       idx, pfn);
    }
  } else {
  }
  if (idx >= (unsigned long )uuari->num_uars) {
    return (-22);
  } else {
  }
  {
  vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
  tmp___5 = remap_pfn_range(vma, vma->vm_start, (unsigned long )pfn, 4096UL, vma->vm_page_prot);
  }
  if (tmp___5 != 0) {
    return (-11);
  } else {
  }
  {
  descriptor___0.modname = "mlx5_ib";
  descriptor___0.function = "mlx5_ib_mmap";
  descriptor___0.filename = "drivers/infiniband/hw/mlx5/main.c";
  descriptor___0.format = "%s:%s:%d:(pid %d): mapped WC at 0x%lx, PA 0x%llx\n";
  descriptor___0.lineno = 735U;
  descriptor___0.flags = 0U;
  tmp___7 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___6 = get_current();
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): mapped WC at 0x%lx, PA 0x%llx\n",
                       (char *)(& dev->ib_dev.name), "mlx5_ib_mmap", 735, tmp___6->pid,
                       vma->vm_start, pfn << 12);
    }
  } else {
  }
  goto ldv_36780;
  case_1: ;
  return (-38);
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_36780: ;
  return (0);
}
}
static int alloc_pa_mkey(struct mlx5_ib_dev *dev , u32 *key , u32 pdn )
{
  struct mlx5_create_mkey_mbox_in *in ;
  struct mlx5_mkey_seg *seg ;
  struct mlx5_core_mr mr ;
  int err ;
  void *tmp ;
  __u32 tmp___0 ;
  struct task_struct *tmp___1 ;
  {
  {
  tmp = kzalloc(272UL, 208U);
  in = (struct mlx5_create_mkey_mbox_in *)tmp;
  }
  if ((unsigned long )in == (unsigned long )((struct mlx5_create_mkey_mbox_in *)0)) {
    return (-12);
  } else {
  }
  {
  seg = & in->seg;
  seg->flags = 4U;
  tmp___0 = __fswab32(pdn | 2147483648U);
  seg->flags_pd = tmp___0;
  seg->qpn_mkey7_0 = 16777215U;
  seg->start_addr = 0ULL;
  err = mlx5_core_create_mkey(& dev->mdev, & mr, in, 272, (void (*)(int , void * ))0,
                              (void *)0, (struct mlx5_create_mkey_mbox_out *)0);
  }
  if (err != 0) {
    {
    tmp___1 = get_current();
    printk("\f%s:%s:%d:(pid %d): failed to create mkey, %d\n", (char *)(& dev->ib_dev.name),
           "alloc_pa_mkey", 768, tmp___1->pid, err);
    }
    goto err_in;
  } else {
  }
  {
  kfree((void const *)in);
  *key = mr.key;
  }
  return (0);
  err_in:
  {
  kfree((void const *)in);
  }
  return (err);
}
}
static void free_pa_mkey(struct mlx5_ib_dev *dev , u32 key )
{
  struct mlx5_core_mr mr ;
  int err ;
  struct task_struct *tmp ;
  {
  {
  memset((void *)(& mr), 0, 32UL);
  mr.key = key;
  err = mlx5_core_destroy_mkey(& dev->mdev, & mr);
  }
  if (err != 0) {
    {
    tmp = get_current();
    printk("\f%s:%s:%d:(pid %d): failed to destroy mkey 0x%x\n", (char *)(& dev->ib_dev.name),
           "free_pa_mkey", 792, tmp->pid, key);
    }
  } else {
  }
  return;
}
}
static struct ib_pd *mlx5_ib_alloc_pd(struct ib_device *ibdev , struct ib_ucontext *context ,
                                      struct ib_udata *udata )
{
  struct mlx5_ib_alloc_pd_resp resp ;
  struct mlx5_ib_pd *pd ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  struct mlx5_ib_dev *tmp___1 ;
  void *tmp___2 ;
  struct mlx5_ib_dev *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  struct mlx5_ib_dev *tmp___6 ;
  struct mlx5_ib_dev *tmp___7 ;
  void *tmp___8 ;
  {
  {
  tmp = kmalloc(32UL, 208U);
  pd = (struct mlx5_ib_pd *)tmp;
  }
  if ((unsigned long )pd == (unsigned long )((struct mlx5_ib_pd *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct ib_pd *)tmp___0);
  } else {
  }
  {
  tmp___1 = to_mdev(ibdev);
  err = mlx5_core_alloc_pd(& tmp___1->mdev, & pd->pdn);
  }
  if (err != 0) {
    {
    kfree((void const *)pd);
    tmp___2 = ERR_PTR((long )err);
    }
    return ((struct ib_pd *)tmp___2);
  } else {
  }
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    {
    resp.pdn = pd->pdn;
    tmp___5 = ib_copy_to_udata(udata, (void *)(& resp), 4UL);
    }
    if (tmp___5 != 0) {
      {
      tmp___3 = to_mdev(ibdev);
      mlx5_core_dealloc_pd(& tmp___3->mdev, pd->pdn);
      kfree((void const *)pd);
      tmp___4 = ERR_PTR(-14L);
      }
      return ((struct ib_pd *)tmp___4);
    } else {
    }
  } else {
    {
    tmp___6 = to_mdev(ibdev);
    err = alloc_pa_mkey(tmp___6, & pd->pa_lkey, pd->pdn);
    }
    if (err != 0) {
      {
      tmp___7 = to_mdev(ibdev);
      mlx5_core_dealloc_pd(& tmp___7->mdev, pd->pdn);
      kfree((void const *)pd);
      tmp___8 = ERR_PTR((long )err);
      }
      return ((struct ib_pd *)tmp___8);
    } else {
    }
  }
  return (& pd->ibpd);
}
}
static int mlx5_ib_dealloc_pd(struct ib_pd *pd )
{
  struct mlx5_ib_dev *mdev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_pd *mpd ;
  struct mlx5_ib_pd *tmp___0 ;
  {
  {
  tmp = to_mdev(pd->device);
  mdev = tmp;
  tmp___0 = to_mpd(pd);
  mpd = tmp___0;
  }
  if ((unsigned long )pd->uobject == (unsigned long )((struct ib_uobject *)0)) {
    {
    free_pa_mkey(mdev, mpd->pa_lkey);
    }
  } else {
  }
  {
  mlx5_core_dealloc_pd(& mdev->mdev, mpd->pdn);
  kfree((void const *)mpd);
  }
  return (0);
}
}
static int mlx5_ib_mcg_attach(struct ib_qp *ibqp , union ib_gid *gid , u16 lid )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  int err ;
  struct task_struct *tmp___0 ;
  {
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  err = mlx5_core_attach_mcg(& dev->mdev, gid, ibqp->qp_num);
  }
  if (err != 0) {
    {
    tmp___0 = get_current();
    printk("\f%s:%s:%d:(pid %d): failed attaching QPN 0x%x, MGID %pI6\n", (char *)(& dev->ib_dev.name),
           "mlx5_ib_mcg_attach", 854, tmp___0->pid, ibqp->qp_num, (u8 *)(& gid->raw));
    }
  } else {
  }
  return (err);
}
}
static int mlx5_ib_mcg_detach(struct ib_qp *ibqp , union ib_gid *gid , u16 lid )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  int err ;
  struct task_struct *tmp___0 ;
  {
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  err = mlx5_core_detach_mcg(& dev->mdev, gid, ibqp->qp_num);
  }
  if (err != 0) {
    {
    tmp___0 = get_current();
    printk("\f%s:%s:%d:(pid %d): failed detaching QPN 0x%x, MGID %pI6\n", (char *)(& dev->ib_dev.name),
           "mlx5_ib_mcg_detach", 867, tmp___0->pid, ibqp->qp_num, (u8 *)(& gid->raw));
    }
  } else {
  }
  return (err);
}
}
static int init_node_data(struct mlx5_ib_dev *dev )
{
  struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  {
  {
  in_mad = (struct ib_smp *)0;
  out_mad = (struct ib_smp *)0;
  err = -12;
  tmp = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp;
  tmp___0 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___0;
  }
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  {
  init_query_mad(in_mad);
  in_mad->attr_id = 4096U;
  err = mlx5_MAD_IFC(dev, 1, 1, 1, (struct ib_wc *)0, (struct ib_grh *)0, (void *)in_mad,
                     (void *)out_mad);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  {
  memcpy((void *)(& dev->ib_dev.node_desc), (void const *)(& out_mad->data), 64UL);
  in_mad->attr_id = 4352U;
  err = mlx5_MAD_IFC(dev, 1, 1, 1, (struct ib_wc *)0, (struct ib_grh *)0, (void *)in_mad,
                     (void *)out_mad);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  {
  tmp___1 = __be32_to_cpup((__be32 const *)(& out_mad->data + 32U));
  dev->mdev.rev_id = (u8 )tmp___1;
  memcpy((void *)(& dev->ib_dev.node_guid), (void const *)(& out_mad->data + 12U),
         8UL);
  }
  out:
  {
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  }
  return (err);
}
}
static ssize_t show_fw_pages(struct device *device , struct device_attribute *attr ,
                             char *buf )
{
  struct mlx5_ib_dev *dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)device;
  dev = (struct mlx5_ib_dev *)(__mptr + 0xfffffffffffffc70UL);
  tmp = sprintf(buf, "%d\n", dev->mdev.priv.fw_pages);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t show_reg_pages(struct device *device , struct device_attribute *attr ,
                              char *buf )
{
  struct mlx5_ib_dev *dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)device;
  dev = (struct mlx5_ib_dev *)(__mptr + 0xfffffffffffffc70UL);
  tmp = sprintf(buf, "%d\n", dev->mdev.priv.reg_pages);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t show_hca(struct device *device , struct device_attribute *attr , char *buf )
{
  struct mlx5_ib_dev *dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)device;
  dev = (struct mlx5_ib_dev *)(__mptr + 0xfffffffffffffc70UL);
  tmp = sprintf(buf, "MT%d\n", (int )(dev->mdev.pdev)->device);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t show_fw_ver(struct device *device , struct device_attribute *attr ,
                           char *buf )
{
  struct mlx5_ib_dev *dev ;
  struct device const *__mptr ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  int tmp___2 ;
  {
  {
  __mptr = (struct device const *)device;
  dev = (struct mlx5_ib_dev *)(__mptr + 0xfffffffffffffc70UL);
  tmp = fw_rev_sub(& dev->mdev);
  tmp___0 = fw_rev_min(& dev->mdev);
  tmp___1 = fw_rev_maj(& dev->mdev);
  tmp___2 = sprintf(buf, "%d.%d.%d\n", (int )tmp___1, (int )tmp___0, (int )tmp);
  }
  return ((ssize_t )tmp___2);
}
}
static ssize_t show_rev(struct device *device , struct device_attribute *attr , char *buf )
{
  struct mlx5_ib_dev *dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)device;
  dev = (struct mlx5_ib_dev *)(__mptr + 0xfffffffffffffc70UL);
  tmp = sprintf(buf, "%x\n", (int )dev->mdev.rev_id);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t show_board(struct device *device , struct device_attribute *attr ,
                          char *buf )
{
  struct mlx5_ib_dev *dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)device;
  dev = (struct mlx5_ib_dev *)(__mptr + 0xfffffffffffffc70UL);
  tmp = sprintf(buf, "%.*s\n", 64, (char *)(& dev->mdev.board_id));
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_hw_rev = {{"hw_rev", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & show_rev,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_fw_ver = {{"fw_ver", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & show_fw_ver,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_hca_type = {{"hca_type", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_hca, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0};
static struct device_attribute dev_attr_board_id = {{"board_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_board, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0};
static struct device_attribute dev_attr_fw_pages = {{"fw_pages", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_fw_pages, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                  size_t ))0};
static struct device_attribute dev_attr_reg_pages = {{"reg_pages", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_reg_pages, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                   size_t ))0};
static struct device_attribute *mlx5_class_attributes[6U] = { & dev_attr_hw_rev, & dev_attr_fw_ver, & dev_attr_hca_type, & dev_attr_board_id,
        & dev_attr_fw_pages, & dev_attr_reg_pages};
static void mlx5_ib_event(struct mlx5_core_dev *dev , enum mlx5_dev_event event ,
                          void *data )
{
  struct mlx5_ib_dev *ibdev ;
  struct mlx5_core_dev const *__mptr ;
  struct ib_event ibev ;
  u8 port ;
  struct task_struct *tmp ;
  {
  __mptr = (struct mlx5_core_dev const *)dev;
  ibdev = (struct mlx5_ib_dev *)(__mptr + 0xfffffffffffff688UL);
  port = 0U;
  {
  if ((unsigned int )event == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )event == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )event == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )event == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )event == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )event == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )event == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )event == 7U) {
    goto case_7;
  } else {
  }
  goto switch_break;
  case_0:
  ibdev->ib_active = 0;
  ibev.event = 8;
  goto ldv_36903;
  case_1:
  ibev.event = 9;
  port = *((u8 *)data);
  goto ldv_36903;
  case_2:
  ibev.event = 10;
  port = *((u8 *)data);
  goto ldv_36903;
  case_3: ;
  return;
  case_4:
  ibev.event = 11;
  port = *((u8 *)data);
  goto ldv_36903;
  case_5:
  ibev.event = 12;
  port = *((u8 *)data);
  goto ldv_36903;
  case_6:
  ibev.event = 18;
  port = *((u8 *)data);
  goto ldv_36903;
  case_7:
  ibev.event = 17;
  port = *((u8 *)data);
  goto ldv_36903;
  switch_break: ;
  }
  ldv_36903:
  ibev.device = & ibdev->ib_dev;
  ibev.element.port_num = port;
  if ((unsigned int )port == 0U || (int )port > ibdev->num_ports) {
    {
    tmp = get_current();
    printk("\f%s:%s:%d:(pid %d): warning: event on port %d\n", (char *)(& ibdev->ib_dev.name),
           "mlx5_ib_event", 1027, tmp->pid, (int )port);
    }
    return;
  } else {
  }
  if ((int )ibdev->ib_active) {
    {
    ib_dispatch_event(& ibev);
    }
  } else {
  }
  return;
}
}
static void get_ext_port_caps(struct mlx5_ib_dev *dev )
{
  int port ;
  {
  port = 1;
  goto ldv_36917;
  ldv_36916:
  {
  mlx5_query_ext_port_caps(dev, (int )((u8 )port));
  port = port + 1;
  }
  ldv_36917: ;
  if (port <= dev->mdev.caps.num_ports) {
    goto ldv_36916;
  } else {
  }
  return;
}
}
static int get_port_caps(struct mlx5_ib_dev *dev )
{
  struct ib_device_attr *dprops ;
  struct ib_port_attr *pprops ;
  int err ;
  int port ;
  void *tmp ;
  void *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  {
  {
  dprops = (struct ib_device_attr *)0;
  pprops = (struct ib_port_attr *)0;
  err = 0;
  tmp = kmalloc(48UL, 208U);
  pprops = (struct ib_port_attr *)tmp;
  }
  if ((unsigned long )pprops == (unsigned long )((struct ib_port_attr *)0)) {
    goto out;
  } else {
  }
  {
  tmp___0 = kmalloc(176UL, 208U);
  dprops = (struct ib_device_attr *)tmp___0;
  }
  if ((unsigned long )dprops == (unsigned long )((struct ib_device_attr *)0)) {
    goto out;
  } else {
  }
  {
  err = mlx5_ib_query_device(& dev->ib_dev, dprops);
  }
  if (err != 0) {
    {
    tmp___1 = get_current();
    printk("\f%s:%s:%d:(pid %d): query_device failed %d\n", (char *)(& dev->ib_dev.name),
           "get_port_caps", 1060, tmp___1->pid, err);
    }
    goto out;
  } else {
  }
  port = 1;
  goto ldv_36931;
  ldv_36930:
  {
  err = mlx5_ib_query_port(& dev->ib_dev, (int )((u8 )port), pprops);
  }
  if (err != 0) {
    {
    tmp___2 = get_current();
    printk("\f%s:%s:%d:(pid %d): query_port %d failed %d\n", (char *)(& dev->ib_dev.name),
           "get_port_caps", 1067, tmp___2->pid, port, err);
    }
    goto ldv_36928;
  } else {
  }
  {
  dev->mdev.caps.port[port + -1].pkey_table_len = (int )dprops->max_pkeys;
  dev->mdev.caps.port[port + -1].gid_table_len = pprops->gid_tbl_len;
  descriptor.modname = "mlx5_ib";
  descriptor.function = "get_port_caps";
  descriptor.filename = "drivers/infiniband/hw/mlx5/main.c";
  descriptor.format = "%s:%s:%d:(pid %d): pkey_table_len %d, gid_table_len %d\n";
  descriptor.lineno = 1073U;
  descriptor.flags = 0U;
  tmp___4 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    tmp___3 = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): pkey_table_len %d, gid_table_len %d\n",
                       (char *)(& dev->ib_dev.name), "get_port_caps", 1073, tmp___3->pid,
                       (int )dprops->max_pkeys, pprops->gid_tbl_len);
    }
  } else {
  }
  port = port + 1;
  ldv_36931: ;
  if (port <= dev->mdev.caps.num_ports) {
    goto ldv_36930;
  } else {
  }
  ldv_36928: ;
  out:
  {
  kfree((void const *)pprops);
  kfree((void const *)dprops);
  }
  return (err);
}
}
static void destroy_umrc_res(struct mlx5_ib_dev *dev )
{
  int err ;
  struct task_struct *tmp ;
  {
  {
  err = mlx5_mr_cache_cleanup(dev);
  }
  if (err != 0) {
    {
    tmp = get_current();
    printk("\f%s:%s:%d:(pid %d): mr cache cleanup failed\n", (char *)(& dev->ib_dev.name),
           "destroy_umrc_res", 1089, tmp->pid);
    }
  } else {
  }
  {
  mlx5_ib_destroy_qp(dev->umrc.qp);
  ib_destroy_cq(dev->umrc.cq);
  ib_dereg_mr(dev->umrc.mr);
  ib_dealloc_pd(dev->umrc.pd);
  }
  return;
}
}
static int create_umr_res(struct mlx5_ib_dev *dev )
{
  struct ib_qp_init_attr *init_attr ;
  struct ib_qp_attr *attr ;
  struct ib_pd *pd ;
  struct ib_cq *cq ;
  struct ib_qp *qp ;
  struct ib_mr *mr ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___3 ;
  struct task_struct *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___4 ;
  struct task_struct *tmp___19 ;
  long tmp___20 ;
  struct _ddebug descriptor___5 ;
  struct task_struct *tmp___21 ;
  long tmp___22 ;
  struct task_struct *tmp___23 ;
  {
  {
  init_attr = (struct ib_qp_init_attr *)0;
  attr = (struct ib_qp_attr *)0;
  tmp = kzalloc(168UL, 208U);
  attr = (struct ib_qp_attr *)tmp;
  tmp___0 = kzalloc(88UL, 208U);
  init_attr = (struct ib_qp_init_attr *)tmp___0;
  }
  if ((unsigned long )attr == (unsigned long )((struct ib_qp_attr *)0) || (unsigned long )init_attr == (unsigned long )((struct ib_qp_init_attr *)0)) {
    ret = -12;
    goto error_0;
  } else {
  }
  {
  pd = ib_alloc_pd(& dev->ib_dev);
  tmp___4 = IS_ERR((void const *)pd);
  }
  if (tmp___4 != 0L) {
    {
    descriptor.modname = "mlx5_ib";
    descriptor.function = "create_umr_res";
    descriptor.filename = "drivers/infiniband/hw/mlx5/main.c";
    descriptor.format = "%s:%s:%d:(pid %d): Couldn\'t create PD for sync UMR QP\n";
    descriptor.lineno = 1120U;
    descriptor.flags = 0U;
    tmp___2 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___1 = get_current();
      __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): Couldn\'t create PD for sync UMR QP\n",
                         (char *)(& dev->ib_dev.name), "create_umr_res", 1120, tmp___1->pid);
      }
    } else {
    }
    {
    tmp___3 = PTR_ERR((void const *)pd);
    ret = (int )tmp___3;
    }
    goto error_0;
  } else {
  }
  {
  mr = ib_get_dma_mr(pd, 1);
  tmp___8 = IS_ERR((void const *)mr);
  }
  if (tmp___8 != 0L) {
    {
    descriptor___0.modname = "mlx5_ib";
    descriptor___0.function = "create_umr_res";
    descriptor___0.filename = "drivers/infiniband/hw/mlx5/main.c";
    descriptor___0.format = "%s:%s:%d:(pid %d): Couldn\'t create DMA MR for sync UMR QP\n";
    descriptor___0.lineno = 1127U;
    descriptor___0.flags = 0U;
    tmp___6 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      tmp___5 = get_current();
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): Couldn\'t create DMA MR for sync UMR QP\n",
                         (char *)(& dev->ib_dev.name), "create_umr_res", 1127, tmp___5->pid);
      }
    } else {
    }
    {
    tmp___7 = PTR_ERR((void const *)mr);
    ret = (int )tmp___7;
    }
    goto error_1;
  } else {
  }
  {
  cq = ib_create_cq(& dev->ib_dev, & mlx5_umr_cq_handler, (void (*)(struct ib_event * ,
                                                                    void * ))0, (void *)0,
                    128, 0);
  tmp___12 = IS_ERR((void const *)cq);
  }
  if (tmp___12 != 0L) {
    {
    descriptor___1.modname = "mlx5_ib";
    descriptor___1.function = "create_umr_res";
    descriptor___1.filename = "drivers/infiniband/hw/mlx5/main.c";
    descriptor___1.format = "%s:%s:%d:(pid %d): Couldn\'t create CQ for sync UMR QP\n";
    descriptor___1.lineno = 1135U;
    descriptor___1.flags = 0U;
    tmp___10 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___9 = get_current();
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): Couldn\'t create CQ for sync UMR QP\n",
                         (char *)(& dev->ib_dev.name), "create_umr_res", 1135, tmp___9->pid);
      }
    } else {
    }
    {
    tmp___11 = PTR_ERR((void const *)cq);
    ret = (int )tmp___11;
    }
    goto error_2;
  } else {
  }
  {
  ib_req_notify_cq(cq, 2);
  init_attr->send_cq = cq;
  init_attr->recv_cq = cq;
  init_attr->sq_sig_type = 0;
  init_attr->cap.max_send_wr = 128U;
  init_attr->cap.max_send_sge = 1U;
  init_attr->qp_type = 4096;
  init_attr->port_num = 1U;
  qp = mlx5_ib_create_qp(pd, init_attr, (struct ib_udata *)0);
  tmp___16 = IS_ERR((void const *)qp);
  }
  if (tmp___16 != 0L) {
    {
    descriptor___2.modname = "mlx5_ib";
    descriptor___2.function = "create_umr_res";
    descriptor___2.filename = "drivers/infiniband/hw/mlx5/main.c";
    descriptor___2.format = "%s:%s:%d:(pid %d): Couldn\'t create sync UMR QP\n";
    descriptor___2.lineno = 1150U;
    descriptor___2.flags = 0U;
    tmp___14 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___14 != 0L) {
      {
      tmp___13 = get_current();
      __dynamic_pr_debug(& descriptor___2, "%s:%s:%d:(pid %d): Couldn\'t create sync UMR QP\n",
                         (char *)(& dev->ib_dev.name), "create_umr_res", 1150, tmp___13->pid);
      }
    } else {
    }
    {
    tmp___15 = PTR_ERR((void const *)qp);
    ret = (int )tmp___15;
    }
    goto error_3;
  } else {
  }
  {
  qp->device = & dev->ib_dev;
  qp->real_qp = qp;
  qp->uobject = (struct ib_uobject *)0;
  qp->qp_type = 4096;
  attr->qp_state = 1;
  attr->port_num = 1U;
  ret = mlx5_ib_modify_qp(qp, attr, 49, (struct ib_udata *)0);
  }
  if (ret != 0) {
    {
    descriptor___3.modname = "mlx5_ib";
    descriptor___3.function = "create_umr_res";
    descriptor___3.filename = "drivers/infiniband/hw/mlx5/main.c";
    descriptor___3.format = "%s:%s:%d:(pid %d): Couldn\'t modify UMR QP\n";
    descriptor___3.lineno = 1164U;
    descriptor___3.flags = 0U;
    tmp___18 = __builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___18 != 0L) {
      {
      tmp___17 = get_current();
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d:(pid %d): Couldn\'t modify UMR QP\n",
                         (char *)(& dev->ib_dev.name), "create_umr_res", 1164, tmp___17->pid);
      }
    } else {
    }
    goto error_4;
  } else {
  }
  {
  memset((void *)attr, 0, 168UL);
  attr->qp_state = 2;
  attr->path_mtu = 1;
  ret = mlx5_ib_modify_qp(qp, attr, 1, (struct ib_udata *)0);
  }
  if (ret != 0) {
    {
    descriptor___4.modname = "mlx5_ib";
    descriptor___4.function = "create_umr_res";
    descriptor___4.filename = "drivers/infiniband/hw/mlx5/main.c";
    descriptor___4.format = "%s:%s:%d:(pid %d): Couldn\'t modify umr QP to rtr\n";
    descriptor___4.lineno = 1174U;
    descriptor___4.flags = 0U;
    tmp___20 = __builtin_expect((long )descriptor___4.flags & 1L, 0L);
    }
    if (tmp___20 != 0L) {
      {
      tmp___19 = get_current();
      __dynamic_pr_debug(& descriptor___4, "%s:%s:%d:(pid %d): Couldn\'t modify umr QP to rtr\n",
                         (char *)(& dev->ib_dev.name), "create_umr_res", 1174, tmp___19->pid);
      }
    } else {
    }
    goto error_4;
  } else {
  }
  {
  memset((void *)attr, 0, 168UL);
  attr->qp_state = 3;
  ret = mlx5_ib_modify_qp(qp, attr, 1, (struct ib_udata *)0);
  }
  if (ret != 0) {
    {
    descriptor___5.modname = "mlx5_ib";
    descriptor___5.function = "create_umr_res";
    descriptor___5.filename = "drivers/infiniband/hw/mlx5/main.c";
    descriptor___5.format = "%s:%s:%d:(pid %d): Couldn\'t modify umr QP to rts\n";
    descriptor___5.lineno = 1182U;
    descriptor___5.flags = 0U;
    tmp___22 = __builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___22 != 0L) {
      {
      tmp___21 = get_current();
      __dynamic_pr_debug(& descriptor___5, "%s:%s:%d:(pid %d): Couldn\'t modify umr QP to rts\n",
                         (char *)(& dev->ib_dev.name), "create_umr_res", 1182, tmp___21->pid);
      }
    } else {
    }
    goto error_4;
  } else {
  }
  {
  dev->umrc.qp = qp;
  dev->umrc.cq = cq;
  dev->umrc.mr = mr;
  dev->umrc.pd = pd;
  sema_init(& dev->umrc.sem, 128);
  ret = mlx5_mr_cache_init(dev);
  }
  if (ret != 0) {
    {
    tmp___23 = get_current();
    printk("\f%s:%s:%d:(pid %d): mr cache init failed %d\n", (char *)(& dev->ib_dev.name),
           "create_umr_res", 1194, tmp___23->pid, ret);
    }
    goto error_4;
  } else {
  }
  {
  kfree((void const *)attr);
  kfree((void const *)init_attr);
  }
  return (0);
  error_4:
  {
  mlx5_ib_destroy_qp(qp);
  }
  error_3:
  {
  ib_destroy_cq(cq);
  }
  error_2:
  {
  ib_dereg_mr(mr);
  }
  error_1:
  {
  ib_dealloc_pd(pd);
  }
  error_0:
  {
  kfree((void const *)attr);
  kfree((void const *)init_attr);
  }
  return (ret);
}
}
static int create_dev_resources(struct mlx5_ib_resources *devr )
{
  struct ib_srq_init_attr attr ;
  struct mlx5_ib_dev *dev ;
  int ret ;
  struct mlx5_ib_resources const *__mptr ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  struct lock_class_key __key ;
  long tmp___5 ;
  long tmp___6 ;
  struct lock_class_key __key___0 ;
  long tmp___7 ;
  long tmp___8 ;
  {
  {
  ret = 0;
  __mptr = (struct mlx5_ib_resources const *)devr;
  dev = (struct mlx5_ib_dev *)(__mptr + 0xfffffffffffc6330UL);
  devr->p0 = mlx5_ib_alloc_pd(& dev->ib_dev, (struct ib_ucontext *)0, (struct ib_udata *)0);
  tmp___0 = IS_ERR((void const *)devr->p0);
  }
  if (tmp___0 != 0L) {
    {
    tmp = PTR_ERR((void const *)devr->p0);
    ret = (int )tmp;
    }
    goto error0;
  } else {
  }
  {
  (devr->p0)->device = & dev->ib_dev;
  (devr->p0)->uobject = (struct ib_uobject *)0;
  atomic_set(& (devr->p0)->usecnt, 0);
  devr->c0 = mlx5_ib_create_cq(& dev->ib_dev, 1, 0, (struct ib_ucontext *)0, (struct ib_udata *)0);
  tmp___2 = IS_ERR((void const *)devr->c0);
  }
  if (tmp___2 != 0L) {
    {
    tmp___1 = PTR_ERR((void const *)devr->c0);
    ret = (int )tmp___1;
    }
    goto error1;
  } else {
  }
  {
  (devr->c0)->device = & dev->ib_dev;
  (devr->c0)->uobject = (struct ib_uobject *)0;
  (devr->c0)->comp_handler = (void (*)(struct ib_cq * , void * ))0;
  (devr->c0)->event_handler = (void (*)(struct ib_event * , void * ))0;
  (devr->c0)->cq_context = (void *)0;
  atomic_set(& (devr->c0)->usecnt, 0);
  devr->x0 = mlx5_ib_alloc_xrcd(& dev->ib_dev, (struct ib_ucontext *)0, (struct ib_udata *)0);
  tmp___4 = IS_ERR((void const *)devr->x0);
  }
  if (tmp___4 != 0L) {
    {
    tmp___3 = PTR_ERR((void const *)devr->x0);
    ret = (int )tmp___3;
    }
    goto error2;
  } else {
  }
  {
  (devr->x0)->device = & dev->ib_dev;
  (devr->x0)->inode = (struct inode *)0;
  atomic_set(& (devr->x0)->usecnt, 0);
  __mutex_init(& (devr->x0)->tgt_qp_mutex, "&devr->x0->tgt_qp_mutex", & __key);
  INIT_LIST_HEAD(& (devr->x0)->tgt_qp_list);
  devr->x1 = mlx5_ib_alloc_xrcd(& dev->ib_dev, (struct ib_ucontext *)0, (struct ib_udata *)0);
  tmp___6 = IS_ERR((void const *)devr->x1);
  }
  if (tmp___6 != 0L) {
    {
    tmp___5 = PTR_ERR((void const *)devr->x1);
    ret = (int )tmp___5;
    }
    goto error3;
  } else {
  }
  {
  (devr->x1)->device = & dev->ib_dev;
  (devr->x1)->inode = (struct inode *)0;
  atomic_set(& (devr->x1)->usecnt, 0);
  __mutex_init(& (devr->x1)->tgt_qp_mutex, "&devr->x1->tgt_qp_mutex", & __key___0);
  INIT_LIST_HEAD(& (devr->x1)->tgt_qp_list);
  memset((void *)(& attr), 0, 48UL);
  attr.attr.max_sge = 1U;
  attr.attr.max_wr = 1U;
  attr.srq_type = 1;
  attr.ext.xrc.cq = devr->c0;
  attr.ext.xrc.xrcd = devr->x0;
  devr->s0 = mlx5_ib_create_srq(devr->p0, & attr, (struct ib_udata *)0);
  tmp___8 = IS_ERR((void const *)devr->s0);
  }
  if (tmp___8 != 0L) {
    {
    tmp___7 = PTR_ERR((void const *)devr->s0);
    ret = (int )tmp___7;
    }
    goto error4;
  } else {
  }
  {
  (devr->s0)->device = & dev->ib_dev;
  (devr->s0)->pd = devr->p0;
  (devr->s0)->uobject = (struct ib_uobject *)0;
  (devr->s0)->event_handler = (void (*)(struct ib_event * , void * ))0;
  (devr->s0)->srq_context = (void *)0;
  (devr->s0)->srq_type = 1;
  (devr->s0)->ext.xrc.xrcd = devr->x0;
  (devr->s0)->ext.xrc.cq = devr->c0;
  atomic_inc(& ((devr->s0)->ext.xrc.xrcd)->usecnt);
  atomic_inc(& ((devr->s0)->ext.xrc.cq)->usecnt);
  atomic_inc(& (devr->p0)->usecnt);
  atomic_set(& (devr->s0)->usecnt, 0);
  }
  return (0);
  error4:
  {
  mlx5_ib_dealloc_xrcd(devr->x1);
  }
  error3:
  {
  mlx5_ib_dealloc_xrcd(devr->x0);
  }
  error2:
  {
  mlx5_ib_destroy_cq(devr->c0);
  }
  error1:
  {
  mlx5_ib_dealloc_pd(devr->p0);
  }
  error0: ;
  return (ret);
}
}
static void destroy_dev_resources(struct mlx5_ib_resources *devr )
{
  {
  {
  mlx5_ib_destroy_srq(devr->s0);
  mlx5_ib_dealloc_xrcd(devr->x0);
  mlx5_ib_dealloc_xrcd(devr->x1);
  mlx5_ib_destroy_cq(devr->c0);
  mlx5_ib_dealloc_pd(devr->p0);
  }
  return;
}
}
static int init_one(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct mlx5_core_dev *mdev ;
  struct mlx5_ib_dev *dev ;
  int err ;
  int i ;
  bool __print_once ;
  struct ib_device *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  if (! __print_once) {
    {
    __print_once = 1;
    printk("\016%s", (char *)(& mlx5_version));
    }
  } else {
  }
  {
  tmp = ib_alloc_device(244512UL);
  dev = (struct mlx5_ib_dev *)tmp;
  }
  if ((unsigned long )dev == (unsigned long )((struct mlx5_ib_dev *)0)) {
    return (-12);
  } else {
  }
  mdev = & dev->mdev;
  mdev->event = & mlx5_ib_event;
  if ((unsigned int )prof_sel > 2U) {
    {
    printk("\fselected pofile out of range, selceting default\n");
    prof_sel = 0;
    }
  } else {
  }
  {
  mdev->profile = (struct mlx5_profile *)(& profile + (unsigned long )prof_sel);
  err = mlx5_dev_init(mdev, pdev);
  }
  if (err != 0) {
    goto err_free;
  } else {
  }
  {
  err = get_port_caps(dev);
  }
  if (err != 0) {
    goto err_cleanup;
  } else {
  }
  {
  get_ext_port_caps(dev);
  err = alloc_comp_eqs(dev);
  }
  if (err != 0) {
    goto err_cleanup;
  } else {
  }
  {
  strlcpy((char *)(& dev->ib_dev.name), "mlx5_%d", 64UL);
  dev->ib_dev.owner = & __this_module;
  dev->ib_dev.node_type = 1U;
  dev->ib_dev.local_dma_lkey = mdev->caps.reserved_lkey;
  dev->num_ports = mdev->caps.num_ports;
  dev->ib_dev.phys_port_cnt = (u8 )dev->num_ports;
  dev->ib_dev.num_comp_vectors = dev->num_comp_vectors;
  dev->ib_dev.dma_device = & (mdev->pdev)->dev;
  dev->ib_dev.uverbs_abi_ver = 1;
  dev->ib_dev.uverbs_cmd_mask = 1717166809631ULL;
  dev->ib_dev.query_device = & mlx5_ib_query_device;
  dev->ib_dev.query_port = & mlx5_ib_query_port;
  dev->ib_dev.query_gid = & mlx5_ib_query_gid;
  dev->ib_dev.query_pkey = & mlx5_ib_query_pkey;
  dev->ib_dev.modify_device = & mlx5_ib_modify_device;
  dev->ib_dev.modify_port = & mlx5_ib_modify_port;
  dev->ib_dev.alloc_ucontext = & mlx5_ib_alloc_ucontext;
  dev->ib_dev.dealloc_ucontext = & mlx5_ib_dealloc_ucontext;
  dev->ib_dev.mmap = & mlx5_ib_mmap;
  dev->ib_dev.alloc_pd = & mlx5_ib_alloc_pd;
  dev->ib_dev.dealloc_pd = & mlx5_ib_dealloc_pd;
  dev->ib_dev.create_ah = & mlx5_ib_create_ah;
  dev->ib_dev.query_ah = & mlx5_ib_query_ah;
  dev->ib_dev.destroy_ah = & mlx5_ib_destroy_ah;
  dev->ib_dev.create_srq = & mlx5_ib_create_srq;
  dev->ib_dev.modify_srq = & mlx5_ib_modify_srq;
  dev->ib_dev.query_srq = & mlx5_ib_query_srq;
  dev->ib_dev.destroy_srq = & mlx5_ib_destroy_srq;
  dev->ib_dev.post_srq_recv = & mlx5_ib_post_srq_recv;
  dev->ib_dev.create_qp = & mlx5_ib_create_qp;
  dev->ib_dev.modify_qp = & mlx5_ib_modify_qp;
  dev->ib_dev.query_qp = & mlx5_ib_query_qp;
  dev->ib_dev.destroy_qp = & mlx5_ib_destroy_qp;
  dev->ib_dev.post_send = & mlx5_ib_post_send;
  dev->ib_dev.post_recv = & mlx5_ib_post_recv;
  dev->ib_dev.create_cq = & mlx5_ib_create_cq;
  dev->ib_dev.modify_cq = & mlx5_ib_modify_cq;
  dev->ib_dev.resize_cq = & mlx5_ib_resize_cq;
  dev->ib_dev.destroy_cq = & mlx5_ib_destroy_cq;
  dev->ib_dev.poll_cq = & mlx5_ib_poll_cq;
  dev->ib_dev.req_notify_cq = & mlx5_ib_arm_cq;
  dev->ib_dev.get_dma_mr = & mlx5_ib_get_dma_mr;
  dev->ib_dev.reg_user_mr = & mlx5_ib_reg_user_mr;
  dev->ib_dev.dereg_mr = & mlx5_ib_dereg_mr;
  dev->ib_dev.attach_mcast = & mlx5_ib_mcg_attach;
  dev->ib_dev.detach_mcast = & mlx5_ib_mcg_detach;
  dev->ib_dev.process_mad = & mlx5_ib_process_mad;
  dev->ib_dev.alloc_fast_reg_mr = & mlx5_ib_alloc_fast_reg_mr;
  dev->ib_dev.alloc_fast_reg_page_list = & mlx5_ib_alloc_fast_reg_page_list;
  dev->ib_dev.free_fast_reg_page_list = & mlx5_ib_free_fast_reg_page_list;
  }
  if ((mdev->caps.flags & 8ULL) != 0ULL) {
    dev->ib_dev.alloc_xrcd = & mlx5_ib_alloc_xrcd;
    dev->ib_dev.dealloc_xrcd = & mlx5_ib_dealloc_xrcd;
    dev->ib_dev.uverbs_cmd_mask = dev->ib_dev.uverbs_cmd_mask | 412316860416ULL;
  } else {
  }
  {
  err = init_node_data(dev);
  }
  if (err != 0) {
    goto err_eqs;
  } else {
  }
  {
  __mutex_init(& dev->cap_mask_mutex, "&dev->cap_mask_mutex", & __key);
  spinlock_check(& dev->mr_lock);
  __raw_spin_lock_init(& dev->mr_lock.__annonCompField19.rlock, "&(&dev->mr_lock)->rlock",
                       & __key___0);
  err = create_dev_resources(& dev->devr);
  }
  if (err != 0) {
    goto err_eqs;
  } else {
  }
  {
  err = ib_register_device(& dev->ib_dev, (int (*)(struct ib_device * , u8 , struct kobject * ))0);
  }
  if (err != 0) {
    goto err_rsrc;
  } else {
  }
  {
  err = create_umr_res(dev);
  }
  if (err != 0) {
    goto err_dev;
  } else {
  }
  i = 0;
  goto ldv_37002;
  ldv_37001:
  {
  err = device_create_file(& dev->ib_dev.dev, (struct device_attribute const *)mlx5_class_attributes[i]);
  }
  if (err != 0) {
    goto err_umrc;
  } else {
  }
  i = i + 1;
  ldv_37002: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_37001;
  } else {
  }
  dev->ib_active = 1;
  return (0);
  err_umrc:
  {
  destroy_umrc_res(dev);
  }
  err_dev:
  {
  ib_unregister_device(& dev->ib_dev);
  }
  err_rsrc:
  {
  destroy_dev_resources(& dev->devr);
  }
  err_eqs:
  {
  free_comp_eqs(dev);
  }
  err_cleanup:
  {
  mlx5_dev_cleanup(mdev);
  }
  err_free:
  {
  ib_dealloc_device((struct ib_device *)dev);
  }
  return (err);
}
}
static void remove_one(struct pci_dev *pdev )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  {
  {
  tmp = mlx5_pci2ibdev(pdev);
  dev = tmp;
  destroy_umrc_res(dev);
  ib_unregister_device(& dev->ib_dev);
  destroy_dev_resources(& dev->devr);
  free_comp_eqs(dev);
  mlx5_dev_cleanup(& dev->mdev);
  ib_dealloc_device(& dev->ib_dev);
  }
  return;
}
}
static struct pci_device_id const mlx5_ib_pci_table[2U] = { {5555U, 4113U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver mlx5_ib_driver =
     {{0, 0}, "mlx5_ib", (struct pci_device_id const *)(& mlx5_ib_pci_table), & init_one,
    & remove_one, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                                        0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0},
                                                                          0, 0, 0UL}}}},
                                                   {0, 0}}};
static int mlx5_ib_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___pci_register_driver_63(& mlx5_ib_driver, & __this_module, "mlx5_ib");
  }
  return (tmp);
}
}
static void mlx5_ib_cleanup(void)
{
  {
  {
  ldv_pci_unregister_driver_64(& mlx5_ib_driver);
  }
  return;
}
}
void *ldv_character_driver_scenario_2(void *arg0 ) ;
void *ldv_character_driver_scenario_3(void *arg0 ) ;
void ldv_dispatch_default_deregister_3_6_3(void) ;
void ldv_dispatch_default_register_3_6_4(void) ;
void ldv_dispatch_deregister_9_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_insmod_deregister_11_2(void) ;
void ldv_dispatch_insmod_register_11_3(void) ;
void ldv_dispatch_register_10_3(struct pci_driver *arg0 ) ;
int ldv_emg___pci_register_driver(struct pci_driver *arg0 , struct module *arg1 ,
                                  char *arg2 ) ;
void ldv_emg_pci_unregister_driver(struct pci_driver *arg0 ) ;
void *ldv_insmod_6(void *arg0 ) ;
void ldv_insmod_mlx5_ib_cleanup_6_2(void (*arg0)(void) ) ;
int ldv_insmod_mlx5_ib_init_6_9(int (*arg0)(void) ) ;
void *ldv_main_11(void *arg0 ) ;
void *ldv_pci_scenario_4(void *arg0 ) ;
int ldv_pci_scenario_probe_4_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_scenario_release_4_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void *ldv_timer_scenario_5(void *arg0 ) ;
int main(void) ;
pthread_t ldv_thread_2 ;
pthread_t ldv_thread_3 ;
pthread_t ldv_thread_4 ;
pthread_t ldv_thread_5 ;
pthread_t ldv_thread_6 ;
void ldv_dispatch_default_deregister_3_6_3(void)
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_2, (void **)0);
  __VERIFIER_assume(ret == 0);
  ret = pthread_join(ldv_thread_3, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_default_register_3_6_4(void)
{
  int ret ;
  struct ldv_struct_insmod_6 *cf_arg_2 ;
  struct ldv_struct_insmod_6 *cf_arg_3 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_insmod_6 *)tmp;
  ret = pthread_create(& ldv_thread_2, (pthread_attr_t const *)0, & ldv_character_driver_scenario_2,
                       (void *)cf_arg_2);
  __VERIFIER_assume(ret == 0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_insmod_6 *)tmp___0;
  ret = pthread_create(& ldv_thread_3, (pthread_attr_t const *)0, & ldv_character_driver_scenario_3,
                       (void *)cf_arg_3);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_deregister_9_1(struct pci_driver *arg0 )
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_4, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_insmod_deregister_11_2(void)
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
void ldv_dispatch_insmod_register_11_3(void)
{
  int ret ;
  struct ldv_struct_insmod_6 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_insmod_6 *)tmp;
  ret = pthread_create(& ldv_thread_6, (pthread_attr_t const *)0, & ldv_insmod_6,
                       (void *)cf_arg_6);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_register_10_3(struct pci_driver *arg0 )
{
  int ret ;
  struct ldv_struct_pci_scenario_4 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_pci_scenario_4 *)tmp;
  cf_arg_4->arg0 = arg0;
  ret = pthread_create(& ldv_thread_4, (pthread_attr_t const *)0, & ldv_pci_scenario_4,
                       (void *)cf_arg_4);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
int ldv_emg___pci_register_driver(struct pci_driver *arg0 , struct module *arg1 ,
                                  char *arg2 )
{
  struct pci_driver *ldv_10_pci_driver_pci_driver ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_10_pci_driver_pci_driver = (struct pci_driver *)tmp;
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_10_pci_driver_pci_driver = arg0;
    ldv_dispatch_register_10_3(ldv_10_pci_driver_pci_driver);
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
void ldv_emg_pci_unregister_driver(struct pci_driver *arg0 )
{
  struct pci_driver *ldv_9_pci_driver_pci_driver ;
  void *tmp ;
  {
  {
  tmp = external_allocated_data();
  ldv_9_pci_driver_pci_driver = (struct pci_driver *)tmp;
  ldv_9_pci_driver_pci_driver = arg0;
  ldv_dispatch_deregister_9_1(ldv_9_pci_driver_pci_driver);
  }
  return;
  return;
}
}
void *ldv_insmod_6(void *arg0 )
{
  void (*ldv_6_mlx5_ib_cleanup_default)(void) ;
  int (*ldv_6_mlx5_ib_init_default)(void) ;
  int ldv_6_reg_guard_3_default ;
  int ldv_6_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_6_mlx5_ib_cleanup_default = (void (*)(void))tmp;
  tmp___0 = external_allocated_data();
  ldv_6_mlx5_ib_init_default = (int (*)(void))tmp___0;
  ldv_free(arg0);
  ldv_6_ret_default = ldv_insmod_mlx5_ib_init_6_9(ldv_6_mlx5_ib_init_default);
  ldv_6_ret_default = ldv_post_init(ldv_6_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume(ldv_6_ret_default != 0);
    }
    return ((void *)0);
  } else {
    {
    __VERIFIER_assume(ldv_6_ret_default == 0);
    ldv_6_reg_guard_3_default = ldv_undef_int();
    }
    if (ldv_6_reg_guard_3_default != 0) {
      {
      ldv_dispatch_default_register_3_6_4();
      }
    } else {
    }
    if (ldv_6_reg_guard_3_default != 0) {
      {
      ldv_dispatch_default_deregister_3_6_3();
      }
    } else {
    }
    {
    ldv_insmod_mlx5_ib_cleanup_6_2(ldv_6_mlx5_ib_cleanup_default);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
void ldv_insmod_mlx5_ib_cleanup_6_2(void (*arg0)(void) )
{
  {
  {
  mlx5_ib_cleanup();
  }
  return;
}
}
int ldv_insmod_mlx5_ib_init_6_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = mlx5_ib_init();
  }
  return (tmp);
}
}
void *ldv_main_11(void *arg0 )
{
  {
  {
  ldv_initialize();
  ldv_dispatch_insmod_register_11_3();
  ldv_dispatch_insmod_deregister_11_2();
  ldv_check_final_state();
  __VERIFIER_assume(0);
  }
  return ((void *)0);
  return ((void *)0);
}
}
void *ldv_pci_scenario_4(void *arg0 )
{
  struct pci_driver *ldv_4_container_pci_driver ;
  struct pci_device_id *ldv_4_ldv_param_17_1_default ;
  struct pci_dev *ldv_4_resource_dev ;
  int ldv_4_ret_default ;
  struct ldv_struct_pci_scenario_4 *data ;
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
  data = (struct ldv_struct_pci_scenario_4 *)arg0;
  tmp = external_allocated_data();
  ldv_4_container_pci_driver = (struct pci_driver *)tmp;
  tmp___0 = external_allocated_data();
  ldv_4_ldv_param_17_1_default = (struct pci_device_id *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_4_resource_dev = (struct pci_dev *)tmp___1;
  ldv_4_ret_default = ldv_undef_int();
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_scenario_4 *)0)) {
    {
    ldv_4_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_4_resource_dev = (struct pci_dev *)tmp___2;
  }
  goto ldv_main_4;
  return ((void *)0);
  ldv_main_4:
  {
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    {
    tmp___3 = ldv_xmalloc_unknown_size(0UL);
    ldv_4_ldv_param_17_1_default = (struct pci_device_id *)tmp___3;
    ldv_pre_probe();
    ldv_4_ret_default = ldv_pci_scenario_probe_4_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_4_container_pci_driver->probe,
                                                    ldv_4_resource_dev, ldv_4_ldv_param_17_1_default);
    ldv_4_ret_default = ldv_post_probe(ldv_4_ret_default);
    ldv_free((void *)ldv_4_ldv_param_17_1_default);
    tmp___4 = ldv_undef_int();
    }
    if (tmp___4 != 0) {
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
    ldv_free((void *)ldv_4_resource_dev);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_4:
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
  goto ldv_call_4;
  case_2: ;
  goto ldv_call_4;
  case_3:
  {
  ldv_pci_scenario_release_4_2(ldv_4_container_pci_driver->remove, ldv_4_resource_dev);
  }
  goto ldv_main_4;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
}
}
int ldv_pci_scenario_probe_4_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = init_one(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_scenario_release_4_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  remove_one(arg1);
  }
  return;
}
}
void *ldv_timer_scenario_5(void *arg0 )
{
  struct timer_list *ldv_5_container_timer_list ;
  struct ldv_struct_timer_scenario_5 *data ;
  void *tmp ;
  {
  {
  data = (struct ldv_struct_timer_scenario_5 *)arg0;
  tmp = external_allocated_data();
  ldv_5_container_timer_list = (struct timer_list *)tmp;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_scenario_5 *)0)) {
    {
    ldv_5_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  return ((void *)0);
  return ((void *)0);
}
}
int main(void)
{
  {
  {
  ldv_main_11((void *)0);
  }
  return (0);
}
}
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  {
  tmp = ldv_err_ptr(error);
  }
  return (tmp);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err(ptr);
  }
  return (tmp);
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
__inline static void ldv_spin_lock_49(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_eq_table();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_50(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_eq_table();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_cap_mask_mutex_of_mlx5_ib_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_cap_mask_mutex_of_mlx5_ib_dev(ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_63(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
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
static void ldv_pci_unregister_driver_64(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  ldv_emg_pci_unregister_driver(ldv_func_arg1);
  }
  return;
}
}
long __builtin_bswap64(long ) ;
static void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_resize_mutex_of_mlx5_ib_cq(struct mutex *lock ) ;
void ldv_mutex_unlock_resize_mutex_of_mlx5_ib_cq(struct mutex *lock ) ;
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
__inline static __u64 __fswab64(__u64 val )
{
  long tmp ;
  {
  {
  tmp = __builtin_bswap64(val);
  }
  return ((__u64 )tmp);
}
}
__inline static unsigned int fls_long(unsigned long l )
{
  int tmp___0 ;
  {
  {
  tmp___0 = fls64((__u64 )l);
  }
  return ((unsigned int )tmp___0);
}
}
__inline static int __ilog2_u32(u32 n )
{
  int tmp ;
  {
  {
  tmp = fls((int )n);
  }
  return (tmp + -1);
}
}
__inline static unsigned long __roundup_pow_of_two(unsigned long n )
{
  unsigned int tmp ;
  {
  {
  tmp = fls_long(n - 1UL);
  }
  return (1UL << (int )tmp);
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
__inline static int atomic_dec_and_test(atomic_t *v )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_49(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_54(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_lock_of_mlx5_ib_cq(void) ;
void ldv_spin_unlock_lock_of_mlx5_ib_cq(void) ;
static void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_51(spinlock_t *lock ) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_52(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_50(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_50(spinlock_t *lock , unsigned long flags ) ;
extern void complete(struct completion * ) ;
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
  return;
}
}
extern void *vzalloc(unsigned long ) ;
extern void vfree(void const * ) ;
__inline static int is_vmalloc_addr(void const *x )
{
  unsigned long addr ;
  {
  addr = (unsigned long )x;
  return (addr - 0xffffc90000000000UL <= 35184372088830UL);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void *radix_tree_lookup(struct radix_tree_root * , unsigned long ) ;
extern struct ib_umem *ib_umem_get(struct ib_ucontext * , unsigned long , size_t ,
                                   int , int ) ;
extern void ib_umem_release(struct ib_umem * ) ;
__inline static void mlx5_write64(__be32 *val , void *dest , spinlock_t *doorbell_lock )
{
  {
  {
  writeq((unsigned long )*((u64 *)val), (void volatile *)dest);
  }
  return;
}
}
__inline static void *mlx5_buf_offset(struct mlx5_buf *buf , int offset )
{
  {
  return (buf->direct.buf + (unsigned long )offset);
}
}
__inline static void *mlx5_vzalloc(unsigned long size )
{
  void *rtn ;
  {
  {
  rtn = kzalloc(size, 720U);
  }
  if ((unsigned long )rtn == (unsigned long )((void *)0)) {
    {
    rtn = vzalloc(size);
    }
  } else {
  }
  return (rtn);
}
}
__inline static void mlx5_vfree(void const *addr )
{
  int tmp ;
  {
  if ((unsigned long )addr != (unsigned long )((void const *)0)) {
    {
    tmp = is_vmalloc_addr(addr);
    }
    if (tmp != 0) {
      {
      vfree(addr);
      }
    } else {
      {
      kfree(addr);
      }
    }
  } else {
    {
    kfree(addr);
    }
  }
  return;
}
}
extern int mlx5_buf_alloc(struct mlx5_core_dev * , int , int , struct mlx5_buf * ) ;
extern void mlx5_buf_free(struct mlx5_core_dev * , struct mlx5_buf * ) ;
extern void mlx5_fill_page_array(struct mlx5_buf * , __be64 * ) ;
extern struct mlx5_core_srq *mlx5_core_get_srq(struct mlx5_core_dev * , u32 ) ;
extern int mlx5_db_alloc(struct mlx5_core_dev * , struct mlx5_db * ) ;
extern void mlx5_db_free(struct mlx5_core_dev * , struct mlx5_db * ) ;
__inline static int cqe_sz_to_mlx_sz(u8 size )
{
  {
  return ((unsigned int )size != 64U);
}
}
__inline static void mlx5_cq_set_ci(struct mlx5_core_cq *cq )
{
  __u32 tmp ;
  {
  {
  tmp = __fswab32(cq->cons_index & 16777215U);
  *(cq->set_ci_db) = tmp;
  }
  return;
}
}
__inline static void mlx5_cq_arm(struct mlx5_core_cq *cq , u32 cmd , void *uar_page ,
                                 spinlock_t *doorbell_lock )
{
  __be32 doorbell[2U] ;
  u32 sn ;
  u32 ci ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  {
  sn = cq->arm_sn & 3U;
  ci = cq->cons_index & 16777215U;
  tmp = __fswab32(((sn << 28) | cmd) | ci);
  *(cq->arm_db) = tmp;
  __asm__ volatile ("sfence": : : "memory");
  tmp___0 = __fswab32(((sn << 28) | cmd) | ci);
  doorbell[0] = tmp___0;
  tmp___1 = __fswab32(cq->cqn);
  doorbell[1] = tmp___1;
  mlx5_write64((__be32 *)(& doorbell), uar_page + 32UL, doorbell_lock);
  }
  return;
}
}
extern int mlx5_core_create_cq(struct mlx5_core_dev * , struct mlx5_core_cq * , struct mlx5_create_cq_mbox_in * ,
                               int ) ;
extern int mlx5_core_destroy_cq(struct mlx5_core_dev * , struct mlx5_core_cq * ) ;
extern int mlx5_core_modify_cq(struct mlx5_core_dev * , struct mlx5_core_cq * , struct mlx5_modify_cq_mbox_in * ,
                               int ) ;
__inline static struct mlx5_core_qp *__mlx5_qp_lookup(struct mlx5_core_dev *dev ,
                                                      u32 qpn )
{
  void *tmp ;
  {
  {
  tmp = radix_tree_lookup(& dev->priv.qp_table.tree, (unsigned long )qpn);
  }
  return ((struct mlx5_core_qp *)tmp);
}
}
__inline static struct mlx5_ib_cq *to_mibcq(struct mlx5_core_cq *mcq )
{
  struct mlx5_core_cq const *__mptr ;
  {
  __mptr = (struct mlx5_core_cq const *)mcq;
  return ((struct mlx5_ib_cq *)(__mptr + 0xffffffffffffffd0UL));
}
}
__inline static struct mlx5_ib_cq *to_mcq(struct ib_cq *ibcq )
{
  struct ib_cq const *__mptr ;
  {
  __mptr = (struct ib_cq const *)ibcq;
  return ((struct mlx5_ib_cq *)__mptr);
}
}
__inline static struct mlx5_ib_qp *to_mibqp(struct mlx5_core_qp *mqp )
{
  struct mlx5_core_qp const *__mptr ;
  {
  __mptr = (struct mlx5_core_qp const *)mqp;
  return ((struct mlx5_ib_qp *)(__mptr + 0xffffffffffffff80UL));
}
}
__inline static struct mlx5_ib_srq *to_msrq(struct ib_srq *ibsrq )
{
  struct ib_srq const *__mptr ;
  {
  __mptr = (struct ib_srq const *)ibsrq;
  return ((struct mlx5_ib_srq *)__mptr);
}
}
__inline static struct mlx5_ib_srq *to_mibsrq(struct mlx5_core_srq *msrq )
{
  struct mlx5_core_srq const *__mptr ;
  {
  __mptr = (struct mlx5_core_srq const *)msrq;
  return ((struct mlx5_ib_srq *)(__mptr + 0xffffffffffffffb8UL));
}
}
int mlx5_ib_db_map_user(struct mlx5_ib_ucontext *context , unsigned long virt , struct mlx5_db *db ) ;
void mlx5_ib_db_unmap_user(struct mlx5_ib_ucontext *context , struct mlx5_db *db ) ;
void __mlx5_ib_cq_clean(struct mlx5_ib_cq *cq , u32 rsn , struct mlx5_ib_srq *srq ) ;
void mlx5_ib_cq_clean(struct mlx5_ib_cq *cq , u32 qpn , struct mlx5_ib_srq *srq ) ;
void mlx5_ib_free_srq_wqe(struct mlx5_ib_srq *srq , int wqe_index ) ;
void *mlx5_get_send_wqe(struct mlx5_ib_qp *qp , int n ) ;
void mlx5_ib_cont_pages(struct ib_umem *umem , u64 addr , int *count , int *shift ,
                        int *ncont , int *order ) ;
void mlx5_ib_populate_pas(struct mlx5_ib_dev *dev , struct ib_umem *umem , int page_shift ,
                          __be64 *pas , int umr ) ;
int mlx5_ib_get_cqe_size(struct mlx5_ib_dev *dev , struct ib_cq *ibcq ) ;
static void mlx5_ib_cq_comp(struct mlx5_core_cq *cq )
{
  struct ib_cq *ibcq ;
  struct mlx5_ib_cq *tmp ;
  {
  {
  tmp = to_mibcq(cq);
  ibcq = & tmp->ibcq;
  (*(ibcq->comp_handler))(ibcq, ibcq->cq_context);
  }
  return;
}
}
static void mlx5_ib_cq_event(struct mlx5_core_cq *mcq , enum mlx5_event type )
{
  struct mlx5_ib_cq *cq ;
  struct mlx5_core_cq const *__mptr ;
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct ib_cq *ibcq ;
  struct ib_event event ;
  struct task_struct *tmp___0 ;
  {
  {
  __mptr = (struct mlx5_core_cq const *)mcq;
  cq = (struct mlx5_ib_cq *)(__mptr + 0xffffffffffffffd0UL);
  tmp = to_mdev(cq->ibcq.device);
  dev = tmp;
  ibcq = & cq->ibcq;
  }
  if ((unsigned int )type != 4U) {
    {
    tmp___0 = get_current();
    printk("\f%s:%s:%d:(pid %d): Unexpected event type %d on CQ %06x\n", (char *)(& dev->ib_dev.name),
           "mlx5_ib_cq_event", 54, tmp___0->pid, (unsigned int )type, mcq->cqn);
    }
    return;
  } else {
  }
  if ((unsigned long )ibcq->event_handler != (unsigned long )((void (*)(struct ib_event * ,
                                                                        void * ))0)) {
    {
    event.device = & dev->ib_dev;
    event.event = 0;
    event.element.cq = ibcq;
    (*(ibcq->event_handler))(& event, ibcq->cq_context);
    }
  } else {
  }
  return;
}
}
static void *get_cqe_from_buf(struct mlx5_ib_cq_buf *buf , int n , int size )
{
  void *tmp ;
  {
  {
  tmp = mlx5_buf_offset(& buf->buf, n * size);
  }
  return (tmp);
}
}
static void *get_cqe(struct mlx5_ib_cq *cq , int n )
{
  void *tmp ;
  {
  {
  tmp = get_cqe_from_buf(& cq->buf, n, cq->mcq.cqe_sz);
  }
  return (tmp);
}
}
static u8 sw_ownership_bit(int n , int nent )
{
  {
  return ((n & nent) != 0);
}
}
static void *get_sw_cqe(struct mlx5_ib_cq *cq , int n )
{
  void *cqe ;
  void *tmp ;
  struct mlx5_cqe64 *cqe64 ;
  long tmp___0 ;
  {
  {
  tmp = get_cqe(cq, n & cq->ibcq.cqe);
  cqe = tmp;
  cqe64 = cq->mcq.cqe_sz == 64 ? (struct mlx5_cqe64 *)cqe : (struct mlx5_cqe64 *)(cqe + 64U);
  tmp___0 = __builtin_expect((unsigned int )((int )cqe64->op_own >> 4) != 15U, 1L);
  }
  if (tmp___0 != 0L && ! ((_Bool )((int )cqe64->op_own & 1)) ^ ((n & (cq->ibcq.cqe + 1)) != 0)) {
    return (cqe);
  } else {
    return ((void *)0);
  }
}
}
static void *next_cqe_sw(struct mlx5_ib_cq *cq )
{
  void *tmp ;
  {
  {
  tmp = get_sw_cqe(cq, (int )cq->mcq.cons_index);
  }
  return (tmp);
}
}
static enum ib_wc_opcode get_umr_comp(struct mlx5_ib_wq *wq , int idx )
{
  {
  {
  if (*(wq->wr_data + (unsigned long )idx) == 240U) {
    goto case_240;
  } else {
  }
  if (*(wq->wr_data + (unsigned long )idx) == 10U) {
    goto case_10;
  } else {
  }
  if (*(wq->wr_data + (unsigned long )idx) == 11U) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_240: ;
  return (0);
  case_10: ;
  return (7);
  case_11: ;
  return (8);
  switch_default:
  {
  printk("\funknown completion status\n");
  }
  return (0);
  switch_break: ;
  }
}
}
static void handle_good_req(struct ib_wc *wc , struct mlx5_cqe64 *cqe , struct mlx5_ib_wq *wq ,
                            int idx )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  {
  wc->wc_flags = 0;
  tmp = __fswab32(cqe->sop_drop_qpn);
  }
  {
  if (tmp >> 24 == 9U) {
    goto case_9;
  } else {
  }
  if (tmp >> 24 == 8U) {
    goto case_8;
  } else {
  }
  if (tmp >> 24 == 11U) {
    goto case_11;
  } else {
  }
  if (tmp >> 24 == 10U) {
    goto case_10;
  } else {
  }
  if (tmp >> 24 == 1U) {
    goto case_1;
  } else {
  }
  if (tmp >> 24 == 16U) {
    goto case_16;
  } else {
  }
  if (tmp >> 24 == 17U) {
    goto case_17;
  } else {
  }
  if (tmp >> 24 == 18U) {
    goto case_18;
  } else {
  }
  if (tmp >> 24 == 20U) {
    goto case_20;
  } else {
  }
  if (tmp >> 24 == 21U) {
    goto case_21;
  } else {
  }
  if (tmp >> 24 == 24U) {
    goto case_24;
  } else {
  }
  if (tmp >> 24 == 37U) {
    goto case_37;
  } else {
  }
  goto switch_break;
  case_9:
  wc->wc_flags = wc->wc_flags | 2;
  case_8:
  wc->opcode = 1;
  goto ldv_35147;
  case_11:
  wc->wc_flags = wc->wc_flags | 2;
  case_10: ;
  case_1:
  wc->opcode = 0;
  goto ldv_35147;
  case_16:
  {
  wc->opcode = 2;
  tmp___0 = __fswab32(cqe->byte_cnt);
  wc->byte_len = tmp___0;
  }
  goto ldv_35147;
  case_17:
  wc->opcode = 3;
  wc->byte_len = 8U;
  goto ldv_35147;
  case_18:
  wc->opcode = 4;
  wc->byte_len = 8U;
  goto ldv_35147;
  case_20:
  wc->opcode = 9;
  wc->byte_len = 8U;
  goto ldv_35147;
  case_21:
  wc->opcode = 10;
  wc->byte_len = 8U;
  goto ldv_35147;
  case_24:
  wc->opcode = 5;
  goto ldv_35147;
  case_37:
  {
  wc->opcode = get_umr_comp(wq, idx);
  }
  goto ldv_35147;
  switch_break: ;
  }
  ldv_35147: ;
  return;
}
}
static void handle_responder(struct ib_wc *wc , struct mlx5_cqe64 *cqe , struct mlx5_ib_qp *qp )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_srq *srq ;
  struct mlx5_ib_wq *wq ;
  u16 wqe_ctr ;
  u8 g ;
  struct mlx5_core_srq *msrq ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  int tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u16 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  {
  {
  tmp = to_mdev(qp->ibqp.device);
  dev = tmp;
  }
  if ((unsigned long )qp->ibqp.srq != (unsigned long )((struct ib_srq *)0) || (unsigned long )qp->ibqp.xrcd != (unsigned long )((struct ib_xrcd *)0)) {
    msrq = (struct mlx5_core_srq *)0;
    if ((unsigned long )qp->ibqp.xrcd != (unsigned long )((struct ib_xrcd *)0)) {
      {
      tmp___0 = __fswab32(cqe->srqn);
      msrq = mlx5_core_get_srq(& dev->mdev, tmp___0);
      srq = to_mibsrq(msrq);
      }
    } else {
      {
      srq = to_msrq(qp->ibqp.srq);
      }
    }
    if ((unsigned long )srq != (unsigned long )((struct mlx5_ib_srq *)0)) {
      {
      tmp___1 = __fswab16((int )cqe->wqe_counter);
      wqe_ctr = tmp___1;
      wc->wr_id = *(srq->wrid + (unsigned long )wqe_ctr);
      mlx5_ib_free_srq_wqe(srq, (int )wqe_ctr);
      }
      if ((unsigned long )msrq != (unsigned long )((struct mlx5_core_srq *)0)) {
        {
        tmp___2 = atomic_dec_and_test(& msrq->refcount);
        }
        if (tmp___2 != 0) {
          {
          complete(& msrq->free);
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
    wq = & qp->rq;
    wc->wr_id = *(wq->wrid + (unsigned long )(wq->tail & (unsigned int )(wq->wqe_cnt + -1)));
    wq->tail = wq->tail + 1U;
  }
  {
  tmp___3 = __fswab32(cqe->byte_cnt);
  wc->byte_len = tmp___3;
  }
  {
  if ((int )cqe->op_own >> 4 == 1) {
    goto case_1;
  } else {
  }
  if ((int )cqe->op_own >> 4 == 2) {
    goto case_2;
  } else {
  }
  if ((int )cqe->op_own >> 4 == 3) {
    goto case_3;
  } else {
  }
  if ((int )cqe->op_own >> 4 == 4) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_1:
  wc->opcode = 129;
  wc->wc_flags = 2;
  wc->ex.imm_data = cqe->imm_inval_pkey;
  goto ldv_35173;
  case_2:
  wc->opcode = 128;
  wc->wc_flags = 0;
  goto ldv_35173;
  case_3:
  wc->opcode = 128;
  wc->wc_flags = 2;
  wc->ex.imm_data = cqe->imm_inval_pkey;
  goto ldv_35173;
  case_4:
  {
  wc->opcode = 128;
  wc->wc_flags = 4;
  tmp___4 = __fswab32(cqe->imm_inval_pkey);
  wc->ex.invalidate_rkey = tmp___4;
  }
  goto ldv_35173;
  switch_break: ;
  }
  ldv_35173:
  {
  tmp___5 = __fswab16((int )cqe->slid);
  wc->slid = tmp___5;
  tmp___6 = __fswab32(cqe->flags_rqpn);
  wc->sl = (unsigned int )((u8 )(tmp___6 >> 24)) & 15U;
  tmp___7 = __fswab32(cqe->flags_rqpn);
  wc->src_qp = tmp___7 & 16777215U;
  wc->dlid_path_bits = cqe->ml_path;
  tmp___8 = __fswab32(cqe->flags_rqpn);
  g = (unsigned int )((u8 )(tmp___8 >> 28)) & 3U;
  wc->wc_flags = wc->wc_flags | ((unsigned int )g != 0U);
  tmp___9 = __fswab32(cqe->imm_inval_pkey);
  wc->pkey_index = (u16 )tmp___9;
  }
  return;
}
}
static void dump_cqe(struct mlx5_ib_dev *dev , struct mlx5_err_cqe *cqe )
{
  __be32 *p ;
  int i ;
  struct task_struct *tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  {
  {
  p = (__be32 *)cqe;
  tmp = get_current();
  printk("\f%s:%s:%d:(pid %d): dump error cqe\n", (char *)(& dev->ib_dev.name), "dump_cqe",
         237, tmp->pid);
  i = 0;
  }
  goto ldv_35185;
  ldv_35184:
  {
  tmp___0 = __fswab32(*(p + 3UL));
  tmp___1 = __fswab32(*(p + 2UL));
  tmp___2 = __fswab32(*(p + 1UL));
  tmp___3 = __fswab32(*p);
  printk("\016%08x %08x %08x %08x\n", tmp___3, tmp___2, tmp___1, tmp___0);
  i = i + 1;
  p = p + 4UL;
  }
  ldv_35185: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_35184;
  } else {
  }
  return;
}
}
static void mlx5_handle_error_cqe(struct mlx5_ib_dev *dev , struct mlx5_err_cqe *cqe ,
                                  struct ib_wc *wc )
{
  int dump ;
  {
  dump = 1;
  {
  if ((int )cqe->syndrome == 1) {
    goto case_1;
  } else {
  }
  if ((int )cqe->syndrome == 2) {
    goto case_2;
  } else {
  }
  if ((int )cqe->syndrome == 4) {
    goto case_4;
  } else {
  }
  if ((int )cqe->syndrome == 5) {
    goto case_5;
  } else {
  }
  if ((int )cqe->syndrome == 6) {
    goto case_6;
  } else {
  }
  if ((int )cqe->syndrome == 16) {
    goto case_16;
  } else {
  }
  if ((int )cqe->syndrome == 17) {
    goto case_17;
  } else {
  }
  if ((int )cqe->syndrome == 18) {
    goto case_18;
  } else {
  }
  if ((int )cqe->syndrome == 19) {
    goto case_19;
  } else {
  }
  if ((int )cqe->syndrome == 20) {
    goto case_20;
  } else {
  }
  if ((int )cqe->syndrome == 21) {
    goto case_21;
  } else {
  }
  if ((int )cqe->syndrome == 22) {
    goto case_22;
  } else {
  }
  if ((int )cqe->syndrome == 34) {
    goto case_34;
  } else {
  }
  goto switch_default;
  case_1:
  wc->status = 1;
  goto ldv_35194;
  case_2:
  wc->status = 2;
  goto ldv_35194;
  case_4:
  wc->status = 4;
  goto ldv_35194;
  case_5:
  dump = 0;
  wc->status = 5;
  goto ldv_35194;
  case_6:
  wc->status = 6;
  goto ldv_35194;
  case_16:
  wc->status = 7;
  goto ldv_35194;
  case_17:
  wc->status = 8;
  goto ldv_35194;
  case_18:
  wc->status = 9;
  goto ldv_35194;
  case_19:
  wc->status = 10;
  goto ldv_35194;
  case_20:
  wc->status = 11;
  goto ldv_35194;
  case_21:
  wc->status = 12;
  dump = 0;
  goto ldv_35194;
  case_22:
  wc->status = 13;
  dump = 0;
  goto ldv_35194;
  case_34:
  wc->status = 16;
  goto ldv_35194;
  switch_default:
  wc->status = 21;
  goto ldv_35194;
  switch_break: ;
  }
  ldv_35194:
  wc->vendor_err = (u32 )cqe->vendor_err_synd;
  if (dump != 0) {
    {
    dump_cqe(dev, cqe);
    }
  } else {
  }
  return;
}
}
static int is_atomic_response(struct mlx5_ib_qp *qp , uint16_t idx )
{
  {
  return (0);
}
}
static void *mlx5_get_atomic_laddr(struct mlx5_ib_qp *qp , uint16_t idx )
{
  struct mlx5_wqe_data_seg *dpseg ;
  void *addr ;
  void *tmp ;
  __u64 tmp___0 ;
  {
  {
  tmp = mlx5_get_send_wqe(qp, (int )idx);
  dpseg = (struct mlx5_wqe_data_seg *)(tmp + 48U);
  tmp___0 = __fswab64(dpseg->addr);
  addr = (void *)tmp___0;
  }
  return (addr);
}
}
static void handle_atomic(struct mlx5_ib_qp *qp , struct mlx5_cqe64 *cqe64 , uint16_t idx )
{
  void *addr ;
  int byte_count ;
  int i ;
  int tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u64 tmp___2 ;
  {
  {
  tmp = is_atomic_response(qp, (int )idx);
  }
  if (tmp == 0) {
    return;
  } else {
  }
  {
  tmp___0 = __fswab32(cqe64->byte_cnt);
  byte_count = (int )tmp___0;
  addr = mlx5_get_atomic_laddr(qp, (int )idx);
  }
  if (byte_count == 4) {
    {
    tmp___1 = __fswab32(*((__be32 *)addr));
    *((uint32_t *)addr) = tmp___1;
    }
  } else {
    i = 0;
    goto ldv_35227;
    ldv_35226:
    {
    tmp___2 = __fswab64(*((__be64 *)addr));
    *((uint64_t *)addr) = tmp___2;
    addr = addr + 8UL;
    i = i + 8;
    }
    ldv_35227: ;
    if (i < byte_count) {
      goto ldv_35226;
    } else {
    }
  }
  return;
}
}
static void handle_atomics(struct mlx5_ib_qp *qp , struct mlx5_cqe64 *cqe64 , u16 tail ,
                           u16 head )
{
  int idx ;
  {
  ldv_35237:
  {
  idx = (int )tail & (qp->sq.wqe_cnt + -1);
  handle_atomic(qp, cqe64, (int )((uint16_t )idx));
  }
  if (idx == (int )head) {
    goto ldv_35236;
  } else {
  }
  tail = (qp->sq.w_list + (unsigned long )idx)->next;
  goto ldv_35237;
  ldv_35236:
  tail = (qp->sq.w_list + (unsigned long )idx)->next;
  qp->sq.last_poll = tail;
  return;
}
}
static void free_cq_buf(struct mlx5_ib_dev *dev , struct mlx5_ib_cq_buf *buf )
{
  {
  {
  mlx5_buf_free(& dev->mdev, & buf->buf);
  }
  return;
}
}
static int mlx5_poll_one(struct mlx5_ib_cq *cq , struct mlx5_ib_qp **cur_qp , struct ib_wc *wc )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_err_cqe *err_cqe ;
  struct mlx5_cqe64 *cqe64 ;
  struct mlx5_core_qp *mqp ;
  struct mlx5_ib_wq *wq ;
  uint8_t opcode ;
  uint32_t qpn ;
  u16 wqe_ctr ;
  void *cqe ;
  int idx ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  __u32 tmp___3 ;
  struct task_struct *tmp___4 ;
  long tmp___5 ;
  __u16 tmp___6 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  __u16 tmp___11 ;
  struct mlx5_ib_srq *srq ;
  __u16 tmp___12 ;
  {
  {
  tmp = to_mdev(cq->ibcq.device);
  dev = tmp;
  }
  repoll:
  {
  cqe = next_cqe_sw(cq);
  }
  if ((unsigned long )cqe == (unsigned long )((void *)0)) {
    return (-11);
  } else {
  }
  {
  cqe64 = cq->mcq.cqe_sz == 64 ? (struct mlx5_cqe64 *)cqe : (struct mlx5_cqe64 *)(cqe + 64U);
  cq->mcq.cons_index = cq->mcq.cons_index + 1U;
  __asm__ volatile ("lfence": : : "memory");
  opcode = (uint8_t )((int )cqe64->op_own >> 4);
  tmp___2 = __builtin_expect((unsigned int )opcode == 5U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___1 = __builtin_expect((unsigned long )cq->resize_buf != (unsigned long )((struct mlx5_ib_cq_buf *)0),
                               1L);
    }
    if (tmp___1 != 0L) {
      {
      free_cq_buf(dev, & cq->buf);
      cq->buf = *(cq->resize_buf);
      kfree((void const *)cq->resize_buf);
      cq->resize_buf = (struct mlx5_ib_cq_buf *)0;
      }
      goto repoll;
    } else {
      {
      tmp___0 = get_current();
      printk("\f%s:%s:%d:(pid %d): unexpected resize cqe\n", (char *)(& dev->ib_dev.name),
             "mlx5_poll_one", 407, tmp___0->pid);
      }
    }
  } else {
  }
  {
  tmp___3 = __fswab32(cqe64->sop_drop_qpn);
  qpn = tmp___3 & 16777215U;
  }
  if ((unsigned long )*cur_qp == (unsigned long )((struct mlx5_ib_qp *)0) || qpn != (*cur_qp)->ibqp.qp_num) {
    {
    mqp = __mlx5_qp_lookup(& dev->mdev, qpn);
    tmp___5 = __builtin_expect((unsigned long )mqp == (unsigned long )((struct mlx5_core_qp *)0),
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___4 = get_current();
      printk("\f%s:%s:%d:(pid %d): CQE@CQ %06x for unknown QPN %6x\n", (char *)(& dev->ib_dev.name),
             "mlx5_poll_one", 420, tmp___4->pid, cq->mcq.cqn, qpn);
      }
      return (-22);
    } else {
    }
    {
    *cur_qp = to_mibqp(mqp);
    }
  } else {
  }
  wc->qp = & (*cur_qp)->ibqp;
  {
  if ((int )opcode == 0) {
    goto case_0;
  } else {
  }
  if ((int )opcode == 1) {
    goto case_1;
  } else {
  }
  if ((int )opcode == 2) {
    goto case_2;
  } else {
  }
  if ((int )opcode == 3) {
    goto case_3;
  } else {
  }
  if ((int )opcode == 4) {
    goto case_4;
  } else {
  }
  if ((int )opcode == 5) {
    goto case_5;
  } else {
  }
  if ((int )opcode == 13) {
    goto case_13;
  } else {
  }
  if ((int )opcode == 14) {
    goto case_14;
  } else {
  }
  goto switch_break;
  case_0:
  {
  wq = & (*cur_qp)->sq;
  tmp___6 = __fswab16((int )cqe64->wqe_counter);
  wqe_ctr = tmp___6;
  idx = (int )wqe_ctr & (wq->wqe_cnt + -1);
  handle_good_req(wc, cqe64, wq, idx);
  handle_atomics(*cur_qp, cqe64, (int )wq->last_poll, (int )((u16 )idx));
  wc->wr_id = *(wq->wrid + (unsigned long )idx);
  wq->tail = *(wq->wqe_head + (unsigned long )idx) + 1U;
  wc->status = 0;
  }
  goto ldv_35260;
  case_1: ;
  case_2: ;
  case_3: ;
  case_4:
  {
  handle_responder(wc, cqe64, *cur_qp);
  wc->status = 0;
  }
  goto ldv_35260;
  case_5: ;
  goto ldv_35260;
  case_13: ;
  case_14:
  {
  err_cqe = (struct mlx5_err_cqe *)cqe64;
  mlx5_handle_error_cqe(dev, err_cqe, wc);
  descriptor.modname = "mlx5_ib";
  descriptor.function = "mlx5_poll_one";
  descriptor.filename = "drivers/infiniband/hw/mlx5/cq.c";
  descriptor.format = "%s:%s:%d:(pid %d): %s error cqe on cqn 0x%x:\n";
  descriptor.lineno = 454U;
  descriptor.flags = 0U;
  tmp___8 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___8 != 0L) {
    {
    tmp___7 = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): %s error cqe on cqn 0x%x:\n",
                       (char *)(& dev->ib_dev.name), "mlx5_poll_one", 454, tmp___7->pid,
                       (unsigned int )opcode == 13U ? (char *)"Requestor" : (char *)"Responder",
                       cq->mcq.cqn);
    }
  } else {
  }
  {
  descriptor___0.modname = "mlx5_ib";
  descriptor___0.function = "mlx5_poll_one";
  descriptor___0.filename = "drivers/infiniband/hw/mlx5/cq.c";
  descriptor___0.format = "%s:%s:%d:(pid %d): syndrome 0x%x, vendor syndrome 0x%x\n";
  descriptor___0.lineno = 456U;
  descriptor___0.flags = 0U;
  tmp___10 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___10 != 0L) {
    {
    tmp___9 = get_current();
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): syndrome 0x%x, vendor syndrome 0x%x\n",
                       (char *)(& dev->ib_dev.name), "mlx5_poll_one", 456, tmp___9->pid,
                       (int )err_cqe->syndrome, (int )err_cqe->vendor_err_synd);
    }
  } else {
  }
  if ((unsigned int )opcode == 13U) {
    {
    wq = & (*cur_qp)->sq;
    tmp___11 = __fswab16((int )cqe64->wqe_counter);
    wqe_ctr = tmp___11;
    idx = (int )wqe_ctr & (wq->wqe_cnt + -1);
    wc->wr_id = *(wq->wrid + (unsigned long )idx);
    wq->tail = *(wq->wqe_head + (unsigned long )idx) + 1U;
    }
  } else
  if ((unsigned long )(*cur_qp)->ibqp.srq != (unsigned long )((struct ib_srq *)0)) {
    {
    srq = to_msrq((*cur_qp)->ibqp.srq);
    tmp___12 = __fswab16((int )cqe64->wqe_counter);
    wqe_ctr = tmp___12;
    wc->wr_id = *(srq->wrid + (unsigned long )wqe_ctr);
    mlx5_ib_free_srq_wqe(srq, (int )wqe_ctr);
    }
  } else {
    wq = & (*cur_qp)->rq;
    wc->wr_id = *(wq->wrid + (unsigned long )(wq->tail & (unsigned int )(wq->wqe_cnt + -1)));
    wq->tail = wq->tail + 1U;
  }
  goto ldv_35260;
  switch_break: ;
  }
  ldv_35260: ;
  return (0);
}
}
int mlx5_ib_poll_cq(struct ib_cq *ibcq , int num_entries , struct ib_wc *wc )
{
  struct mlx5_ib_cq *cq ;
  struct mlx5_ib_cq *tmp ;
  struct mlx5_ib_qp *cur_qp ;
  unsigned long flags ;
  int npolled ;
  int err ;
  {
  {
  tmp = to_mcq(ibcq);
  cq = tmp;
  cur_qp = (struct mlx5_ib_qp *)0;
  err = 0;
  ldv___ldv_spin_lock_49(& cq->lock);
  npolled = 0;
  }
  goto ldv_35283;
  ldv_35282:
  {
  err = mlx5_poll_one(cq, & cur_qp, wc + (unsigned long )npolled);
  }
  if (err != 0) {
    goto ldv_35281;
  } else {
  }
  npolled = npolled + 1;
  ldv_35283: ;
  if (npolled < num_entries) {
    goto ldv_35282;
  } else {
  }
  ldv_35281: ;
  if (npolled != 0) {
    {
    mlx5_cq_set_ci(& cq->mcq);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_50(& cq->lock, flags);
  }
  if (err == 0 || err == -11) {
    return (npolled);
  } else {
    return (err);
  }
}
}
int mlx5_ib_arm_cq(struct ib_cq *ibcq , enum ib_cq_notify_flags flags )
{
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_cq *tmp___0 ;
  {
  {
  tmp = to_mdev(ibcq->device);
  tmp___0 = to_mcq(ibcq);
  mlx5_cq_arm(& tmp___0->mcq, ((unsigned int )flags & 3U) == 1U ? 16777216U : 0U,
              (tmp->mdev.priv.uuari.uars)->map, (spinlock_t *)0);
  }
  return (0);
}
}
static int alloc_cq_buf(struct mlx5_ib_dev *dev , struct mlx5_ib_cq_buf *buf , int nent ,
                        int cqe_size )
{
  int err ;
  {
  {
  err = mlx5_buf_alloc(& dev->mdev, nent * cqe_size, 8192, & buf->buf);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  buf->cqe_size = cqe_size;
  buf->nent = nent;
  return (0);
}
}
static int create_cq_user(struct mlx5_ib_dev *dev , struct ib_udata *udata , struct ib_ucontext *context ,
                          struct mlx5_ib_cq *cq , int entries , struct mlx5_create_cq_mbox_in **cqb ,
                          int *cqe_size , int *index , int *inlen )
{
  struct mlx5_ib_create_cq ucmd ;
  int page_shift ;
  int npages ;
  int ncont ;
  int err ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct mlx5_ib_ucontext *tmp___2 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  void *tmp___5 ;
  struct mlx5_ib_ucontext *tmp___6 ;
  struct mlx5_ib_ucontext *tmp___7 ;
  {
  {
  tmp = ib_copy_from_udata((void *)(& ucmd), udata, 24UL);
  }
  if (tmp != 0) {
    return (-14);
  } else {
  }
  if (ucmd.cqe_size != 64U && ucmd.cqe_size != 128U) {
    return (-22);
  } else {
  }
  {
  *cqe_size = (int )ucmd.cqe_size;
  cq->buf.umem = ib_umem_get(context, (unsigned long )ucmd.buf_addr, (size_t )((__u32 )entries * ucmd.cqe_size),
                             1, 1);
  tmp___1 = IS_ERR((void const *)cq->buf.umem);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = PTR_ERR((void const *)cq->buf.umem);
    err = (int )tmp___0;
    }
    return (err);
  } else {
  }
  {
  tmp___2 = to_mucontext(context);
  err = mlx5_ib_db_map_user(tmp___2, (unsigned long )ucmd.db_addr, & cq->db);
  }
  if (err != 0) {
    goto err_umem;
  } else {
  }
  {
  mlx5_ib_cont_pages(cq->buf.umem, ucmd.buf_addr, & npages, & page_shift, & ncont,
                     (int *)0);
  descriptor.modname = "mlx5_ib";
  descriptor.function = "create_cq_user";
  descriptor.filename = "drivers/infiniband/hw/mlx5/cq.c";
  descriptor.format = "%s:%s:%d:(pid %d): addr 0x%llx, size %u, npages %d, page_shift %d, ncont %d\n";
  descriptor.lineno = 572U;
  descriptor.flags = 0U;
  tmp___4 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    tmp___3 = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): addr 0x%llx, size %u, npages %d, page_shift %d, ncont %d\n",
                       (char *)(& dev->ib_dev.name), "create_cq_user", 572, tmp___3->pid,
                       ucmd.buf_addr, (__u32 )entries * ucmd.cqe_size, npages, page_shift,
                       ncont);
    }
  } else {
  }
  {
  *inlen = (int )((unsigned int )((unsigned long )ncont + 34UL) * 8U);
  tmp___5 = mlx5_vzalloc((unsigned long )*inlen);
  *cqb = (struct mlx5_create_cq_mbox_in *)tmp___5;
  }
  if ((unsigned long )*cqb == (unsigned long )((struct mlx5_create_cq_mbox_in *)0)) {
    err = -12;
    goto err_db;
  } else {
  }
  {
  mlx5_ib_populate_pas(dev, cq->buf.umem, page_shift, (__be64 *)(& (*cqb)->pas), 0);
  (*cqb)->ctx.log_pg_sz = (unsigned int )((u8 )page_shift) + 244U;
  tmp___6 = to_mucontext(context);
  *index = (int )(tmp___6->uuari.uars)->index;
  }
  return (0);
  err_db:
  {
  tmp___7 = to_mucontext(context);
  mlx5_ib_db_unmap_user(tmp___7, & cq->db);
  }
  err_umem:
  {
  ib_umem_release(cq->buf.umem);
  }
  return (err);
}
}
static void destroy_cq_user(struct mlx5_ib_cq *cq , struct ib_ucontext *context )
{
  struct mlx5_ib_ucontext *tmp ;
  {
  {
  tmp = to_mucontext(context);
  mlx5_ib_db_unmap_user(tmp, & cq->db);
  ib_umem_release(cq->buf.umem);
  }
  return;
}
}
static void init_cq_buf(struct mlx5_ib_cq *cq , struct mlx5_ib_cq_buf *buf )
{
  int i ;
  void *cqe ;
  struct mlx5_cqe64 *cqe64 ;
  {
  i = 0;
  goto ldv_35327;
  ldv_35326:
  {
  cqe = get_cqe_from_buf(buf, i, buf->cqe_size);
  cqe64 = buf->cqe_size == 64 ? (struct mlx5_cqe64 *)cqe : (struct mlx5_cqe64 *)(cqe + 64U);
  cqe64->op_own = 240U;
  i = i + 1;
  }
  ldv_35327: ;
  if (i < buf->nent) {
    goto ldv_35326;
  } else {
  }
  return;
}
}
static int create_cq_kernel(struct mlx5_ib_dev *dev , struct mlx5_ib_cq *cq , int entries ,
                            int cqe_size , struct mlx5_create_cq_mbox_in **cqb , int *index ,
                            int *inlen )
{
  int err ;
  void *tmp ;
  {
  {
  err = mlx5_db_alloc(& dev->mdev, & cq->db);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  cq->mcq.set_ci_db = cq->db.db;
  cq->mcq.arm_db = cq->db.db + 1UL;
  *(cq->mcq.set_ci_db) = 0U;
  *(cq->mcq.arm_db) = 0U;
  cq->mcq.cqe_sz = cqe_size;
  err = alloc_cq_buf(dev, & cq->buf, entries, cqe_size);
  }
  if (err != 0) {
    goto err_db;
  } else {
  }
  {
  init_cq_buf(cq, & cq->buf);
  *inlen = (int )((unsigned int )((unsigned long )cq->buf.buf.npages + 34UL) * 8U);
  tmp = mlx5_vzalloc((unsigned long )*inlen);
  *cqb = (struct mlx5_create_cq_mbox_in *)tmp;
  }
  if ((unsigned long )*cqb == (unsigned long )((struct mlx5_create_cq_mbox_in *)0)) {
    err = -12;
    goto err_buf;
  } else {
  }
  {
  mlx5_fill_page_array(& cq->buf.buf, (__be64 *)(& (*cqb)->pas));
  (*cqb)->ctx.log_pg_sz = (unsigned int )((u8 )cq->buf.buf.page_shift) + 244U;
  *index = (int )(dev->mdev.priv.uuari.uars)->index;
  }
  return (0);
  err_buf:
  {
  free_cq_buf(dev, & cq->buf);
  }
  err_db:
  {
  mlx5_db_free(& dev->mdev, & cq->db);
  }
  return (err);
}
}
static void destroy_cq_kernel(struct mlx5_ib_dev *dev , struct mlx5_ib_cq *cq )
{
  {
  {
  free_cq_buf(dev, & cq->buf);
  mlx5_db_free(& dev->mdev, & cq->db);
  }
  return;
}
}
struct ib_cq *mlx5_ib_create_cq(struct ib_device *ibdev , int entries , int vector ,
                                struct ib_ucontext *context , struct ib_udata *udata )
{
  struct mlx5_create_cq_mbox_in *cqb ;
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_cq *cq ;
  int index ;
  int inlen ;
  int cqe_size ;
  int irqn ;
  int eqn ;
  int err ;
  void *tmp___0 ;
  unsigned long tmp___70 ;
  void *tmp___71 ;
  void *tmp___72 ;
  void *tmp___73 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int tmp___74 ;
  int tmp___142 ;
  __u32 tmp___143 ;
  __u16 tmp___144 ;
  __u64 tmp___145 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___146 ;
  long tmp___147 ;
  int tmp___148 ;
  void *tmp___149 ;
  {
  {
  cqb = (struct mlx5_create_cq_mbox_in *)0;
  tmp = to_mdev(ibdev);
  dev = tmp;
  index = index;
  inlen = inlen;
  }
  if (entries < 0) {
    {
    tmp___0 = ERR_PTR(-22L);
    }
    return ((struct ib_cq *)tmp___0);
  } else {
  }
  {
  tmp___70 = __roundup_pow_of_two((unsigned long )(entries + 1));
  entries = (int )tmp___70;
  }
  if ((u32 )entries > dev->mdev.caps.max_cqes) {
    {
    tmp___71 = ERR_PTR(-22L);
    }
    return ((struct ib_cq *)tmp___71);
  } else {
  }
  {
  tmp___72 = kzalloc(584UL, 208U);
  cq = (struct mlx5_ib_cq *)tmp___72;
  }
  if ((unsigned long )cq == (unsigned long )((struct mlx5_ib_cq *)0)) {
    {
    tmp___73 = ERR_PTR(-12L);
    }
    return ((struct ib_cq *)tmp___73);
  } else {
  }
  {
  cq->ibcq.cqe = entries + -1;
  __mutex_init(& cq->resize_mutex, "&cq->resize_mutex", & __key);
  spinlock_check(& cq->lock);
  __raw_spin_lock_init(& cq->lock.__annonCompField19.rlock, "&(&cq->lock)->rlock",
                       & __key___0);
  cq->resize_buf = (struct mlx5_ib_cq_buf *)0;
  cq->resize_umem = (struct ib_umem *)0;
  }
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    {
    err = create_cq_user(dev, udata, context, cq, entries, & cqb, & cqe_size, & index,
                         & inlen);
    }
    if (err != 0) {
      goto err_create;
    } else {
    }
  } else {
    {
    cqe_size = 64;
    err = create_cq_kernel(dev, cq, entries, cqe_size, & cqb, & index, & inlen);
    }
    if (err != 0) {
      goto err_create;
    } else {
    }
  }
  {
  cq->cqe_size = cqe_size;
  tmp___74 = cqe_sz_to_mlx_sz((int )((u8 )cqe_size));
  cqb->ctx.cqe_sz_flags = (int )((u8 )tmp___74) << 5U;
  tmp___142 = __ilog2_u32((u32 )entries);
  tmp___143 = __fswab32((__u32 )((tmp___142 << 24) | index));
  cqb->ctx.log_sz_usr_page = tmp___143;
  err = mlx5_vector2eqn(dev, vector, & eqn, & irqn);
  }
  if (err != 0) {
    goto err_cqb;
  } else {
  }
  {
  tmp___144 = __fswab16((int )((__u16 )eqn));
  cqb->ctx.c_eqn = tmp___144;
  tmp___145 = __fswab64(cq->db.dma);
  cqb->ctx.db_record_addr = tmp___145;
  err = mlx5_core_create_cq(& dev->mdev, & cq->mcq, cqb, inlen);
  }
  if (err != 0) {
    goto err_cqb;
  } else {
  }
  {
  descriptor.modname = "mlx5_ib";
  descriptor.function = "mlx5_ib_create_cq";
  descriptor.filename = "drivers/infiniband/hw/mlx5/cq.c";
  descriptor.format = "%s:%s:%d:(pid %d): cqn 0x%x\n";
  descriptor.lineno = 723U;
  descriptor.flags = 0U;
  tmp___147 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___147 != 0L) {
    {
    tmp___146 = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): cqn 0x%x\n", (char *)(& dev->ib_dev.name),
                       "mlx5_ib_create_cq", 723, tmp___146->pid, cq->mcq.cqn);
    }
  } else {
  }
  cq->mcq.irqn = irqn;
  cq->mcq.comp = & mlx5_ib_cq_comp;
  cq->mcq.event = & mlx5_ib_cq_event;
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    {
    tmp___148 = ib_copy_to_udata(udata, (void *)(& cq->mcq.cqn), 4UL);
    }
    if (tmp___148 != 0) {
      err = -14;
      goto err_cmd;
    } else {
    }
  } else {
  }
  {
  mlx5_vfree((void const *)cqb);
  }
  return (& cq->ibcq);
  err_cmd:
  {
  mlx5_core_destroy_cq(& dev->mdev, & cq->mcq);
  }
  err_cqb:
  {
  mlx5_vfree((void const *)cqb);
  }
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    {
    destroy_cq_user(cq, context);
    }
  } else {
    {
    destroy_cq_kernel(dev, cq);
    }
  }
  err_create:
  {
  kfree((void const *)cq);
  tmp___149 = ERR_PTR((long )err);
  }
  return ((struct ib_cq *)tmp___149);
}
}
int mlx5_ib_destroy_cq(struct ib_cq *cq )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_cq *mcq ;
  struct mlx5_ib_cq *tmp___0 ;
  struct ib_ucontext *context ;
  {
  {
  tmp = to_mdev(cq->device);
  dev = tmp;
  tmp___0 = to_mcq(cq);
  mcq = tmp___0;
  context = (struct ib_ucontext *)0;
  }
  if ((unsigned long )cq->uobject != (unsigned long )((struct ib_uobject *)0)) {
    context = (cq->uobject)->context;
  } else {
  }
  {
  mlx5_core_destroy_cq(& dev->mdev, & mcq->mcq);
  }
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    {
    destroy_cq_user(mcq, context);
    }
  } else {
    {
    destroy_cq_kernel(dev, mcq);
    }
  }
  {
  kfree((void const *)mcq);
  }
  return (0);
}
}
static int is_equal_rsn(struct mlx5_cqe64 *cqe64 , u32 rsn )
{
  __u32 tmp ;
  {
  {
  tmp = __fswab32(cqe64->sop_drop_qpn);
  }
  return (rsn == (tmp & 16777215U));
}
}
void __mlx5_ib_cq_clean(struct mlx5_ib_cq *cq , u32 rsn , struct mlx5_ib_srq *srq )
{
  struct mlx5_cqe64 *cqe64 ;
  struct mlx5_cqe64 *dest64 ;
  void *cqe ;
  void *dest ;
  u32 prod_index ;
  int nfreed ;
  u8 owner_bit ;
  void *tmp ;
  __u16 tmp___0 ;
  __u32 tmp___1 ;
  int tmp___2 ;
  {
  nfreed = 0;
  if ((unsigned long )cq == (unsigned long )((struct mlx5_ib_cq *)0)) {
    return;
  } else {
  }
  prod_index = cq->mcq.cons_index;
  goto ldv_35392;
  ldv_35391: ;
  if (prod_index == cq->mcq.cons_index + (u32 )cq->ibcq.cqe) {
    goto ldv_35390;
  } else {
  }
  prod_index = prod_index + 1U;
  ldv_35392:
  {
  tmp = get_sw_cqe(cq, (int )prod_index);
  }
  if ((unsigned long )tmp != (unsigned long )((void *)0)) {
    goto ldv_35391;
  } else {
  }
  ldv_35390: ;
  goto ldv_35394;
  ldv_35393:
  {
  cqe = get_cqe(cq, (int )(prod_index & (u32 )cq->ibcq.cqe));
  cqe64 = cq->mcq.cqe_sz == 64 ? (struct mlx5_cqe64 *)cqe : (struct mlx5_cqe64 *)(cqe + 64U);
  tmp___2 = is_equal_rsn(cqe64, rsn);
  }
  if (tmp___2 != 0) {
    if ((unsigned long )srq != (unsigned long )((struct mlx5_ib_srq *)0)) {
      {
      tmp___1 = __fswab32(cqe64->srqn);
      }
      if ((tmp___1 & 16777215U) != 0U) {
        {
        tmp___0 = __fswab16((int )cqe64->wqe_counter);
        mlx5_ib_free_srq_wqe(srq, (int )tmp___0);
        }
      } else {
      }
    } else {
    }
    nfreed = nfreed + 1;
  } else
  if (nfreed != 0) {
    {
    dest = get_cqe(cq, (int )((prod_index + (u32 )nfreed) & (u32 )cq->ibcq.cqe));
    dest64 = cq->mcq.cqe_sz == 64 ? (struct mlx5_cqe64 *)dest : (struct mlx5_cqe64 *)(dest + 64U);
    owner_bit = (unsigned int )dest64->op_own & 1U;
    memcpy(dest, (void const *)cqe, (size_t )cq->mcq.cqe_sz);
    dest64->op_own = (u8 )((int )((signed char )owner_bit) | ((int )((signed char )dest64->op_own) & -2));
    }
  } else {
  }
  ldv_35394:
  prod_index = prod_index - 1U;
  if ((int )prod_index - (int )cq->mcq.cons_index >= 0) {
    goto ldv_35393;
  } else {
  }
  if (nfreed != 0) {
    {
    cq->mcq.cons_index = cq->mcq.cons_index + (u32 )nfreed;
    __asm__ volatile ("sfence": : : "memory");
    mlx5_cq_set_ci(& cq->mcq);
    }
  } else {
  }
  return;
}
}
void mlx5_ib_cq_clean(struct mlx5_ib_cq *cq , u32 qpn , struct mlx5_ib_srq *srq )
{
  {
  if ((unsigned long )cq == (unsigned long )((struct mlx5_ib_cq *)0)) {
    return;
  } else {
  }
  {
  ldv_spin_lock_irq_51(& cq->lock);
  __mlx5_ib_cq_clean(cq, qpn, srq);
  ldv_spin_unlock_irq_52(& cq->lock);
  }
  return;
}
}
int mlx5_ib_modify_cq(struct ib_cq *cq , u16 cq_count , u16 cq_period )
{
  struct mlx5_modify_cq_mbox_in *in ;
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_cq *mcq ;
  struct mlx5_ib_cq *tmp___0 ;
  int err ;
  u32 fsel ;
  void *tmp___1 ;
  __u32 tmp___2 ;
  __u16 tmp___3 ;
  __u16 tmp___4 ;
  __u32 tmp___5 ;
  struct task_struct *tmp___6 ;
  {
  {
  tmp = to_mdev(cq->device);
  dev = tmp;
  tmp___0 = to_mcq(cq);
  mcq = tmp___0;
  }
  if ((dev->mdev.caps.flags & 536870912ULL) == 0ULL) {
    return (-38);
  } else {
  }
  {
  tmp___1 = kzalloc(272UL, 208U);
  in = (struct mlx5_modify_cq_mbox_in *)tmp___1;
  }
  if ((unsigned long )in == (unsigned long )((struct mlx5_modify_cq_mbox_in *)0)) {
    return (-12);
  } else {
  }
  {
  tmp___2 = __fswab32(mcq->mcq.cqn);
  in->cqn = tmp___2;
  fsel = 3U;
  tmp___3 = __fswab16((int )cq_period);
  in->ctx.cq_period = tmp___3;
  tmp___4 = __fswab16((int )cq_count);
  in->ctx.cq_max_count = tmp___4;
  tmp___5 = __fswab32(fsel);
  in->field_select = tmp___5;
  err = mlx5_core_modify_cq(& dev->mdev, & mcq->mcq, in, 272);
  kfree((void const *)in);
  }
  if (err != 0) {
    {
    tmp___6 = get_current();
    printk("\f%s:%s:%d:(pid %d): modify cq 0x%x failed\n", (char *)(& dev->ib_dev.name),
           "mlx5_ib_modify_cq", 865, tmp___6->pid, mcq->mcq.cqn);
    }
  } else {
  }
  return (err);
}
}
static int resize_user(struct mlx5_ib_dev *dev , struct mlx5_ib_cq *cq , int entries ,
                       struct ib_udata *udata , int *npas , int *page_shift , int *cqe_size )
{
  struct mlx5_ib_resize_cq ucmd ;
  struct ib_umem *umem ;
  int err ;
  int npages ;
  struct ib_ucontext *context ;
  long tmp ;
  long tmp___0 ;
  {
  {
  context = (cq->buf.umem)->context;
  err = ib_copy_from_udata((void *)(& ucmd), udata, 16UL);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if (*((unsigned long *)(& ucmd) + 1UL) != 0UL) {
    return (-22);
  } else {
  }
  {
  umem = ib_umem_get(context, (unsigned long )ucmd.buf_addr, (size_t )(entries * (int )ucmd.cqe_size),
                     1, 1);
  tmp___0 = IS_ERR((void const *)umem);
  }
  if (tmp___0 != 0L) {
    {
    tmp = PTR_ERR((void const *)umem);
    err = (int )tmp;
    }
    return (err);
  } else {
  }
  {
  mlx5_ib_cont_pages(umem, ucmd.buf_addr, & npages, page_shift, npas, (int *)0);
  cq->resize_umem = umem;
  *cqe_size = (int )ucmd.cqe_size;
  }
  return (0);
}
}
static void un_resize_user(struct mlx5_ib_cq *cq )
{
  {
  {
  ib_umem_release(cq->resize_umem);
  }
  return;
}
}
static int resize_kernel(struct mlx5_ib_dev *dev , struct mlx5_ib_cq *cq , int entries ,
                         int cqe_size )
{
  int err ;
  void *tmp ;
  {
  {
  tmp = kzalloc(56UL, 208U);
  cq->resize_buf = (struct mlx5_ib_cq_buf *)tmp;
  }
  if ((unsigned long )cq->resize_buf == (unsigned long )((struct mlx5_ib_cq_buf *)0)) {
    return (-12);
  } else {
  }
  {
  err = alloc_cq_buf(dev, cq->resize_buf, entries, cqe_size);
  }
  if (err != 0) {
    goto ex;
  } else {
  }
  {
  init_cq_buf(cq, cq->resize_buf);
  }
  return (0);
  ex:
  {
  kfree((void const *)cq->resize_buf);
  }
  return (err);
}
}
static void un_resize_kernel(struct mlx5_ib_dev *dev , struct mlx5_ib_cq *cq )
{
  {
  {
  free_cq_buf(dev, cq->resize_buf);
  cq->resize_buf = (struct mlx5_ib_cq_buf *)0;
  }
  return;
}
}
static int copy_resize_cqes(struct mlx5_ib_cq *cq )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_cqe64 *scqe64 ;
  struct mlx5_cqe64 *dcqe64 ;
  void *start_cqe ;
  void *scqe ;
  void *dcqe ;
  int ssize ;
  int dsize ;
  int i ;
  u8 sw_own ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  {
  {
  tmp = to_mdev(cq->ibcq.device);
  dev = tmp;
  ssize = cq->buf.cqe_size;
  dsize = (cq->resize_buf)->cqe_size;
  }
  if (ssize != dsize) {
    {
    tmp___0 = get_current();
    printk("\f%s:%s:%d:(pid %d): resize from different cqe size is not supported\n",
           (char *)(& dev->ib_dev.name), "copy_resize_cqes", 952, tmp___0->pid);
    }
    return (-22);
  } else {
  }
  {
  i = (int )cq->mcq.cons_index;
  scqe = get_sw_cqe(cq, i);
  scqe64 = ssize == 64 ? (struct mlx5_cqe64 *)scqe : (struct mlx5_cqe64 *)(scqe + 64U);
  start_cqe = scqe;
  }
  if ((unsigned long )scqe == (unsigned long )((void *)0)) {
    {
    tmp___1 = get_current();
    printk("\f%s:%s:%d:(pid %d): expected cqe in sw ownership\n", (char *)(& dev->ib_dev.name),
           "copy_resize_cqes", 961, tmp___1->pid);
    }
    return (-22);
  } else {
  }
  goto ldv_35456;
  ldv_35455:
  {
  dcqe = get_cqe_from_buf(cq->resize_buf, (i + 1) & (cq->resize_buf)->nent, dsize);
  dcqe64 = dsize == 64 ? (struct mlx5_cqe64 *)dcqe : (struct mlx5_cqe64 *)(dcqe + 64U);
  sw_own = sw_ownership_bit(i + 1, (cq->resize_buf)->nent);
  memcpy(dcqe, (void const *)scqe, (size_t )dsize);
  dcqe64->op_own = (u8 )(((int )((signed char )dcqe64->op_own) & -2) | (int )((signed char )sw_own));
  i = i + 1;
  scqe = get_sw_cqe(cq, i);
  scqe64 = ssize == 64 ? (struct mlx5_cqe64 *)scqe : (struct mlx5_cqe64 *)(scqe + 64U);
  }
  if ((unsigned long )scqe == (unsigned long )((void *)0)) {
    {
    tmp___2 = get_current();
    printk("\f%s:%s:%d:(pid %d): expected cqe in sw ownership\n", (char *)(& dev->ib_dev.name),
           "copy_resize_cqes", 978, tmp___2->pid);
    }
    return (-22);
  } else {
  }
  if ((unsigned long )scqe == (unsigned long )start_cqe) {
    {
    printk("\fresize CQ failed to get resize CQE, CQN 0x%x\n", cq->mcq.cqn);
    }
    return (-12);
  } else {
  }
  ldv_35456: ;
  if ((unsigned int )((int )scqe64->op_own >> 4) != 5U) {
    goto ldv_35455;
  } else {
  }
  cq->mcq.cons_index = cq->mcq.cons_index + 1U;
  return (0);
}
}
int mlx5_ib_resize_cq(struct ib_cq *ibcq , int entries , struct ib_udata *udata )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_cq *cq ;
  struct mlx5_ib_cq *tmp___0 ;
  struct mlx5_modify_cq_mbox_in *in ;
  int err ;
  int npas ;
  int page_shift ;
  int inlen ;
  int cqe_size ;
  unsigned long flags ;
  unsigned long tmp___70 ;
  void *tmp___71 ;
  int tmp___72 ;
  int tmp___140 ;
  __u32 tmp___141 ;
  __u32 tmp___142 ;
  struct mlx5_ib_cq_buf tbuf ;
  int resized ;
  {
  {
  tmp = to_mdev(ibcq->device);
  dev = tmp;
  tmp___0 = to_mcq(ibcq);
  cq = tmp___0;
  cqe_size = cqe_size;
  }
  if ((dev->mdev.caps.flags & 1073741824ULL) == 0ULL) {
    {
    printk("\016Firmware does not support resize CQ\n");
    }
    return (-38);
  } else {
  }
  if (entries <= 0) {
    return (-22);
  } else {
  }
  {
  tmp___70 = __roundup_pow_of_two((unsigned long )(entries + 1));
  entries = (int )tmp___70;
  }
  if ((u32 )entries > dev->mdev.caps.max_cqes + 1U) {
    return (-22);
  } else {
  }
  if (entries == ibcq->cqe + 1) {
    return (0);
  } else {
  }
  {
  ldv_mutex_lock_53(& cq->resize_mutex);
  }
  if ((unsigned long )udata != (unsigned long )((struct ib_udata *)0)) {
    {
    err = resize_user(dev, cq, entries, udata, & npas, & page_shift, & cqe_size);
    }
  } else {
    {
    cqe_size = 64;
    err = resize_kernel(dev, cq, entries, cqe_size);
    }
    if (err == 0) {
      npas = (cq->resize_buf)->buf.npages;
      page_shift = (cq->resize_buf)->buf.page_shift;
    } else {
    }
  }
  if (err != 0) {
    goto ex;
  } else {
  }
  {
  inlen = (int )((unsigned int )((unsigned long )npas + 34UL) * 8U);
  tmp___71 = mlx5_vzalloc((unsigned long )inlen);
  in = (struct mlx5_modify_cq_mbox_in *)tmp___71;
  }
  if ((unsigned long )in == (unsigned long )((struct mlx5_modify_cq_mbox_in *)0)) {
    err = -12;
    goto ex_resize;
  } else {
  }
  if ((unsigned long )udata != (unsigned long )((struct ib_udata *)0)) {
    {
    mlx5_ib_populate_pas(dev, cq->resize_umem, page_shift, (__be64 *)(& in->pas),
                         0);
    }
  } else {
    {
    mlx5_fill_page_array(& (cq->resize_buf)->buf, (__be64 *)(& in->pas));
    }
  }
  {
  in->field_select = 117440512U;
  in->ctx.log_pg_sz = (unsigned int )((u8 )page_shift) + 244U;
  tmp___72 = cqe_sz_to_mlx_sz((int )((u8 )cqe_size));
  in->ctx.cqe_sz_flags = (int )((u8 )tmp___72) << 5U;
  in->ctx.page_offset = 0U;
  tmp___140 = __ilog2_u32((u32 )entries);
  tmp___141 = __fswab32((__u32 )(tmp___140 << 24));
  in->ctx.log_sz_usr_page = tmp___141;
  in->hdr.opmod = 256U;
  tmp___142 = __fswab32(cq->mcq.cqn);
  in->cqn = tmp___142;
  err = mlx5_core_modify_cq(& dev->mdev, & cq->mcq, in, inlen);
  }
  if (err != 0) {
    goto ex_alloc;
  } else {
  }
  if ((unsigned long )udata != (unsigned long )((struct ib_udata *)0)) {
    {
    cq->ibcq.cqe = entries + -1;
    ib_umem_release(cq->buf.umem);
    cq->buf.umem = cq->resize_umem;
    cq->resize_umem = (struct ib_umem *)0;
    }
  } else {
    {
    resized = 0;
    ldv___ldv_spin_lock_54(& cq->lock);
    }
    if ((unsigned long )cq->resize_buf != (unsigned long )((struct mlx5_ib_cq_buf *)0)) {
      {
      err = copy_resize_cqes(cq);
      }
      if (err == 0) {
        {
        tbuf = cq->buf;
        cq->buf = *(cq->resize_buf);
        kfree((void const *)cq->resize_buf);
        cq->resize_buf = (struct mlx5_ib_cq_buf *)0;
        resized = 1;
        }
      } else {
      }
    } else {
    }
    {
    cq->ibcq.cqe = entries + -1;
    ldv_spin_unlock_irqrestore_50(& cq->lock, flags);
    }
    if (resized != 0) {
      {
      free_cq_buf(dev, & tbuf);
      }
    } else {
    }
  }
  {
  ldv_mutex_unlock_56(& cq->resize_mutex);
  mlx5_vfree((void const *)in);
  }
  return (0);
  ex_alloc:
  {
  mlx5_vfree((void const *)in);
  }
  ex_resize: ;
  if ((unsigned long )udata != (unsigned long )((struct ib_udata *)0)) {
    {
    un_resize_user(cq);
    }
  } else {
    {
    un_resize_kernel(dev, cq);
    }
  }
  ex:
  {
  ldv_mutex_unlock_57(& cq->resize_mutex);
  }
  return (err);
}
}
int mlx5_ib_get_cqe_size(struct mlx5_ib_dev *dev , struct ib_cq *ibcq )
{
  struct mlx5_ib_cq *cq ;
  {
  if ((unsigned long )ibcq == (unsigned long )((struct ib_cq *)0)) {
    return (128);
  } else {
  }
  {
  cq = to_mcq(ibcq);
  }
  return (cq->cqe_size);
}
}
static void ldv___ldv_spin_lock_49(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_cq();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_50(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_ib_cq();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_51(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_cq();
  spin_lock_irq(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_52(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_ib_cq();
  spin_unlock_irq(lock);
  }
  return;
}
}
static void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_resize_mutex_of_mlx5_ib_cq(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_54(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_cq();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_resize_mutex_of_mlx5_ib_cq(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_resize_mutex_of_mlx5_ib_cq(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_db_page_mutex_of_mlx5_ib_ucontext(struct mutex *lock ) ;
void ldv_mutex_unlock_db_page_mutex_of_mlx5_ib_ucontext(struct mutex *lock ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head, head->next);
  }
  return;
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
static void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
int mlx5_ib_db_map_user(struct mlx5_ib_ucontext *context , unsigned long virt , struct mlx5_db *db )
{
  struct mlx5_ib_user_db_page *page ;
  struct ib_umem_chunk *chunk ;
  int err ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct list_head const *__mptr___1 ;
  {
  {
  err = 0;
  ldv_mutex_lock_49(& context->db_page_mutex);
  __mptr = (struct list_head const *)context->db_page_list.next;
  page = (struct mlx5_ib_user_db_page *)__mptr;
  }
  goto ldv_35027;
  ldv_35026: ;
  if (page->user_virt == (virt & 0xfffffffffffff000UL)) {
    goto found;
  } else {
  }
  __mptr___0 = (struct list_head const *)page->list.next;
  page = (struct mlx5_ib_user_db_page *)__mptr___0;
  ldv_35027: ;
  if ((unsigned long )(& page->list) != (unsigned long )(& context->db_page_list)) {
    goto ldv_35026;
  } else {
  }
  {
  tmp = kmalloc(40UL, 208U);
  page = (struct mlx5_ib_user_db_page *)tmp;
  }
  if ((unsigned long )page == (unsigned long )((struct mlx5_ib_user_db_page *)0)) {
    err = -12;
    goto out;
  } else {
  }
  {
  page->user_virt = virt & 0xfffffffffffff000UL;
  page->refcnt = 0;
  page->umem = ib_umem_get(& context->ibucontext, virt & 0xfffffffffffff000UL, 4096UL,
                           0, 0);
  tmp___1 = IS_ERR((void const *)page->umem);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = PTR_ERR((void const *)page->umem);
    err = (int )tmp___0;
    kfree((void const *)page);
    }
    goto out;
  } else {
  }
  {
  list_add(& page->list, & context->db_page_list);
  }
  found:
  __mptr___1 = (struct list_head const *)(page->umem)->chunk_list.next;
  chunk = (struct ib_umem_chunk *)__mptr___1;
  db->dma = ((struct scatterlist *)(& chunk->page_list))->dma_address + ((unsigned long long )virt & 4095ULL);
  db->u.user_page = page;
  page->refcnt = page->refcnt + 1;
  out:
  {
  ldv_mutex_unlock_50(& context->db_page_mutex);
  }
  return (err);
}
}
void mlx5_ib_db_unmap_user(struct mlx5_ib_ucontext *context , struct mlx5_db *db )
{
  {
  {
  ldv_mutex_lock_51(& context->db_page_mutex);
  (db->u.user_page)->refcnt = (db->u.user_page)->refcnt - 1;
  }
  if ((db->u.user_page)->refcnt == 0) {
    {
    list_del(& (db->u.user_page)->list);
    ib_umem_release((db->u.user_page)->umem);
    kfree((void const *)db->u.user_page);
    }
  } else {
  }
  {
  ldv_mutex_unlock_52(& context->db_page_mutex);
  }
  return;
}
}
static void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_db_page_mutex_of_mlx5_ib_ucontext(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_db_page_mutex_of_mlx5_ib_ucontext(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_db_page_mutex_of_mlx5_ib_ucontext(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_db_page_mutex_of_mlx5_ib_ucontext(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_49___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_51___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_77(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock_of_mlx5_uuar_info(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_mlx5_uuar_info(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_mlx5_ib_qp(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_mlx5_ib_qp(struct mutex *lock ) ;
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
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
__inline static struct task_struct *get_current___1(void)
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
  goto ldv_3090;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3090;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3090;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3090;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3090: ;
  return (pfo_ret__);
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
static void ldv___ldv_spin_lock_54___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_57(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_71(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_75(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_lock_of_mlx5_bf(void) ;
void ldv_spin_unlock_lock_of_mlx5_bf(void) ;
void ldv_spin_lock_lock_of_mlx5_ib_wq(void) ;
void ldv_spin_unlock_lock_of_mlx5_ib_wq(void) ;
static void ldv_mutex_unlock_50___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_52___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 ) ;
__inline static void ldv_spin_lock_69(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_72(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_51(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_51(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_51(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_51(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_51(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_60___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_60___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_60___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_73(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_52(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_52(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_52(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_52(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_52(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_74(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_74(spinlock_t *lock , unsigned long flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int ib_modify_qp_is_ok(enum ib_qp_state , enum ib_qp_state , enum ib_qp_type ,
                              enum ib_qp_attr_mask , enum rdma_link_layer ) ;
__inline static void *mlx5_vzalloc___0(unsigned long size )
{
  void *rtn ;
  {
  {
  rtn = kzalloc(size, 720U);
  }
  if ((unsigned long )rtn == (unsigned long )((void *)0)) {
    {
    rtn = vzalloc(size);
    }
  } else {
  }
  return (rtn);
}
}
__inline static u8 mlx5_mkey_variant(u32 mkey )
{
  {
  return ((u8 )mkey);
}
}
extern int mlx5_core_create_qp(struct mlx5_core_dev * , struct mlx5_core_qp * , struct mlx5_create_qp_mbox_in * ,
                               int ) ;
extern int mlx5_core_qp_modify(struct mlx5_core_dev * , enum mlx5_qp_state , enum mlx5_qp_state ,
                               struct mlx5_modify_qp_mbox_in * , int , struct mlx5_core_qp * ) ;
extern int mlx5_core_destroy_qp(struct mlx5_core_dev * , struct mlx5_core_qp * ) ;
extern int mlx5_core_qp_query(struct mlx5_core_dev * , struct mlx5_core_qp * , struct mlx5_query_qp_mbox_out * ,
                              int ) ;
extern int mlx5_core_xrcd_alloc(struct mlx5_core_dev * , u32 * ) ;
extern int mlx5_core_xrcd_dealloc(struct mlx5_core_dev * , u32 ) ;
__inline static struct mlx5_ib_xrcd *to_mxrcd(struct ib_xrcd *ibxrcd )
{
  struct ib_xrcd const *__mptr ;
  {
  __mptr = (struct ib_xrcd const *)ibxrcd;
  return ((struct mlx5_ib_xrcd *)__mptr);
}
}
__inline static struct mlx5_ib_qp *to_mqp(struct ib_qp *ibqp )
{
  struct ib_qp const *__mptr ;
  {
  __mptr = (struct ib_qp const *)ibqp;
  return ((struct mlx5_ib_qp *)__mptr);
}
}
__inline static struct mlx5_ib_fast_reg_page_list *to_mfrpl(struct ib_fast_reg_page_list *ibfrpl )
{
  struct ib_fast_reg_page_list const *__mptr ;
  {
  __mptr = (struct ib_fast_reg_page_list const *)ibfrpl;
  return ((struct mlx5_ib_fast_reg_page_list *)__mptr);
}
}
__inline static struct mlx5_ib_ah *to_mah(struct ib_ah *ibah )
{
  struct ib_ah const *__mptr ;
  {
  __mptr = (struct ib_ah const *)ibah;
  return ((struct mlx5_ib_ah *)__mptr);
}
}
int mlx5_ib_get_buf_offset(u64 addr , int page_shift , u32 *offset ) ;
__inline static u8 convert_access(int acc )
{
  {
  return ((u8 )((((((acc & 8) != 0 ? 64 : 0) | ((acc & 2) != 0 ? 32 : 0)) | ((acc & 4) != 0 ? 16 : 0)) | (acc & 1 ? 8 : 0)) | 4));
}
}
static int wq_signature ;
static u32 const mlx5_ib_opcode[241U] =
  { 8U, 9U, 10U, 11U,
        16U, 17U, 18U, 0U,
        1U, 0U, 37U, 37U,
        20U, 21U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        37U};
static int is_qp0(enum ib_qp_type qp_type )
{
  {
  return ((unsigned int )qp_type == 0U);
}
}
static int is_qp1(enum ib_qp_type qp_type )
{
  {
  return ((unsigned int )qp_type == 1U);
}
}
static int is_sqp(enum ib_qp_type qp_type )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = is_qp0(qp_type);
  }
  if (tmp != 0) {
    tmp___1 = 1;
  } else {
    {
    tmp___0 = is_qp1(qp_type);
    }
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  }
  return (tmp___1);
}
}
static void *get_wqe(struct mlx5_ib_qp *qp , int offset )
{
  void *tmp ;
  {
  {
  tmp = mlx5_buf_offset(& qp->buf, offset);
  }
  return (tmp);
}
}
static void *get_recv_wqe(struct mlx5_ib_qp *qp , int n )
{
  void *tmp ;
  {
  {
  tmp = get_wqe(qp, qp->rq.offset + (n << qp->rq.wqe_shift));
  }
  return (tmp);
}
}
void *mlx5_get_send_wqe(struct mlx5_ib_qp *qp , int n )
{
  void *tmp ;
  {
  {
  tmp = get_wqe(qp, qp->sq.offset + (n << 6));
  }
  return (tmp);
}
}
static void mlx5_ib_qp_event(struct mlx5_core_qp *qp , int type )
{
  struct ib_qp *ibqp ;
  struct mlx5_ib_qp *tmp ;
  struct ib_event event ;
  struct mlx5_ib_qp *tmp___0 ;
  struct mlx5_ib_qp *tmp___1 ;
  {
  {
  tmp = to_mibqp(qp);
  ibqp = & tmp->ibqp;
  }
  if (type == 1) {
    {
    tmp___0 = to_mibqp(qp);
    tmp___1 = to_mibqp(qp);
    tmp___0->port = tmp___1->alt_port;
    }
  } else {
  }
  if ((unsigned long )ibqp->event_handler != (unsigned long )((void (*)(struct ib_event * ,
                                                                        void * ))0)) {
    event.device = ibqp->device;
    event.element.qp = ibqp;
    {
    if (type == 1) {
      goto case_1;
    } else {
    }
    if (type == 2) {
      goto case_2;
    } else {
    }
    if (type == 3) {
      goto case_3;
    } else {
    }
    if (type == 19) {
      goto case_19;
    } else {
    }
    if (type == 5) {
      goto case_5;
    } else {
    }
    if (type == 7) {
      goto case_7;
    } else {
    }
    if (type == 16) {
      goto case_16;
    } else {
    }
    if (type == 17) {
      goto case_17;
    } else {
    }
    goto switch_default;
    case_1:
    event.event = 6;
    goto ldv_36040;
    case_2:
    event.event = 4;
    goto ldv_36040;
    case_3:
    event.event = 5;
    goto ldv_36040;
    case_19:
    event.event = 16;
    goto ldv_36040;
    case_5:
    event.event = 1;
    goto ldv_36040;
    case_7:
    event.event = 7;
    goto ldv_36040;
    case_16:
    event.event = 2;
    goto ldv_36040;
    case_17:
    event.event = 3;
    goto ldv_36040;
    switch_default:
    {
    printk("\fmlx5_ib: Unexpected event type %d on QP %06x\n", type, qp->qpn);
    }
    return;
    switch_break: ;
    }
    ldv_36040:
    {
    (*(ibqp->event_handler))(& event, ibqp->qp_context);
    }
  } else {
  }
  return;
}
}
static int set_rq_size(struct mlx5_ib_dev *dev , struct ib_qp_cap *cap , int has_rq ,
                       struct mlx5_ib_qp *qp , struct mlx5_ib_create_qp *ucmd )
{
  int wqe_size ;
  int wq_size ;
  unsigned long tmp___68 ;
  unsigned long tmp___137 ;
  int __max1 ;
  int __max2 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___138 ;
  long tmp___139 ;
  int tmp___207 ;
  {
  if (cap->max_recv_wr > (u32 )dev->mdev.caps.max_wqes) {
    return (-22);
  } else {
  }
  if (has_rq == 0) {
    qp->rq.max_gs = 0;
    qp->rq.wqe_cnt = 0;
    qp->rq.wqe_shift = 0;
  } else
  if ((unsigned long )ucmd != (unsigned long )((struct mlx5_ib_create_qp *)0)) {
    qp->rq.wqe_cnt = (int )ucmd->rq_wqe_count;
    qp->rq.wqe_shift = (int )ucmd->rq_wqe_shift;
    qp->rq.max_gs = (int )((unsigned int )((unsigned long )(1 << qp->rq.wqe_shift) / 16UL) - (unsigned int )qp->wq_sig);
    qp->rq.max_post = qp->rq.wqe_cnt;
  } else {
    {
    wqe_size = qp->wq_sig != 0 ? 16 : 0;
    wqe_size = (int )((unsigned int )wqe_size + cap->max_recv_sge * 16U);
    tmp___68 = __roundup_pow_of_two((unsigned long )wqe_size);
    wqe_size = (int )tmp___68;
    tmp___137 = __roundup_pow_of_two((unsigned long )cap->max_recv_wr);
    wq_size = (int )((unsigned int )tmp___137 * (unsigned int )((unsigned long )wqe_size));
    __max1 = wq_size;
    __max2 = 64;
    wq_size = __max1 > __max2 ? __max1 : __max2;
    qp->rq.wqe_cnt = wq_size / wqe_size;
    }
    if (wqe_size > dev->mdev.caps.max_rq_desc_sz) {
      {
      descriptor.modname = "mlx5_ib";
      descriptor.function = "set_rq_size";
      descriptor.filename = "drivers/infiniband/hw/mlx5/qp.c";
      descriptor.format = "%s:%s:%d:(pid %d): wqe_size %d, max %d\n";
      descriptor.lineno = 188U;
      descriptor.flags = 0U;
      tmp___139 = __builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___139 != 0L) {
        {
        tmp___138 = get_current___1();
        __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): wqe_size %d, max %d\n",
                           (char *)(& dev->ib_dev.name), "set_rq_size", 188, tmp___138->pid,
                           wqe_size, dev->mdev.caps.max_rq_desc_sz);
        }
      } else {
      }
      return (-22);
    } else {
    }
    {
    tmp___207 = __ilog2_u32((u32 )wqe_size);
    qp->rq.wqe_shift = tmp___207;
    qp->rq.max_gs = (int )((unsigned int )((unsigned long )(1 << qp->rq.wqe_shift) / 16UL) - (unsigned int )qp->wq_sig);
    qp->rq.max_post = qp->rq.wqe_cnt;
    }
  }
  return (0);
}
}
static int sq_overhead(enum ib_qp_type qp_type )
{
  int size ;
  {
  size = 0;
  {
  if ((unsigned int )qp_type == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )qp_type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )qp_type == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )qp_type == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )qp_type == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )qp_type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )qp_type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )qp_type == 4096U) {
    goto case_4096;
  } else {
  }
  goto switch_default;
  case_9:
  size = (int )((unsigned int )size + 16U);
  case_2:
  size = (int )((unsigned int )size + 48U);
  goto ldv_36069;
  case_10: ;
  return (0);
  case_3:
  size = (int )((unsigned int )size + 144U);
  goto ldv_36069;
  case_4: ;
  case_0: ;
  case_1:
  size = (int )((unsigned int )size + 64U);
  goto ldv_36069;
  case_4096:
  size = (int )((unsigned int )size + 128U);
  goto ldv_36069;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_36069: ;
  return (size);
}
}
static int calc_send_wqe(struct ib_qp_init_attr *attr )
{
  int inl_size ;
  int size ;
  int __max1 ;
  int __max2 ;
  {
  {
  inl_size = 0;
  size = sq_overhead(attr->qp_type);
  }
  if (size < 0) {
    return (size);
  } else {
  }
  if (attr->cap.max_inline_data != 0U) {
    inl_size = (int )(((unsigned int )size + attr->cap.max_inline_data) + 4U);
  } else {
  }
  size = (int )((unsigned int )size + attr->cap.max_send_sge * 16U);
  __max1 = inl_size;
  __max2 = size;
  return (((__max1 > __max2 ? __max1 : __max2) + 63) & -64);
}
}
static int calc_sq_size(struct mlx5_ib_dev *dev , struct ib_qp_init_attr *attr , struct mlx5_ib_qp *qp )
{
  int wqe_size ;
  int wq_size ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  unsigned long tmp___72 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___73 ;
  long tmp___74 ;
  {
  if (attr->cap.max_send_wr == 0U) {
    return (0);
  } else {
  }
  {
  wqe_size = calc_send_wqe(attr);
  descriptor.modname = "mlx5_ib";
  descriptor.function = "calc_sq_size";
  descriptor.filename = "drivers/infiniband/hw/mlx5/qp.c";
  descriptor.format = "%s:%s:%d:(pid %d): wqe_size %d\n";
  descriptor.lineno = 273U;
  descriptor.flags = 0U;
  tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = get_current___1();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): wqe_size %d\n", (char *)(& dev->ib_dev.name),
                       "calc_sq_size", 273, tmp->pid, wqe_size);
    }
  } else {
  }
  if (wqe_size < 0) {
    return (wqe_size);
  } else {
  }
  if (wqe_size > dev->mdev.caps.max_sq_desc_sz) {
    {
    descriptor___0.modname = "mlx5_ib";
    descriptor___0.function = "calc_sq_size";
    descriptor___0.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___0.format = "%s:%s:%d:(pid %d): wqe_size(%d) > max_sq_desc_sz(%d)\n";
    descriptor___0.lineno = 279U;
    descriptor___0.flags = 0U;
    tmp___2 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___1 = get_current___1();
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): wqe_size(%d) > max_sq_desc_sz(%d)\n",
                         (char *)(& dev->ib_dev.name), "calc_sq_size", 279, tmp___1->pid,
                         wqe_size, dev->mdev.caps.max_sq_desc_sz);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  tmp___3 = sq_overhead(attr->qp_type);
  qp->max_inline_data = (int )((unsigned int )(wqe_size - tmp___3) - 4U);
  attr->cap.max_inline_data = (u32 )qp->max_inline_data;
  tmp___72 = __roundup_pow_of_two((unsigned long )(attr->cap.max_send_wr * (u32 )wqe_size));
  wq_size = (int )tmp___72;
  qp->sq.wqe_cnt = wq_size / 64;
  }
  if (qp->sq.wqe_cnt > dev->mdev.caps.max_wqes) {
    {
    descriptor___1.modname = "mlx5_ib";
    descriptor___1.function = "calc_sq_size";
    descriptor___1.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___1.format = "%s:%s:%d:(pid %d): wqe count(%d) exceeds limits(%d)\n";
    descriptor___1.lineno = 291U;
    descriptor___1.flags = 0U;
    tmp___74 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___74 != 0L) {
      {
      tmp___73 = get_current___1();
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): wqe count(%d) exceeds limits(%d)\n",
                         (char *)(& dev->ib_dev.name), "calc_sq_size", 291, tmp___73->pid,
                         qp->sq.wqe_cnt, dev->mdev.caps.max_wqes);
      }
    } else {
    }
    return (-12);
  } else {
  }
  qp->sq.wqe_shift = 6;
  qp->sq.max_gs = (int )attr->cap.max_send_sge;
  qp->sq.max_post = wq_size / wqe_size;
  attr->cap.max_send_wr = (u32 )qp->sq.max_post;
  return (wq_size);
}
}
static int set_user_buf_size(struct mlx5_ib_dev *dev , struct mlx5_ib_qp *qp , struct mlx5_ib_create_qp *ucmd )
{
  int desc_sz ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  int tmp___67 ;
  struct task_struct *tmp___68 ;
  {
  desc_sz = 1 << qp->sq.wqe_shift;
  if (desc_sz > dev->mdev.caps.max_sq_desc_sz) {
    {
    tmp = get_current___1();
    printk("\f%s:%s:%d:(pid %d): desc_sz %d, max_sq_desc_sz %d\n", (char *)(& dev->ib_dev.name),
           "set_user_buf_size", 310, tmp->pid, desc_sz, dev->mdev.caps.max_sq_desc_sz);
    }
    return (-22);
  } else {
  }
  if (ucmd->sq_wqe_count != 0U) {
    {
    tmp___67 = __ilog2_u32(ucmd->sq_wqe_count);
    }
    if ((__u32 )(1 << tmp___67) != ucmd->sq_wqe_count) {
      {
      tmp___0 = get_current___1();
      printk("\f%s:%s:%d:(pid %d): sq_wqe_count %d, sq_wqe_count %d\n", (char *)(& dev->ib_dev.name),
             "set_user_buf_size", 316, tmp___0->pid, ucmd->sq_wqe_count, ucmd->sq_wqe_count);
      }
      return (-22);
    } else {
    }
  } else {
  }
  qp->sq.wqe_cnt = (int )ucmd->sq_wqe_count;
  if (qp->sq.wqe_cnt > dev->mdev.caps.max_wqes) {
    {
    tmp___68 = get_current___1();
    printk("\f%s:%s:%d:(pid %d): wqe_cnt %d, max_wqes %d\n", (char *)(& dev->ib_dev.name),
           "set_user_buf_size", 324, tmp___68->pid, qp->sq.wqe_cnt, dev->mdev.caps.max_wqes);
    }
    return (-22);
  } else {
  }
  qp->buf_size = (qp->rq.wqe_cnt << qp->rq.wqe_shift) + (qp->sq.wqe_cnt << 6);
  return (0);
}
}
static int qp_has_rq(struct ib_qp_init_attr *attr )
{
  {
  if ((((unsigned int )attr->qp_type - 9U <= 1U || (unsigned long )attr->srq != (unsigned long )((struct ib_srq *)0)) || (unsigned int )attr->qp_type == 4096U) || attr->cap.max_recv_wr == 0U) {
    return (0);
  } else {
  }
  return (1);
}
}
static int first_med_uuar(void)
{
  {
  return (1);
}
}
static int next_uuar(int n )
{
  {
  n = n + 1;
  goto ldv_36119;
  ldv_36118:
  n = n + 1;
  ldv_36119: ;
  if ((n % 4 & 2) != 0) {
    goto ldv_36118;
  } else {
  }
  return (n);
}
}
static int num_med_uuar(struct mlx5_uuar_info *uuari )
{
  int n ;
  {
  n = (uuari->num_uars * 2 - uuari->num_low_latency_uuars) + -1;
  return (0 > n ? 0 : n);
}
}
static int max_uuari(struct mlx5_uuar_info *uuari )
{
  {
  return (uuari->num_uars * 4);
}
}
static int first_hi_uuar(struct mlx5_uuar_info *uuari )
{
  int med ;
  int i ;
  int t ;
  int tmp ;
  {
  {
  med = num_med_uuar(uuari);
  t = 0;
  i = first_med_uuar();
  }
  ldv_36134:
  t = t + 1;
  if (t == med) {
    {
    tmp = next_uuar(i);
    }
    return (tmp);
  } else {
  }
  {
  i = next_uuar(i);
  }
  goto ldv_36134;
  return (0);
}
}
static int alloc_high_class_uuar(struct mlx5_uuar_info *uuari )
{
  int i ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  i = first_hi_uuar(uuari);
  }
  goto ldv_36140;
  ldv_36139:
  {
  tmp___0 = variable_test_bit((long )i, (unsigned long const volatile *)uuari->bitmap);
  }
  if (tmp___0 == 0) {
    {
    set_bit((long )i, (unsigned long volatile *)uuari->bitmap);
    *(uuari->count + (unsigned long )i) = *(uuari->count + (unsigned long )i) + 1U;
    }
    return (i);
  } else {
  }
  {
  i = next_uuar(i);
  }
  ldv_36140:
  {
  tmp___1 = max_uuari(uuari);
  }
  if (i < tmp___1) {
    goto ldv_36139;
  } else {
  }
  return (-12);
}
}
static int alloc_med_class_uuar(struct mlx5_uuar_info *uuari )
{
  int minidx ;
  int tmp ;
  int i ;
  int tmp___0 ;
  {
  {
  tmp = first_med_uuar();
  minidx = tmp;
  i = first_med_uuar();
  }
  goto ldv_36148;
  ldv_36147: ;
  if (*(uuari->count + (unsigned long )i) < *(uuari->count + (unsigned long )minidx)) {
    minidx = i;
  } else {
  }
  {
  i = next_uuar(i);
  }
  ldv_36148:
  {
  tmp___0 = first_hi_uuar(uuari);
  }
  if (i < tmp___0) {
    goto ldv_36147;
  } else {
  }
  *(uuari->count + (unsigned long )minidx) = *(uuari->count + (unsigned long )minidx) + 1U;
  return (minidx);
}
}
static int alloc_uuar(struct mlx5_uuar_info *uuari , enum mlx5_ib_latency_class lat )
{
  int uuarn ;
  {
  {
  uuarn = -22;
  ldv_mutex_lock_49___0(& uuari->lock);
  }
  {
  if ((unsigned int )lat == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )lat == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )lat == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )lat == 3U) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0:
  uuarn = 0;
  *(uuari->count + (unsigned long )uuarn) = *(uuari->count + (unsigned long )uuarn) + 1U;
  goto ldv_36156;
  case_1: ;
  if (uuari->ver <= 1U) {
    uuarn = -12;
  } else {
    {
    uuarn = alloc_med_class_uuar(uuari);
    }
  }
  goto ldv_36156;
  case_2: ;
  if (uuari->ver <= 1U) {
    uuarn = -12;
  } else {
    {
    uuarn = alloc_high_class_uuar(uuari);
    }
  }
  goto ldv_36156;
  case_3:
  uuarn = 2;
  goto ldv_36156;
  switch_break: ;
  }
  ldv_36156:
  {
  ldv_mutex_unlock_50___0(& uuari->lock);
  }
  return (uuarn);
}
}
static void free_med_class_uuar(struct mlx5_uuar_info *uuari , int uuarn )
{
  {
  {
  clear_bit((long )uuarn, (unsigned long volatile *)uuari->bitmap);
  *(uuari->count + (unsigned long )uuarn) = *(uuari->count + (unsigned long )uuarn) - 1U;
  }
  return;
}
}
static void free_high_class_uuar(struct mlx5_uuar_info *uuari , int uuarn )
{
  {
  {
  clear_bit((long )uuarn, (unsigned long volatile *)uuari->bitmap);
  *(uuari->count + (unsigned long )uuarn) = *(uuari->count + (unsigned long )uuarn) - 1U;
  }
  return;
}
}
static void free_uuar(struct mlx5_uuar_info *uuari , int uuarn )
{
  int nuuars ;
  int high_uuar ;
  {
  {
  nuuars = uuari->num_uars * 4;
  high_uuar = nuuars - uuari->num_low_latency_uuars;
  ldv_mutex_lock_51___0(& uuari->lock);
  }
  if (uuarn == 0) {
    *(uuari->count + (unsigned long )uuarn) = *(uuari->count + (unsigned long )uuarn) - 1U;
    goto out;
  } else {
  }
  if (uuarn < high_uuar) {
    {
    free_med_class_uuar(uuari, uuarn);
    }
    goto out;
  } else {
  }
  {
  free_high_class_uuar(uuari, uuarn);
  }
  out:
  {
  ldv_mutex_unlock_52___0(& uuari->lock);
  }
  return;
}
}
static enum mlx5_qp_state to_mlx5_state(enum ib_qp_state state )
{
  {
  {
  if ((unsigned int )state == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )state == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )state == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )state == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )state == 6U) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (0);
  case_1: ;
  return (1);
  case_2: ;
  return (2);
  case_3: ;
  return (3);
  case_4: ;
  return (5);
  case_5: ;
  return (4);
  case_6: ;
  return (6);
  switch_default: ;
  return (4294967295L);
  switch_break: ;
  }
}
}
static int to_mlx5_st(enum ib_qp_type type )
{
  {
  {
  if ((unsigned int )type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )type == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )type == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )type == 4096U) {
    goto case_4096;
  } else {
  }
  if ((unsigned int )type == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )type == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )type == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )type == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )type == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )type == 11U) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_2: ;
  return (0);
  case_3: ;
  return (1);
  case_4: ;
  return (2);
  case_4096: ;
  return (12);
  case_9: ;
  case_10: ;
  return (3);
  case_0: ;
  return (7);
  case_1: ;
  return (8);
  case_5: ;
  return (10);
  case_6: ;
  return (9);
  case_8: ;
  case_11: ;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
}
}
static int uuarn_to_uar_index(struct mlx5_uuar_info *uuari , int uuarn )
{
  {
  return ((int )(uuari->uars + (unsigned long )(uuarn / 4))->index);
}
}
static int create_user_qp(struct mlx5_ib_dev *dev , struct ib_pd *pd , struct mlx5_ib_qp *qp ,
                          struct ib_udata *udata , struct mlx5_create_qp_mbox_in **in ,
                          struct mlx5_ib_create_qp_resp *resp , int *inlen )
{
  struct mlx5_ib_ucontext *context ;
  struct mlx5_ib_create_qp ucmd ;
  int page_shift ;
  int uar_index ;
  int npages ;
  u32 offset ;
  int uuarn ;
  int ncont ;
  int err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  struct task_struct *tmp___9 ;
  struct _ddebug descriptor___4 ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___5 ;
  struct task_struct *tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  struct task_struct *tmp___16 ;
  struct _ddebug descriptor___6 ;
  struct task_struct *tmp___17 ;
  long tmp___18 ;
  void *tmp___19 ;
  __u32 tmp___20 ;
  __u32 tmp___21 ;
  __u32 tmp___22 ;
  struct _ddebug descriptor___7 ;
  struct task_struct *tmp___23 ;
  long tmp___24 ;
  struct _ddebug descriptor___8 ;
  struct task_struct *tmp___25 ;
  long tmp___26 ;
  {
  {
  page_shift = 0;
  offset = 0U;
  ncont = 0;
  err = ib_copy_from_udata((void *)(& ucmd), udata, 32UL);
  }
  if (err != 0) {
    {
    descriptor.modname = "mlx5_ib";
    descriptor.function = "create_user_qp";
    descriptor.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor.format = "%s:%s:%d:(pid %d): copy failed\n";
    descriptor.lineno = 544U;
    descriptor.flags = 0U;
    tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      tmp = get_current___1();
      __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): copy failed\n", (char *)(& dev->ib_dev.name),
                         "create_user_qp", 544, tmp->pid);
      }
    } else {
    }
    return (err);
  } else {
  }
  {
  context = to_mucontext((pd->uobject)->context);
  uuarn = alloc_uuar(& context->uuari, 2);
  }
  if (uuarn < 0) {
    {
    descriptor___0.modname = "mlx5_ib";
    descriptor___0.function = "create_user_qp";
    descriptor___0.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___0.format = "%s:%s:%d:(pid %d): failed to allocate low latency UUAR\n";
    descriptor___0.lineno = 554U;
    descriptor___0.flags = 0U;
    tmp___2 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___1 = get_current___1();
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): failed to allocate low latency UUAR\n",
                         (char *)(& dev->ib_dev.name), "create_user_qp", 554, tmp___1->pid);
      }
    } else {
    }
    {
    descriptor___1.modname = "mlx5_ib";
    descriptor___1.function = "create_user_qp";
    descriptor___1.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___1.format = "%s:%s:%d:(pid %d): reverting to medium latency\n";
    descriptor___1.lineno = 555U;
    descriptor___1.flags = 0U;
    tmp___4 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      tmp___3 = get_current___1();
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): reverting to medium latency\n",
                         (char *)(& dev->ib_dev.name), "create_user_qp", 555, tmp___3->pid);
      }
    } else {
    }
    {
    uuarn = alloc_uuar(& context->uuari, 1);
    }
    if (uuarn < 0) {
      {
      descriptor___2.modname = "mlx5_ib";
      descriptor___2.function = "create_user_qp";
      descriptor___2.filename = "drivers/infiniband/hw/mlx5/qp.c";
      descriptor___2.format = "%s:%s:%d:(pid %d): failed to allocate medium latency UUAR\n";
      descriptor___2.lineno = 558U;
      descriptor___2.flags = 0U;
      tmp___6 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___6 != 0L) {
        {
        tmp___5 = get_current___1();
        __dynamic_pr_debug(& descriptor___2, "%s:%s:%d:(pid %d): failed to allocate medium latency UUAR\n",
                           (char *)(& dev->ib_dev.name), "create_user_qp", 558, tmp___5->pid);
        }
      } else {
      }
      {
      descriptor___3.modname = "mlx5_ib";
      descriptor___3.function = "create_user_qp";
      descriptor___3.filename = "drivers/infiniband/hw/mlx5/qp.c";
      descriptor___3.format = "%s:%s:%d:(pid %d): reverting to high latency\n";
      descriptor___3.lineno = 559U;
      descriptor___3.flags = 0U;
      tmp___8 = __builtin_expect((long )descriptor___3.flags & 1L, 0L);
      }
      if (tmp___8 != 0L) {
        {
        tmp___7 = get_current___1();
        __dynamic_pr_debug(& descriptor___3, "%s:%s:%d:(pid %d): reverting to high latency\n",
                           (char *)(& dev->ib_dev.name), "create_user_qp", 559, tmp___7->pid);
        }
      } else {
      }
      {
      uuarn = alloc_uuar(& context->uuari, 0);
      }
      if (uuarn < 0) {
        {
        tmp___9 = get_current___1();
        printk("\f%s:%s:%d:(pid %d): uuar allocation failed\n", (char *)(& dev->ib_dev.name),
               "create_user_qp", 562, tmp___9->pid);
        }
        return (uuarn);
      } else {
      }
    } else {
    }
  } else {
  }
  {
  uar_index = uuarn_to_uar_index(& context->uuari, uuarn);
  descriptor___4.modname = "mlx5_ib";
  descriptor___4.function = "create_user_qp";
  descriptor___4.filename = "drivers/infiniband/hw/mlx5/qp.c";
  descriptor___4.format = "%s:%s:%d:(pid %d): uuarn 0x%x, uar_index 0x%x\n";
  descriptor___4.lineno = 569U;
  descriptor___4.flags = 0U;
  tmp___11 = __builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___11 != 0L) {
    {
    tmp___10 = get_current___1();
    __dynamic_pr_debug(& descriptor___4, "%s:%s:%d:(pid %d): uuarn 0x%x, uar_index 0x%x\n",
                       (char *)(& dev->ib_dev.name), "create_user_qp", 569, tmp___10->pid,
                       uuarn, uar_index);
    }
  } else {
  }
  {
  err = set_user_buf_size(dev, qp, & ucmd);
  }
  if (err != 0) {
    goto err_uuar;
  } else {
  }
  if (ucmd.buf_addr != 0ULL && qp->buf_size != 0) {
    {
    qp->umem = ib_umem_get((pd->uobject)->context, (unsigned long )ucmd.buf_addr,
                           (size_t )qp->buf_size, 0, 0);
    tmp___15 = IS_ERR((void const *)qp->umem);
    }
    if (tmp___15 != 0L) {
      {
      descriptor___5.modname = "mlx5_ib";
      descriptor___5.function = "create_user_qp";
      descriptor___5.filename = "drivers/infiniband/hw/mlx5/qp.c";
      descriptor___5.format = "%s:%s:%d:(pid %d): umem_get failed\n";
      descriptor___5.lineno = 579U;
      descriptor___5.flags = 0U;
      tmp___13 = __builtin_expect((long )descriptor___5.flags & 1L, 0L);
      }
      if (tmp___13 != 0L) {
        {
        tmp___12 = get_current___1();
        __dynamic_pr_debug(& descriptor___5, "%s:%s:%d:(pid %d): umem_get failed\n",
                           (char *)(& dev->ib_dev.name), "create_user_qp", 579, tmp___12->pid);
        }
      } else {
      }
      {
      tmp___14 = PTR_ERR((void const *)qp->umem);
      err = (int )tmp___14;
      }
      goto err_uuar;
    } else {
    }
  } else {
    qp->umem = (struct ib_umem *)0;
  }
  if ((unsigned long )qp->umem != (unsigned long )((struct ib_umem *)0)) {
    {
    mlx5_ib_cont_pages(qp->umem, ucmd.buf_addr, & npages, & page_shift, & ncont, (int *)0);
    err = mlx5_ib_get_buf_offset(ucmd.buf_addr, page_shift, & offset);
    }
    if (err != 0) {
      {
      tmp___16 = get_current___1();
      printk("\f%s:%s:%d:(pid %d): bad offset\n", (char *)(& dev->ib_dev.name), "create_user_qp",
             592, tmp___16->pid);
      }
      goto err_umem;
    } else {
    }
    {
    descriptor___6.modname = "mlx5_ib";
    descriptor___6.function = "create_user_qp";
    descriptor___6.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___6.format = "%s:%s:%d:(pid %d): addr 0x%llx, size %d, npages %d, page_shift %d, ncont %d, offset %d\n";
    descriptor___6.lineno = 596U;
    descriptor___6.flags = 0U;
    tmp___18 = __builtin_expect((long )descriptor___6.flags & 1L, 0L);
    }
    if (tmp___18 != 0L) {
      {
      tmp___17 = get_current___1();
      __dynamic_pr_debug(& descriptor___6, "%s:%s:%d:(pid %d): addr 0x%llx, size %d, npages %d, page_shift %d, ncont %d, offset %d\n",
                         (char *)(& dev->ib_dev.name), "create_user_qp", 596, tmp___17->pid,
                         ucmd.buf_addr, qp->buf_size, npages, page_shift, ncont, offset);
      }
    } else {
    }
  } else {
  }
  {
  *inlen = (int )((unsigned int )((unsigned long )ncont + 34UL) * 8U);
  tmp___19 = mlx5_vzalloc___0((unsigned long )*inlen);
  *in = (struct mlx5_create_qp_mbox_in *)tmp___19;
  }
  if ((unsigned long )*in == (unsigned long )((struct mlx5_create_qp_mbox_in *)0)) {
    err = -12;
    goto err_umem;
  } else {
  }
  if ((unsigned long )qp->umem != (unsigned long )((struct ib_umem *)0)) {
    {
    mlx5_ib_populate_pas(dev, qp->umem, page_shift, (__be64 *)(& (*in)->pas), 0);
    }
  } else {
  }
  {
  tmp___20 = __fswab32((__u32 )((page_shift + -12) << 24));
  (*in)->ctx.log_pg_sz_remote_qpn = tmp___20;
  tmp___21 = __fswab32(offset << 6);
  (*in)->ctx.params2 = tmp___21;
  tmp___22 = __fswab32((__u32 )uar_index);
  (*in)->ctx.qp_counter_set_usr_page = tmp___22;
  resp->uuar_index = (__u32 )uuarn;
  qp->uuarn = uuarn;
  err = mlx5_ib_db_map_user(context, (unsigned long )ucmd.db_addr, & qp->db);
  }
  if (err != 0) {
    {
    descriptor___7.modname = "mlx5_ib";
    descriptor___7.function = "create_user_qp";
    descriptor___7.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___7.format = "%s:%s:%d:(pid %d): map failed\n";
    descriptor___7.lineno = 617U;
    descriptor___7.flags = 0U;
    tmp___24 = __builtin_expect((long )descriptor___7.flags & 1L, 0L);
    }
    if (tmp___24 != 0L) {
      {
      tmp___23 = get_current___1();
      __dynamic_pr_debug(& descriptor___7, "%s:%s:%d:(pid %d): map failed\n", (char *)(& dev->ib_dev.name),
                         "create_user_qp", 617, tmp___23->pid);
      }
    } else {
    }
    goto err_free;
  } else {
  }
  {
  err = ib_copy_to_udata(udata, (void *)resp, 4UL);
  }
  if (err != 0) {
    {
    descriptor___8.modname = "mlx5_ib";
    descriptor___8.function = "create_user_qp";
    descriptor___8.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___8.format = "%s:%s:%d:(pid %d): copy failed\n";
    descriptor___8.lineno = 623U;
    descriptor___8.flags = 0U;
    tmp___26 = __builtin_expect((long )descriptor___8.flags & 1L, 0L);
    }
    if (tmp___26 != 0L) {
      {
      tmp___25 = get_current___1();
      __dynamic_pr_debug(& descriptor___8, "%s:%s:%d:(pid %d): copy failed\n", (char *)(& dev->ib_dev.name),
                         "create_user_qp", 623, tmp___25->pid);
      }
    } else {
    }
    goto err_unmap;
  } else {
  }
  qp->create_type = 0;
  return (0);
  err_unmap:
  {
  mlx5_ib_db_unmap_user(context, & qp->db);
  }
  err_free:
  {
  mlx5_vfree((void const *)*in);
  }
  err_umem: ;
  if ((unsigned long )qp->umem != (unsigned long )((struct ib_umem *)0)) {
    {
    ib_umem_release(qp->umem);
    }
  } else {
  }
  err_uuar:
  {
  free_uuar(& context->uuari, uuarn);
  }
  return (err);
}
}
static void destroy_qp_user(struct ib_pd *pd , struct mlx5_ib_qp *qp )
{
  struct mlx5_ib_ucontext *context ;
  {
  {
  context = to_mucontext((pd->uobject)->context);
  mlx5_ib_db_unmap_user(context, & qp->db);
  }
  if ((unsigned long )qp->umem != (unsigned long )((struct ib_umem *)0)) {
    {
    ib_umem_release(qp->umem);
    }
  } else {
  }
  {
  free_uuar(& context->uuari, qp->uuarn);
  }
  return;
}
}
static int create_kernel_qp(struct mlx5_ib_dev *dev , struct ib_qp_init_attr *init_attr ,
                            struct mlx5_ib_qp *qp , struct mlx5_create_qp_mbox_in **in ,
                            int *inlen )
{
  enum mlx5_ib_latency_class lc ;
  struct mlx5_uuar_info *uuari ;
  int uar_index ;
  int uuarn ;
  int err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  void *tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___8 ;
  long tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  {
  lc = 0;
  uuari = & dev->mdev.priv.uuari;
  if ((int )init_attr->create_flags != 0) {
    return (-22);
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 4096U) {
    lc = 3;
  } else {
  }
  {
  uuarn = alloc_uuar(uuari, lc);
  }
  if (uuarn < 0) {
    {
    descriptor.modname = "mlx5_ib";
    descriptor.function = "create_kernel_qp";
    descriptor.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor.format = "%s:%s:%d:(pid %d): \n";
    descriptor.lineno = 676U;
    descriptor.flags = 0U;
    tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      tmp = get_current___1();
      __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): \n", (char *)(& dev->ib_dev.name),
                         "create_kernel_qp", 676, tmp->pid);
      }
    } else {
    }
    return (-12);
  } else {
  }
  {
  qp->bf = uuari->bfs + (unsigned long )uuarn;
  uar_index = (int )((qp->bf)->uar)->index;
  err = calc_sq_size(dev, init_attr, qp);
  }
  if (err < 0) {
    {
    descriptor___0.modname = "mlx5_ib";
    descriptor___0.function = "create_kernel_qp";
    descriptor___0.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___0.format = "%s:%s:%d:(pid %d): err %d\n";
    descriptor___0.lineno = 685U;
    descriptor___0.flags = 0U;
    tmp___2 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___1 = get_current___1();
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): err %d\n", (char *)(& dev->ib_dev.name),
                         "create_kernel_qp", 685, tmp___1->pid, err);
      }
    } else {
    }
    goto err_uuar;
  } else {
  }
  {
  qp->rq.offset = 0;
  qp->sq.offset = qp->rq.wqe_cnt << qp->rq.wqe_shift;
  qp->buf_size = err + (qp->rq.wqe_cnt << qp->rq.wqe_shift);
  err = mlx5_buf_alloc(& dev->mdev, qp->buf_size, 8192, & qp->buf);
  }
  if (err != 0) {
    {
    descriptor___1.modname = "mlx5_ib";
    descriptor___1.function = "create_kernel_qp";
    descriptor___1.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___1.format = "%s:%s:%d:(pid %d): err %d\n";
    descriptor___1.lineno = 695U;
    descriptor___1.flags = 0U;
    tmp___4 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      tmp___3 = get_current___1();
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): err %d\n", (char *)(& dev->ib_dev.name),
                         "create_kernel_qp", 695, tmp___3->pid, err);
      }
    } else {
    }
    goto err_uuar;
  } else {
  }
  {
  qp->sq.qend = mlx5_get_send_wqe(qp, qp->sq.wqe_cnt);
  *inlen = (int )((unsigned int )((unsigned long )qp->buf.npages + 34UL) * 8U);
  tmp___5 = mlx5_vzalloc___0((unsigned long )*inlen);
  *in = (struct mlx5_create_qp_mbox_in *)tmp___5;
  }
  if ((unsigned long )*in == (unsigned long )((struct mlx5_create_qp_mbox_in *)0)) {
    err = -12;
    goto err_buf;
  } else {
  }
  {
  tmp___6 = __fswab32((__u32 )uar_index);
  (*in)->ctx.qp_counter_set_usr_page = tmp___6;
  tmp___7 = __fswab32((__u32 )((qp->buf.page_shift + -12) << 24));
  (*in)->ctx.log_pg_sz_remote_qpn = tmp___7;
  (*in)->ctx.params1 = (*in)->ctx.params1 | 524288U;
  (*in)->ctx.sq_crq_size = (__be16 )((unsigned int )(*in)->ctx.sq_crq_size | 4096U);
  mlx5_fill_page_array(& qp->buf, (__be64 *)(& (*in)->pas));
  err = mlx5_db_alloc(& dev->mdev, & qp->db);
  }
  if (err != 0) {
    {
    descriptor___2.modname = "mlx5_ib";
    descriptor___2.function = "create_kernel_qp";
    descriptor___2.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___2.format = "%s:%s:%d:(pid %d): err %d\n";
    descriptor___2.lineno = 717U;
    descriptor___2.flags = 0U;
    tmp___9 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___9 != 0L) {
      {
      tmp___8 = get_current___1();
      __dynamic_pr_debug(& descriptor___2, "%s:%s:%d:(pid %d): err %d\n", (char *)(& dev->ib_dev.name),
                         "create_kernel_qp", 717, tmp___8->pid, err);
      }
    } else {
    }
    goto err_free;
  } else {
  }
  {
  *(qp->db.db) = 0U;
  *(qp->db.db + 1UL) = 0U;
  tmp___10 = kmalloc((unsigned long )qp->sq.wqe_cnt * 8UL, 208U);
  qp->sq.wrid = (u64 *)tmp___10;
  tmp___11 = kmalloc((unsigned long )qp->sq.wqe_cnt * 4UL, 208U);
  qp->sq.wr_data = (u32 *)tmp___11;
  tmp___12 = kmalloc((unsigned long )qp->rq.wqe_cnt * 8UL, 208U);
  qp->rq.wrid = (u64 *)tmp___12;
  tmp___13 = kmalloc((unsigned long )qp->sq.wqe_cnt * 4UL, 208U);
  qp->sq.w_list = (struct wr_list *)tmp___13;
  tmp___14 = kmalloc((unsigned long )qp->sq.wqe_cnt * 4UL, 208U);
  qp->sq.wqe_head = (unsigned int *)tmp___14;
  }
  if (((((unsigned long )qp->sq.wrid == (unsigned long )((u64 *)0ULL) || (unsigned long )qp->sq.wr_data == (unsigned long )((u32 *)0U)) || (unsigned long )qp->rq.wrid == (unsigned long )((u64 *)0ULL)) || (unsigned long )qp->sq.w_list == (unsigned long )((struct wr_list *)0)) || (unsigned long )qp->sq.wqe_head == (unsigned long )((unsigned int *)0U)) {
    err = -12;
    goto err_wrid;
  } else {
  }
  qp->create_type = 1;
  return (0);
  err_wrid:
  {
  mlx5_db_free(& dev->mdev, & qp->db);
  kfree((void const *)qp->sq.wqe_head);
  kfree((void const *)qp->sq.w_list);
  kfree((void const *)qp->sq.wrid);
  kfree((void const *)qp->sq.wr_data);
  kfree((void const *)qp->rq.wrid);
  }
  err_free:
  {
  mlx5_vfree((void const *)*in);
  }
  err_buf:
  {
  mlx5_buf_free(& dev->mdev, & qp->buf);
  }
  err_uuar:
  {
  free_uuar(& dev->mdev.priv.uuari, uuarn);
  }
  return (err);
}
}
static void destroy_qp_kernel(struct mlx5_ib_dev *dev , struct mlx5_ib_qp *qp )
{
  {
  {
  mlx5_db_free(& dev->mdev, & qp->db);
  kfree((void const *)qp->sq.wqe_head);
  kfree((void const *)qp->sq.w_list);
  kfree((void const *)qp->sq.wrid);
  kfree((void const *)qp->sq.wr_data);
  kfree((void const *)qp->rq.wrid);
  mlx5_buf_free(& dev->mdev, & qp->buf);
  free_uuar(& dev->mdev.priv.uuari, (qp->bf)->uuarn);
  }
  return;
}
}
static __be32 get_rx_type(struct mlx5_ib_qp *qp , struct ib_qp_init_attr *attr )
{
  {
  if (((unsigned long )attr->srq != (unsigned long )((struct ib_srq *)0) || (unsigned int )attr->qp_type == 10U) || (unsigned int )attr->qp_type == 9U) {
    return (1U);
  } else
  if (qp->has_rq == 0) {
    return (3U);
  } else {
    return (0U);
  }
}
}
static int is_connected(enum ib_qp_type qp_type )
{
  {
  if ((unsigned int )qp_type - 2U <= 1U) {
    return (1);
  } else {
  }
  return (0);
}
}
static int create_qp_common(struct mlx5_ib_dev *dev , struct ib_pd *pd , struct ib_qp_init_attr *init_attr ,
                            struct ib_udata *udata , struct mlx5_ib_qp *qp )
{
  struct mlx5_ib_resources *devr ;
  struct mlx5_ib_create_qp_resp resp ;
  struct mlx5_create_qp_mbox_in *in ;
  struct mlx5_ib_create_qp ucmd ;
  int inlen ;
  int err ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  struct task_struct *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___5 ;
  struct task_struct *tmp___12 ;
  long tmp___13 ;
  struct mlx5_ib_pd *tmp___14 ;
  void *tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  __u32 tmp___18 ;
  struct mlx5_ib_pd *tmp___19 ;
  __u32 tmp___20 ;
  int rcqe_sz ;
  int scqe_sz ;
  int tmp___21 ;
  int tmp___89 ;
  int tmp___157 ;
  __u16 tmp___158 ;
  struct mlx5_ib_cq *tmp___159 ;
  __u32 tmp___160 ;
  struct mlx5_ib_cq *tmp___161 ;
  __u32 tmp___162 ;
  struct mlx5_ib_srq *tmp___163 ;
  __u32 tmp___164 ;
  struct mlx5_ib_xrcd *tmp___165 ;
  __u32 tmp___166 ;
  struct mlx5_ib_cq *tmp___167 ;
  __u32 tmp___168 ;
  struct mlx5_ib_xrcd *tmp___169 ;
  __u32 tmp___170 ;
  struct mlx5_ib_srq *tmp___171 ;
  __u32 tmp___172 ;
  struct mlx5_ib_xrcd *tmp___173 ;
  __u32 tmp___174 ;
  struct mlx5_ib_srq *tmp___175 ;
  __u32 tmp___176 ;
  struct mlx5_ib_xrcd *tmp___177 ;
  __u32 tmp___178 ;
  struct mlx5_ib_srq *tmp___179 ;
  __u32 tmp___180 ;
  struct mlx5_ib_cq *tmp___181 ;
  __u32 tmp___182 ;
  struct mlx5_ib_cq *tmp___183 ;
  __u32 tmp___184 ;
  __u64 tmp___185 ;
  struct _ddebug descriptor___6 ;
  struct task_struct *tmp___186 ;
  long tmp___187 ;
  __u32 tmp___188 ;
  {
  {
  devr = & dev->devr;
  inlen = 272;
  __mutex_init(& qp->mutex, "&qp->mutex", & __key);
  spinlock_check(& qp->sq.lock);
  __raw_spin_lock_init(& qp->sq.lock.__annonCompField19.rlock, "&(&qp->sq.lock)->rlock",
                       & __key___0);
  spinlock_check(& qp->rq.lock);
  __raw_spin_lock_init(& qp->rq.lock.__annonCompField19.rlock, "&(&qp->rq.lock)->rlock",
                       & __key___1);
  }
  if ((unsigned int )init_attr->sq_sig_type == 0U) {
    qp->sq_signal_bits = 8U;
  } else {
  }
  if ((unsigned long )pd != (unsigned long )((struct ib_pd *)0) && (unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
    {
    tmp___1 = ib_copy_from_udata((void *)(& ucmd), udata, 32UL);
    }
    if (tmp___1 != 0) {
      {
      descriptor.modname = "mlx5_ib";
      descriptor.function = "create_qp_common";
      descriptor.filename = "drivers/infiniband/hw/mlx5/qp.c";
      descriptor.format = "%s:%s:%d:(pid %d): copy failed\n";
      descriptor.lineno = 809U;
      descriptor.flags = 0U;
      tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        tmp = get_current___1();
        __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): copy failed\n", (char *)(& dev->ib_dev.name),
                           "create_qp_common", 809, tmp->pid);
        }
      } else {
      }
      return (-14);
    } else {
    }
    qp->wq_sig = (int )ucmd.flags & 1;
    qp->scat_cqe = (ucmd.flags & 2U) != 0U;
  } else {
    qp->wq_sig = wq_signature != 0;
  }
  {
  qp->has_rq = qp_has_rq(init_attr);
  err = set_rq_size(dev, & init_attr->cap, qp->has_rq, qp, (unsigned long )pd != (unsigned long )((struct ib_pd *)0) && (unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0) ? & ucmd : (struct mlx5_ib_create_qp *)0);
  }
  if (err != 0) {
    {
    descriptor___0.modname = "mlx5_ib";
    descriptor___0.function = "create_qp_common";
    descriptor___0.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___0.format = "%s:%s:%d:(pid %d): err %d\n";
    descriptor___0.lineno = 823U;
    descriptor___0.flags = 0U;
    tmp___3 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      tmp___2 = get_current___1();
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): err %d\n", (char *)(& dev->ib_dev.name),
                         "create_qp_common", 823, tmp___2->pid, err);
      }
    } else {
    }
    return (err);
  } else {
  }
  if ((unsigned long )pd != (unsigned long )((struct ib_pd *)0)) {
    if ((unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
      {
      descriptor___1.modname = "mlx5_ib";
      descriptor___1.function = "create_qp_common";
      descriptor___1.filename = "drivers/infiniband/hw/mlx5/qp.c";
      descriptor___1.format = "%s:%s:%d:(pid %d): requested sq_wqe_count (%d)\n";
      descriptor___1.lineno = 829U;
      descriptor___1.flags = 0U;
      tmp___5 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___5 != 0L) {
        {
        tmp___4 = get_current___1();
        __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): requested sq_wqe_count (%d)\n",
                           (char *)(& dev->ib_dev.name), "create_qp_common", 829,
                           tmp___4->pid, ucmd.sq_wqe_count);
        }
      } else {
      }
      if (ucmd.rq_wqe_shift != (__u32 )qp->rq.wqe_shift || ucmd.rq_wqe_count != (__u32 )qp->rq.wqe_cnt) {
        {
        descriptor___2.modname = "mlx5_ib";
        descriptor___2.function = "create_qp_common";
        descriptor___2.filename = "drivers/infiniband/hw/mlx5/qp.c";
        descriptor___2.format = "%s:%s:%d:(pid %d): invalid rq params\n";
        descriptor___2.lineno = 832U;
        descriptor___2.flags = 0U;
        tmp___7 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
        }
        if (tmp___7 != 0L) {
          {
          tmp___6 = get_current___1();
          __dynamic_pr_debug(& descriptor___2, "%s:%s:%d:(pid %d): invalid rq params\n",
                             (char *)(& dev->ib_dev.name), "create_qp_common", 832,
                             tmp___6->pid);
          }
        } else {
        }
        return (-22);
      } else {
      }
      if (ucmd.sq_wqe_count > (__u32 )dev->mdev.caps.max_wqes) {
        {
        descriptor___3.modname = "mlx5_ib";
        descriptor___3.function = "create_qp_common";
        descriptor___3.filename = "drivers/infiniband/hw/mlx5/qp.c";
        descriptor___3.format = "%s:%s:%d:(pid %d): requested sq_wqe_count (%d) > max allowed (%d)\n";
        descriptor___3.lineno = 837U;
        descriptor___3.flags = 0U;
        tmp___9 = __builtin_expect((long )descriptor___3.flags & 1L, 0L);
        }
        if (tmp___9 != 0L) {
          {
          tmp___8 = get_current___1();
          __dynamic_pr_debug(& descriptor___3, "%s:%s:%d:(pid %d): requested sq_wqe_count (%d) > max allowed (%d)\n",
                             (char *)(& dev->ib_dev.name), "create_qp_common", 837,
                             tmp___8->pid, ucmd.sq_wqe_count, dev->mdev.caps.max_wqes);
          }
        } else {
        }
        return (-22);
      } else {
      }
      {
      err = create_user_qp(dev, pd, qp, udata, & in, & resp, & inlen);
      }
      if (err != 0) {
        {
        descriptor___4.modname = "mlx5_ib";
        descriptor___4.function = "create_qp_common";
        descriptor___4.filename = "drivers/infiniband/hw/mlx5/qp.c";
        descriptor___4.format = "%s:%s:%d:(pid %d): err %d\n";
        descriptor___4.lineno = 842U;
        descriptor___4.flags = 0U;
        tmp___11 = __builtin_expect((long )descriptor___4.flags & 1L, 0L);
        }
        if (tmp___11 != 0L) {
          {
          tmp___10 = get_current___1();
          __dynamic_pr_debug(& descriptor___4, "%s:%s:%d:(pid %d): err %d\n", (char *)(& dev->ib_dev.name),
                             "create_qp_common", 842, tmp___10->pid, err);
          }
        } else {
        }
      } else {
      }
    } else {
      {
      err = create_kernel_qp(dev, init_attr, qp, & in, & inlen);
      }
      if (err != 0) {
        {
        descriptor___5.modname = "mlx5_ib";
        descriptor___5.function = "create_qp_common";
        descriptor___5.filename = "drivers/infiniband/hw/mlx5/qp.c";
        descriptor___5.format = "%s:%s:%d:(pid %d): err %d\n";
        descriptor___5.lineno = 846U;
        descriptor___5.flags = 0U;
        tmp___13 = __builtin_expect((long )descriptor___5.flags & 1L, 0L);
        }
        if (tmp___13 != 0L) {
          {
          tmp___12 = get_current___1();
          __dynamic_pr_debug(& descriptor___5, "%s:%s:%d:(pid %d): err %d\n", (char *)(& dev->ib_dev.name),
                             "create_qp_common", 846, tmp___12->pid, err);
          }
        } else {
        }
      } else {
        {
        tmp___14 = to_mpd(pd);
        qp->pa_lkey = tmp___14->pa_lkey;
        }
      }
    }
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
    {
    tmp___15 = mlx5_vzalloc___0(272UL);
    in = (struct mlx5_create_qp_mbox_in *)tmp___15;
    }
    if ((unsigned long )in == (unsigned long )((struct mlx5_create_qp_mbox_in *)0)) {
      return (-12);
    } else {
    }
    qp->create_type = 2;
  }
  {
  tmp___16 = is_sqp(init_attr->qp_type);
  }
  if (tmp___16 != 0) {
    qp->port = init_attr->port_num;
  } else {
  }
  {
  tmp___17 = to_mlx5_st(init_attr->qp_type);
  tmp___18 = __fswab32((__u32 )((tmp___17 << 16) | 6144));
  in->ctx.flags = tmp___18;
  }
  if ((unsigned int )init_attr->qp_type != 4096U) {
    {
    tmp___19 = to_mpd((unsigned long )pd != (unsigned long )((struct ib_pd *)0) ? pd : devr->p0);
    tmp___20 = __fswab32(tmp___19->pdn);
    in->ctx.flags_pd = tmp___20;
    }
  } else {
    in->ctx.flags_pd = 16U;
  }
  if (qp->wq_sig != 0) {
    in->ctx.flags_pd = in->ctx.flags_pd | 128U;
  } else {
  }
  if (qp->scat_cqe != 0) {
    {
    tmp___21 = is_connected(init_attr->qp_type);
    }
    if (tmp___21 != 0) {
      {
      rcqe_sz = mlx5_ib_get_cqe_size(dev, init_attr->recv_cq);
      scqe_sz = mlx5_ib_get_cqe_size(dev, init_attr->send_cq);
      }
      if (rcqe_sz == 128) {
        in->ctx.cs_res = 2U;
      } else {
        in->ctx.cs_res = 1U;
      }
      if ((unsigned int )init_attr->sq_sig_type == 0U) {
        if (scqe_sz == 128) {
          in->ctx.cs_req = 34U;
        } else {
          in->ctx.cs_req = 17U;
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if (qp->rq.wqe_cnt != 0) {
    {
    in->ctx.rq_size_stride = (unsigned int )((u8 )qp->rq.wqe_shift) + 252U;
    tmp___89 = __ilog2_u32((u32 )qp->rq.wqe_cnt);
    in->ctx.rq_size_stride = (u8 )((int )((signed char )in->ctx.rq_size_stride) | (signed char )(tmp___89 << 3));
    }
  } else {
  }
  {
  in->ctx.rq_type_srqn = get_rx_type(qp, init_attr);
  }
  if (qp->sq.wqe_cnt != 0) {
    {
    tmp___157 = __ilog2_u32((u32 )qp->sq.wqe_cnt);
    tmp___158 = __fswab16((int )((__u16 )tmp___157) << 11U);
    in->ctx.sq_crq_size = (__be16 )((int )in->ctx.sq_crq_size | (int )tmp___158);
    }
  } else {
    in->ctx.sq_crq_size = (__be16 )((unsigned int )in->ctx.sq_crq_size | 128U);
  }
  {
  if ((unsigned int )init_attr->qp_type == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 9U) {
    goto case_9;
  } else {
  }
  goto switch_default;
  case_10:
  {
  tmp___159 = to_mcq(devr->c0);
  tmp___160 = __fswab32(tmp___159->mcq.cqn);
  in->ctx.cqn_recv = tmp___160;
  tmp___161 = to_mcq(devr->c0);
  tmp___162 = __fswab32(tmp___161->mcq.cqn);
  in->ctx.cqn_send = tmp___162;
  tmp___163 = to_msrq(devr->s0);
  tmp___164 = __fswab32(tmp___163->msrq.srqn);
  in->ctx.rq_type_srqn = in->ctx.rq_type_srqn | tmp___164;
  tmp___165 = to_mxrcd(init_attr->xrcd);
  tmp___166 = __fswab32(tmp___165->xrcdn);
  in->ctx.xrcd = tmp___166;
  }
  goto ldv_36303;
  case_9:
  {
  tmp___167 = to_mcq(devr->c0);
  tmp___168 = __fswab32(tmp___167->mcq.cqn);
  in->ctx.cqn_recv = tmp___168;
  tmp___169 = to_mxrcd(devr->x1);
  tmp___170 = __fswab32(tmp___169->xrcdn);
  in->ctx.xrcd = tmp___170;
  tmp___171 = to_msrq(devr->s0);
  tmp___172 = __fswab32(tmp___171->msrq.srqn);
  in->ctx.rq_type_srqn = in->ctx.rq_type_srqn | tmp___172;
  }
  goto ldv_36303;
  switch_default: ;
  if ((unsigned long )init_attr->srq != (unsigned long )((struct ib_srq *)0)) {
    {
    tmp___173 = to_mxrcd(devr->x0);
    tmp___174 = __fswab32(tmp___173->xrcdn);
    in->ctx.xrcd = tmp___174;
    tmp___175 = to_msrq(init_attr->srq);
    tmp___176 = __fswab32(tmp___175->msrq.srqn);
    in->ctx.rq_type_srqn = in->ctx.rq_type_srqn | tmp___176;
    }
  } else {
    {
    tmp___177 = to_mxrcd(devr->x1);
    tmp___178 = __fswab32(tmp___177->xrcdn);
    in->ctx.xrcd = tmp___178;
    tmp___179 = to_msrq(devr->s0);
    tmp___180 = __fswab32(tmp___179->msrq.srqn);
    in->ctx.rq_type_srqn = in->ctx.rq_type_srqn | tmp___180;
    }
  }
  switch_break: ;
  }
  ldv_36303: ;
  if ((unsigned long )init_attr->send_cq != (unsigned long )((struct ib_cq *)0)) {
    {
    tmp___181 = to_mcq(init_attr->send_cq);
    tmp___182 = __fswab32(tmp___181->mcq.cqn);
    in->ctx.cqn_send = tmp___182;
    }
  } else {
  }
  if ((unsigned long )init_attr->recv_cq != (unsigned long )((struct ib_cq *)0)) {
    {
    tmp___183 = to_mcq(init_attr->recv_cq);
    tmp___184 = __fswab32(tmp___183->mcq.cqn);
    in->ctx.cqn_recv = tmp___184;
    }
  } else {
  }
  {
  tmp___185 = __fswab64(qp->db.dma);
  in->ctx.db_rec_addr = tmp___185;
  err = mlx5_core_create_qp(& dev->mdev, & qp->mqp, in, inlen);
  }
  if (err != 0) {
    {
    descriptor___6.modname = "mlx5_ib";
    descriptor___6.function = "create_qp_common";
    descriptor___6.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___6.format = "%s:%s:%d:(pid %d): create qp failed\n";
    descriptor___6.lineno = 940U;
    descriptor___6.flags = 0U;
    tmp___187 = __builtin_expect((long )descriptor___6.flags & 1L, 0L);
    }
    if (tmp___187 != 0L) {
      {
      tmp___186 = get_current___1();
      __dynamic_pr_debug(& descriptor___6, "%s:%s:%d:(pid %d): create qp failed\n",
                         (char *)(& dev->ib_dev.name), "create_qp_common", 940, tmp___186->pid);
      }
    } else {
    }
    goto err_create;
  } else {
  }
  {
  mlx5_vfree((void const *)in);
  tmp___188 = __fswab32((__u32 )(qp->mqp.qpn << 8));
  qp->doorbell_qpn = tmp___188;
  qp->mqp.event = & mlx5_ib_qp_event;
  }
  return (0);
  err_create: ;
  if (qp->create_type == 0) {
    {
    destroy_qp_user(pd, qp);
    }
  } else
  if (qp->create_type == 1) {
    {
    destroy_qp_kernel(dev, qp);
    }
  } else {
  }
  {
  mlx5_vfree((void const *)in);
  }
  return (err);
}
}
static void mlx5_ib_lock_cqs(struct mlx5_ib_cq *send_cq , struct mlx5_ib_cq *recv_cq )
{
  {
  if ((unsigned long )send_cq != (unsigned long )((struct mlx5_ib_cq *)0)) {
    if ((unsigned long )recv_cq != (unsigned long )((struct mlx5_ib_cq *)0)) {
      if (send_cq->mcq.cqn < recv_cq->mcq.cqn) {
        {
        ldv_spin_lock_irq_51(& send_cq->lock);
        ldv___ldv_spin_lock_54___0(& recv_cq->lock);
        }
      } else
      if (send_cq->mcq.cqn == recv_cq->mcq.cqn) {
        {
        ldv_spin_lock_irq_51(& send_cq->lock);
        }
      } else {
        {
        ldv_spin_lock_irq_51(& recv_cq->lock);
        ldv___ldv_spin_lock_57(& send_cq->lock);
        }
      }
    } else {
      {
      ldv_spin_lock_irq_51(& send_cq->lock);
      }
    }
  } else
  if ((unsigned long )recv_cq != (unsigned long )((struct mlx5_ib_cq *)0)) {
    {
    ldv_spin_lock_irq_51(& recv_cq->lock);
    }
  } else {
  }
  return;
}
}
static void mlx5_ib_unlock_cqs(struct mlx5_ib_cq *send_cq , struct mlx5_ib_cq *recv_cq )
{
  {
  if ((unsigned long )send_cq != (unsigned long )((struct mlx5_ib_cq *)0)) {
    if ((unsigned long )recv_cq != (unsigned long )((struct mlx5_ib_cq *)0)) {
      if (send_cq->mcq.cqn < recv_cq->mcq.cqn) {
        {
        ldv_spin_unlock_60___0(& recv_cq->lock);
        ldv_spin_unlock_irq_52(& send_cq->lock);
        }
      } else
      if (send_cq->mcq.cqn == recv_cq->mcq.cqn) {
        {
        ldv_spin_unlock_irq_52(& send_cq->lock);
        }
      } else {
        {
        ldv_spin_unlock_60___0(& send_cq->lock);
        ldv_spin_unlock_irq_52(& recv_cq->lock);
        }
      }
    } else {
      {
      ldv_spin_unlock_irq_52(& send_cq->lock);
      }
    }
  } else
  if ((unsigned long )recv_cq != (unsigned long )((struct mlx5_ib_cq *)0)) {
    {
    ldv_spin_unlock_irq_52(& recv_cq->lock);
    }
  } else {
  }
  return;
}
}
static struct mlx5_ib_pd *get_pd(struct mlx5_ib_qp *qp )
{
  struct mlx5_ib_pd *tmp ;
  {
  {
  tmp = to_mpd(qp->ibqp.pd);
  }
  return (tmp);
}
}
static void get_cqs(struct mlx5_ib_qp *qp , struct mlx5_ib_cq **send_cq , struct mlx5_ib_cq **recv_cq )
{
  {
  {
  if ((unsigned int )qp->ibqp.qp_type == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 4096U) {
    goto case_4096;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )qp->ibqp.qp_type == 11U) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_10:
  *send_cq = (struct mlx5_ib_cq *)0;
  *recv_cq = (struct mlx5_ib_cq *)0;
  goto ldv_36325;
  case_4096: ;
  case_9:
  {
  *send_cq = to_mcq(qp->ibqp.send_cq);
  *recv_cq = (struct mlx5_ib_cq *)0;
  }
  goto ldv_36325;
  case_0: ;
  case_1: ;
  case_2: ;
  case_3: ;
  case_4: ;
  case_5: ;
  case_6:
  {
  *send_cq = to_mcq(qp->ibqp.send_cq);
  *recv_cq = to_mcq(qp->ibqp.recv_cq);
  }
  goto ldv_36325;
  case_8: ;
  case_11: ;
  switch_default:
  *send_cq = (struct mlx5_ib_cq *)0;
  *recv_cq = (struct mlx5_ib_cq *)0;
  goto ldv_36325;
  switch_break: ;
  }
  ldv_36325: ;
  return;
}
}
static void destroy_qp_common(struct mlx5_ib_dev *dev , struct mlx5_ib_qp *qp )
{
  struct mlx5_ib_cq *send_cq ;
  struct mlx5_ib_cq *recv_cq ;
  struct mlx5_modify_qp_mbox_in *in ;
  int err ;
  void *tmp ;
  struct task_struct *tmp___0 ;
  enum mlx5_qp_state tmp___1 ;
  int tmp___2 ;
  struct mlx5_ib_srq *tmp___3 ;
  struct mlx5_ib_srq *tmp___4 ;
  struct task_struct *tmp___5 ;
  struct mlx5_ib_pd *tmp___6 ;
  {
  {
  tmp = kzalloc(256UL, 208U);
  in = (struct mlx5_modify_qp_mbox_in *)tmp;
  }
  if ((unsigned long )in == (unsigned long )((struct mlx5_modify_qp_mbox_in *)0)) {
    return;
  } else {
  }
  if ((unsigned int )qp->state != 0U) {
    {
    tmp___1 = to_mlx5_state((enum ib_qp_state )qp->state);
    tmp___2 = mlx5_core_qp_modify(& dev->mdev, tmp___1, 0, in, 256, & qp->mqp);
    }
    if (tmp___2 != 0) {
      {
      tmp___0 = get_current___1();
      printk("\f%s:%s:%d:(pid %d): mlx5_ib: modify QP %06x to RESET failed\n", (char *)(& dev->ib_dev.name),
             "destroy_qp_common", 1065, tmp___0->pid, qp->mqp.qpn);
      }
    } else {
    }
  } else {
  }
  {
  get_cqs(qp, & send_cq, & recv_cq);
  }
  if (qp->create_type == 1) {
    {
    mlx5_ib_lock_cqs(send_cq, recv_cq);
    }
    if ((unsigned long )qp->ibqp.srq != (unsigned long )((struct ib_srq *)0)) {
      {
      tmp___3 = to_msrq(qp->ibqp.srq);
      tmp___4 = tmp___3;
      }
    } else {
      tmp___4 = (struct mlx5_ib_srq *)0;
    }
    {
    __mlx5_ib_cq_clean(recv_cq, (u32 )qp->mqp.qpn, tmp___4);
    }
    if ((unsigned long )send_cq != (unsigned long )recv_cq) {
      {
      __mlx5_ib_cq_clean(send_cq, (u32 )qp->mqp.qpn, (struct mlx5_ib_srq *)0);
      }
    } else {
    }
    {
    mlx5_ib_unlock_cqs(send_cq, recv_cq);
    }
  } else {
  }
  {
  err = mlx5_core_destroy_qp(& dev->mdev, & qp->mqp);
  }
  if (err != 0) {
    {
    tmp___5 = get_current___1();
    printk("\f%s:%s:%d:(pid %d): failed to destroy QP 0x%x\n", (char *)(& dev->ib_dev.name),
           "destroy_qp_common", 1080, tmp___5->pid, qp->mqp.qpn);
    }
  } else {
  }
  {
  kfree((void const *)in);
  }
  if (qp->create_type == 1) {
    {
    destroy_qp_kernel(dev, qp);
    }
  } else
  if (qp->create_type == 0) {
    {
    tmp___6 = get_pd(qp);
    destroy_qp_user(& tmp___6->ibpd, qp);
    }
  } else {
  }
  return;
}
}
static char const *ib_qp_type_str(enum ib_qp_type type )
{
  {
  {
  if ((unsigned int )type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )type == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )type == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )type == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )type == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )type == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )type == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )type == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )type == 4096U) {
    goto case_4096;
  } else {
  }
  if ((unsigned int )type == 11U) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_0: ;
  return ("IB_QPT_SMI");
  case_1: ;
  return ("IB_QPT_GSI");
  case_2: ;
  return ("IB_QPT_RC");
  case_3: ;
  return ("IB_QPT_UC");
  case_4: ;
  return ("IB_QPT_UD");
  case_5: ;
  return ("IB_QPT_RAW_IPV6");
  case_6: ;
  return ("IB_QPT_RAW_ETHERTYPE");
  case_9: ;
  return ("IB_QPT_XRC_INI");
  case_10: ;
  return ("IB_QPT_XRC_TGT");
  case_8: ;
  return ("IB_QPT_RAW_PACKET");
  case_4096: ;
  return ("MLX5_IB_QPT_REG_UMR");
  case_11: ;
  switch_default: ;
  return ("Invalid QP type");
  switch_break: ;
  }
}
}
struct ib_qp *mlx5_ib_create_qp(struct ib_pd *pd , struct ib_qp_init_attr *init_attr ,
                                struct ib_udata *udata )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_qp *qp ;
  u16 xrcdn ;
  int err ;
  char const *tmp ;
  void *tmp___0 ;
  struct mlx5_ib_xrcd *tmp___1 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  void *tmp___4 ;
  struct mlx5_ib_xrcd *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___8 ;
  long tmp___9 ;
  void *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  struct _ddebug descriptor___1 ;
  struct mlx5_ib_cq *tmp___13 ;
  struct mlx5_ib_cq *tmp___14 ;
  struct task_struct *tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___17 ;
  long tmp___18 ;
  void *tmp___19 ;
  {
  xrcdn = 0U;
  if ((unsigned long )pd != (unsigned long )((struct ib_pd *)0)) {
    {
    dev = to_mdev(pd->device);
    }
  } else {
    if ((unsigned int )init_attr->qp_type != 10U && (unsigned int )init_attr->qp_type != 4096U) {
      {
      tmp = ib_qp_type_str(init_attr->qp_type);
      printk("\f%s: no PD for transport %s\n", "mlx5_ib_create_qp", tmp);
      tmp___0 = ERR_PTR(-22L);
      }
      return ((struct ib_qp *)tmp___0);
    } else {
    }
    {
    tmp___1 = to_mxrcd(init_attr->xrcd);
    dev = to_mdev(tmp___1->ibxrcd.device);
    }
  }
  {
  if ((unsigned int )init_attr->qp_type == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 4096U) {
    goto case_4096;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )init_attr->qp_type == 11U) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_10: ;
  case_9: ;
  if ((dev->mdev.caps.flags & 8ULL) == 0ULL) {
    {
    descriptor.modname = "mlx5_ib";
    descriptor.function = "mlx5_ib_create_qp";
    descriptor.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor.format = "%s:%s:%d:(pid %d): XRC not supported\n";
    descriptor.lineno = 1147U;
    descriptor.flags = 0U;
    tmp___3 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      tmp___2 = get_current___1();
      __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): XRC not supported\n", (char *)(& dev->ib_dev.name),
                         "mlx5_ib_create_qp", 1147, tmp___2->pid);
      }
    } else {
    }
    {
    tmp___4 = ERR_PTR(-38L);
    }
    return ((struct ib_qp *)tmp___4);
  } else {
  }
  init_attr->recv_cq = (struct ib_cq *)0;
  if ((unsigned int )init_attr->qp_type == 10U) {
    {
    tmp___5 = to_mxrcd(init_attr->xrcd);
    xrcdn = (u16 )tmp___5->xrcdn;
    init_attr->send_cq = (struct ib_cq *)0;
    }
  } else {
  }
  case_2: ;
  case_3: ;
  case_4: ;
  case_0: ;
  case_1: ;
  case_4096:
  {
  tmp___6 = kzalloc(888UL, 208U);
  qp = (struct mlx5_ib_qp *)tmp___6;
  }
  if ((unsigned long )qp == (unsigned long )((struct mlx5_ib_qp *)0)) {
    {
    tmp___7 = ERR_PTR(-12L);
    }
    return ((struct ib_qp *)tmp___7);
  } else {
  }
  {
  err = create_qp_common(dev, pd, init_attr, udata, qp);
  }
  if (err != 0) {
    {
    descriptor___0.modname = "mlx5_ib";
    descriptor___0.function = "mlx5_ib_create_qp";
    descriptor___0.filename = "drivers/infiniband/hw/mlx5/qp.c";
    descriptor___0.format = "%s:%s:%d:(pid %d): create_qp_common failed\n";
    descriptor___0.lineno = 1169U;
    descriptor___0.flags = 0U;
    tmp___9 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___9 != 0L) {
      {
      tmp___8 = get_current___1();
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): create_qp_common failed\n",
                         (char *)(& dev->ib_dev.name), "mlx5_ib_create_qp", 1169,
                         tmp___8->pid);
      }
    } else {
    }
    {
    kfree((void const *)qp);
    tmp___10 = ERR_PTR((long )err);
    }
    return ((struct ib_qp *)tmp___10);
  } else {
  }
  {
  tmp___12 = is_qp0(init_attr->qp_type);
  }
  if (tmp___12 != 0) {
    qp->ibqp.qp_num = 0U;
  } else {
    {
    tmp___11 = is_qp1(init_attr->qp_type);
    }
    if (tmp___11 != 0) {
      qp->ibqp.qp_num = 1U;
    } else {
      qp->ibqp.qp_num = (u32 )qp->mqp.qpn;
    }
  }
  {
  descriptor___1.modname = "mlx5_ib";
  descriptor___1.function = "mlx5_ib_create_qp";
  descriptor___1.filename = "drivers/infiniband/hw/mlx5/qp.c";
  descriptor___1.format = "%s:%s:%d:(pid %d): ib qpnum 0x%x, mlx qpn 0x%x, rcqn 0x%x, scqn 0x%x\n";
  descriptor___1.lineno = 1183U;
  descriptor___1.flags = 0U;
  tmp___16 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___16 != 0L) {
    {
    tmp___13 = to_mcq(init_attr->send_cq);
    tmp___14 = to_mcq(init_attr->recv_cq);
    tmp___15 = get_current___1();
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): ib qpnum 0x%x, mlx qpn 0x%x, rcqn 0x%x, scqn 0x%x\n",
                       (char *)(& dev->ib_dev.name), "mlx5_ib_create_qp", 1183, tmp___15->pid,
                       qp->ibqp.qp_num, qp->mqp.qpn, tmp___14->mcq.cqn, tmp___13->mcq.cqn);
    }
  } else {
  }
  qp->xrcdn = xrcdn;
  goto ldv_36384;
  case_5: ;
  case_6: ;
  case_8: ;
  case_11: ;
  switch_default:
  {
  descriptor___2.modname = "mlx5_ib";
  descriptor___2.function = "mlx5_ib_create_qp";
  descriptor___2.filename = "drivers/infiniband/hw/mlx5/qp.c";
  descriptor___2.format = "%s:%s:%d:(pid %d): unsupported qp type %d\n";
  descriptor___2.lineno = 1195U;
  descriptor___2.flags = 0U;
  tmp___18 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___18 != 0L) {
    {
    tmp___17 = get_current___1();
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d:(pid %d): unsupported qp type %d\n",
                       (char *)(& dev->ib_dev.name), "mlx5_ib_create_qp", 1195, tmp___17->pid,
                       (unsigned int )init_attr->qp_type);
    }
  } else {
  }
  {
  tmp___19 = ERR_PTR(-22L);
  }
  return ((struct ib_qp *)tmp___19);
  switch_break: ;
  }
  ldv_36384: ;
  return (& qp->ibqp);
}
}
int mlx5_ib_destroy_qp(struct ib_qp *qp )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_qp *mqp ;
  struct mlx5_ib_qp *tmp___0 ;
  {
  {
  tmp = to_mdev(qp->device);
  dev = tmp;
  tmp___0 = to_mqp(qp);
  mqp = tmp___0;
  destroy_qp_common(dev, mqp);
  kfree((void const *)mqp);
  }
  return (0);
}
}
static __be32 to_mlx5_access_flags(struct mlx5_ib_qp *qp , struct ib_qp_attr const *attr ,
                                   int attr_mask )
{
  u32 hw_access_flags ;
  u8 dest_rd_atomic ;
  u32 access_flags ;
  __u32 tmp ;
  {
  hw_access_flags = 0U;
  if ((attr_mask & 131072) != 0) {
    dest_rd_atomic = attr->max_dest_rd_atomic;
  } else {
    dest_rd_atomic = qp->resp_depth;
  }
  if ((attr_mask & 8) != 0) {
    access_flags = (u32 )attr->qp_access_flags;
  } else {
    access_flags = (u32 )qp->atomic_rd_en;
  }
  if ((unsigned int )dest_rd_atomic == 0U) {
    access_flags = access_flags & 2U;
  } else {
  }
  if ((access_flags & 4U) != 0U) {
    hw_access_flags = hw_access_flags | 32768U;
  } else {
  }
  if ((access_flags & 8U) != 0U) {
    hw_access_flags = hw_access_flags | 139264U;
  } else {
  }
  if ((access_flags & 2U) != 0U) {
    hw_access_flags = hw_access_flags | 16384U;
  } else {
  }
  {
  tmp = __fswab32(hw_access_flags);
  }
  return (tmp);
}
}
static int ib_rate_to_mlx5(struct mlx5_ib_dev *dev , u8 rate )
{
  {
  if ((unsigned int )rate == 0U) {
    return (0);
  } else
  if ((unsigned int )rate - 2U > 16U) {
    return (-22);
  } else {
    goto ldv_36413;
    ldv_36412:
    rate = (u8 )((int )rate - 1);
    ldv_36413: ;
    if ((unsigned int )rate != 2U && (((int )dev->mdev.caps.stat_rate_support >> ((int )rate + 5)) & 1) == 0) {
      goto ldv_36412;
    } else {
    }
  }
  return ((int )rate + 5);
}
}
static int mlx5_set_path(struct mlx5_ib_dev *dev , struct ib_ah_attr const *ah ,
                         struct mlx5_qp_path *path , u8 port , int attr_mask , u32 path_flags ,
                         struct ib_qp_attr const *attr )
{
  int err ;
  __u16 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  path->fl = (int )path_flags & 1 ? 128U : 0U;
  path->free_ar = (path_flags & 2U) != 0U ? 128U : 0U;
  if ((attr_mask & 16) != 0) {
    path->pkey_index = (u8 )attr->pkey_index;
  } else {
  }
  {
  path->grh_mlid = (unsigned int )((u8 )ah->src_path_bits) & 127U;
  tmp = __fswab16((int )ah->dlid);
  path->rlid = tmp;
  }
  if ((int )ah->ah_flags & 1) {
    {
    path->grh_mlid = (u8 )((unsigned int )path->grh_mlid | 128U);
    path->mgid_index = ah->grh.sgid_index;
    path->hop_limit = ah->grh.hop_limit;
    tmp___0 = __fswab32((unsigned int )((int )ah->grh.traffic_class << 20) | (unsigned int )ah->grh.flow_label);
    path->tclass_flowlabel = tmp___0;
    memcpy((void *)(& path->rgid), (void const *)(& ah->grh.dgid.raw), 16UL);
    }
  } else {
  }
  {
  err = ib_rate_to_mlx5(dev, (int )ah->static_rate);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  path->static_rate = (u8 )err;
  path->port = port;
  if ((int )ah->ah_flags & 1) {
    if ((int )ah->grh.sgid_index >= dev->mdev.caps.port[(int )port + -1].gid_table_len) {
      {
      printk("\v\vsgid_index (%u) too large. max is %d\n", (int )ah->grh.sgid_index,
             dev->mdev.caps.port[(int )port + -1].gid_table_len);
      }
      return (-22);
    } else {
    }
    {
    path->grh_mlid = (u8 )((unsigned int )path->grh_mlid | 128U);
    path->mgid_index = ah->grh.sgid_index;
    path->hop_limit = ah->grh.hop_limit;
    tmp___1 = __fswab32((unsigned int )((int )ah->grh.traffic_class << 20) | (unsigned int )ah->grh.flow_label);
    path->tclass_flowlabel = tmp___1;
    memcpy((void *)(& path->rgid), (void const *)(& ah->grh.dgid.raw), 16UL);
    }
  } else {
  }
  if ((attr_mask & 512) != 0) {
    path->ackto_lt = (int )((u8 )attr->timeout) << 3U;
  } else {
  }
  path->sl = (unsigned int )((u8 )ah->sl) & 15U;
  return (0);
}
}
static enum mlx5_qp_optpar opt_mask[10U][10U][13U] = { { { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0}},
   { { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 65566, 65560, 65584},
     { 31, 25, 48, 31,
                48}},
   { { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 1103, 1033, 32}},
   { { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 1103, 1033, 786464}},
   { { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0},
     { 78, 8, 32, 0,
                32}}};
static int ib_nr_to_mlx5_nr(int ib_mask )
{
  {
  {
  if (ib_mask == 1) {
    goto case_1;
  } else {
  }
  if (ib_mask == 2) {
    goto case_2;
  } else {
  }
  if (ib_mask == 4) {
    goto case_4;
  } else {
  }
  if (ib_mask == 8) {
    goto case_8;
  } else {
  }
  if (ib_mask == 16) {
    goto case_16;
  } else {
  }
  if (ib_mask == 32) {
    goto case_32;
  } else {
  }
  if (ib_mask == 64) {
    goto case_64;
  } else {
  }
  if (ib_mask == 128) {
    goto case_128;
  } else {
  }
  if (ib_mask == 256) {
    goto case_256;
  } else {
  }
  if (ib_mask == 512) {
    goto case_512;
  } else {
  }
  if (ib_mask == 1024) {
    goto case_1024;
  } else {
  }
  if (ib_mask == 2048) {
    goto case_2048;
  } else {
  }
  if (ib_mask == 4096) {
    goto case_4096;
  } else {
  }
  if (ib_mask == 8192) {
    goto case_8192;
  } else {
  }
  if (ib_mask == 16384) {
    goto case_16384;
  } else {
  }
  if (ib_mask == 32768) {
    goto case_32768;
  } else {
  }
  if (ib_mask == 65536) {
    goto case_65536;
  } else {
  }
  if (ib_mask == 131072) {
    goto case_131072;
  } else {
  }
  if (ib_mask == 262144) {
    goto case_262144;
  } else {
  }
  if (ib_mask == 524288) {
    goto case_524288;
  } else {
  }
  if (ib_mask == 1048576) {
    goto case_1048576;
  } else {
  }
  goto switch_break;
  case_1: ;
  return (0);
  case_2: ;
  return (0);
  case_4: ;
  return (0);
  case_8: ;
  return (14);
  case_16: ;
  return (16);
  case_32: ;
  return (65536);
  case_64: ;
  return (32);
  case_128: ;
  return (65664);
  case_256: ;
  return (0);
  case_512: ;
  return (16384);
  case_1024: ;
  return (4096);
  case_2048: ;
  return (8192);
  case_4096: ;
  return (0);
  case_8192: ;
  return (256);
  case_16384: ;
  return (1);
  case_32768: ;
  return (64);
  case_65536: ;
  return (0);
  case_131072: ;
  return (526);
  case_262144: ;
  return (1024);
  case_524288: ;
  return (0);
  case_1048576: ;
  return (0);
  switch_break: ;
  }
  return (0);
}
}
static int ib_mask_to_mlx5_opt(int ib_mask )
{
  int result ;
  int i ;
  int tmp ;
  {
  result = 0;
  i = 0;
  goto ldv_36456;
  ldv_36455: ;
  if ((ib_mask >> i) & 1) {
    {
    tmp = ib_nr_to_mlx5_nr(1 << i);
    result = result | tmp;
    }
  } else {
  }
  i = i + 1;
  ldv_36456: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_36455;
  } else {
  }
  return (result);
}
}
static int __mlx5_ib_modify_qp(struct ib_qp *ibqp , struct ib_qp_attr const *attr ,
                               int attr_mask , enum ib_qp_state cur_state , enum ib_qp_state new_state )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_qp *qp ;
  struct mlx5_ib_qp *tmp___0 ;
  struct mlx5_ib_cq *send_cq ;
  struct mlx5_ib_cq *recv_cq ;
  struct mlx5_qp_context *context ;
  struct mlx5_modify_qp_mbox_in *in ;
  struct mlx5_ib_pd *pd ;
  enum mlx5_qp_state mlx5_cur ;
  enum mlx5_qp_state mlx5_new ;
  enum mlx5_qp_optpar optpar ;
  int sqd_event ;
  int mlx5_st ;
  int err ;
  void *tmp___1 ;
  __u32 tmp___2 ;
  struct task_struct *tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  struct mlx5_ib_pd *tmp___6 ;
  u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  int tmp___13 ;
  __u32 tmp___14 ;
  __u32 tmp___15 ;
  int tmp___16 ;
  __u32 tmp___17 ;
  __be32 tmp___18 ;
  __u32 tmp___19 ;
  __u32 tmp___20 ;
  __u32 tmp___21 ;
  __u64 tmp___22 ;
  int tmp___23 ;
  __u32 tmp___24 ;
  enum mlx5_qp_state tmp___25 ;
  enum mlx5_qp_state tmp___26 ;
  struct mlx5_ib_srq *tmp___27 ;
  struct mlx5_ib_srq *tmp___28 ;
  {
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  tmp___1 = kzalloc(256UL, 208U);
  in = (struct mlx5_modify_qp_mbox_in *)tmp___1;
  }
  if ((unsigned long )in == (unsigned long )((struct mlx5_modify_qp_mbox_in *)0)) {
    return (-12);
  } else {
  }
  {
  context = & in->ctx;
  err = to_mlx5_st(ibqp->qp_type);
  }
  if (err < 0) {
    goto out;
  } else {
  }
  {
  tmp___2 = __fswab32((__u32 )(err << 16));
  context->flags = tmp___2;
  }
  if ((attr_mask & 262144) == 0) {
    context->flags = context->flags | 1572864U;
  } else {
    {
    if ((unsigned int )attr->path_mig_state == 0U) {
      goto case_0;
    } else {
    }
    if ((unsigned int )attr->path_mig_state == 1U) {
      goto case_1;
    } else {
    }
    if ((unsigned int )attr->path_mig_state == 2U) {
      goto case_2;
    } else {
    }
    goto switch_break;
    case_0:
    context->flags = context->flags | 1572864U;
    goto ldv_36480;
    case_1:
    context->flags = context->flags | 524288U;
    goto ldv_36480;
    case_2:
    context->flags = context->flags;
    goto ldv_36480;
    switch_break: ;
    }
    ldv_36480: ;
  }
  if ((unsigned int )ibqp->qp_type <= 1U) {
    context->mtu_msgmax = 40U;
  } else
  if ((unsigned int )ibqp->qp_type == 4U || (unsigned int )ibqp->qp_type == 4096U) {
    context->mtu_msgmax = 172U;
  } else
  if ((attr_mask & 256) != 0) {
    if ((unsigned int )attr->path_mtu - 1U > 4U) {
      {
      tmp___3 = get_current___1();
      printk("\f%s:%s:%d:(pid %d): invalid mtu %d\n", (char *)(& dev->ib_dev.name),
             "__mlx5_ib_modify_qp", 1516, tmp___3->pid, (unsigned int )attr->path_mtu);
      err = -22;
      }
      goto out;
    } else {
    }
    context->mtu_msgmax = ((int )((u8 )attr->path_mtu) << 5U) | (int )((u8 )dev->mdev.caps.log_max_msg);
  } else {
  }
  if ((attr_mask & 1048576) != 0) {
    {
    tmp___4 = __fswab32(attr->dest_qp_num);
    context->log_pg_sz_remote_qpn = tmp___4;
    }
  } else {
  }
  if ((attr_mask & 16) != 0) {
    context->pri_path.pkey_index = (u8 )attr->pkey_index;
  } else {
  }
  {
  tmp___5 = is_sqp(ibqp->qp_type);
  }
  if (tmp___5 != 0) {
    context->pri_path.port = qp->port;
  } else {
  }
  if ((attr_mask & 32) != 0) {
    context->pri_path.port = attr->port_num;
  } else {
  }
  if ((attr_mask & 128) != 0) {
    {
    err = mlx5_set_path(dev, & attr->ah_attr, & context->pri_path, (attr_mask & 32) != 0 ? (int )attr->port_num : (int )qp->port,
                        attr_mask, 0U, attr);
    }
    if (err != 0) {
      goto out;
    } else {
    }
  } else {
  }
  if ((attr_mask & 512) != 0) {
    context->pri_path.ackto_lt = (u8 )((int )((signed char )context->pri_path.ackto_lt) | (int )((signed char )((int )attr->timeout << 3)));
  } else {
  }
  if ((attr_mask & 16384) != 0) {
    {
    err = mlx5_set_path(dev, & attr->alt_ah_attr, & context->alt_path, (int )attr->alt_port_num,
                        attr_mask, 0U, attr);
    }
    if (err != 0) {
      goto out;
    } else {
    }
  } else {
  }
  {
  pd = get_pd(qp);
  get_cqs(qp, & send_cq, & recv_cq);
  }
  if ((unsigned long )pd != (unsigned long )((struct mlx5_ib_pd *)0)) {
    tmp___7 = pd->pdn;
  } else {
    {
    tmp___6 = to_mpd(dev->devr.p0);
    tmp___7 = tmp___6->pdn;
    }
  }
  {
  tmp___8 = __fswab32(tmp___7);
  context->flags_pd = tmp___8;
  }
  if ((unsigned long )send_cq != (unsigned long )((struct mlx5_ib_cq *)0)) {
    {
    tmp___9 = __fswab32(send_cq->mcq.cqn);
    context->cqn_send = tmp___9;
    }
  } else {
    context->cqn_send = 0U;
  }
  if ((unsigned long )recv_cq != (unsigned long )((struct mlx5_ib_cq *)0)) {
    {
    tmp___10 = __fswab32(recv_cq->mcq.cqn);
    context->cqn_recv = tmp___10;
    }
  } else {
    context->cqn_recv = 0U;
  }
  context->params1 = 128U;
  if ((attr_mask & 2048) != 0) {
    {
    tmp___11 = __fswab32((__u32 )((int )attr->rnr_retry << 13));
    context->params1 = context->params1 | tmp___11;
    }
  } else {
  }
  if ((attr_mask & 1024) != 0) {
    {
    tmp___12 = __fswab32((__u32 )((int )attr->retry_cnt << 16));
    context->params1 = context->params1 | tmp___12;
    }
  } else {
  }
  if ((attr_mask & 8192) != 0) {
    if ((unsigned int )((unsigned char )attr->max_rd_atomic) != 0U) {
      {
      tmp___13 = fls((int )attr->max_rd_atomic + -1);
      tmp___14 = __fswab32((__u32 )(tmp___13 << 21));
      context->params1 = context->params1 | tmp___14;
      }
    } else {
    }
  } else {
  }
  if ((attr_mask & 65536) != 0) {
    {
    tmp___15 = __fswab32(attr->sq_psn);
    context->next_send_psn = tmp___15;
    }
  } else {
  }
  if ((attr_mask & 131072) != 0) {
    if ((unsigned int )((unsigned char )attr->max_dest_rd_atomic) != 0U) {
      {
      tmp___16 = fls((int )attr->max_dest_rd_atomic + -1);
      tmp___17 = __fswab32((__u32 )(tmp___16 << 21));
      context->params2 = context->params2 | tmp___17;
      }
    } else {
    }
  } else {
  }
  if ((attr_mask & 131080) != 0) {
    {
    tmp___18 = to_mlx5_access_flags(qp, attr, attr_mask);
    context->params2 = context->params2 | tmp___18;
    }
  } else {
  }
  if ((attr_mask & 32768) != 0) {
    {
    tmp___19 = __fswab32((__u32 )((int )attr->min_rnr_timer << 24));
    context->rnr_nextrecvpsn = context->rnr_nextrecvpsn | tmp___19;
    }
  } else {
  }
  if ((attr_mask & 4096) != 0) {
    {
    tmp___20 = __fswab32(attr->rq_psn);
    context->rnr_nextrecvpsn = context->rnr_nextrecvpsn | tmp___20;
    }
  } else {
  }
  if ((attr_mask & 64) != 0) {
    {
    tmp___21 = __fswab32(attr->qkey);
    context->qkey = tmp___21;
    }
  } else {
  }
  if ((qp->rq.wqe_cnt != 0 && (unsigned int )cur_state == 0U) && (unsigned int )new_state == 1U) {
    {
    tmp___22 = __fswab64(qp->db.dma);
    context->db_rec_addr = tmp___22;
    }
  } else {
  }
  if ((((unsigned int )cur_state == 3U && (unsigned int )new_state == 4U) && (attr_mask & 4) != 0) && (unsigned int )((unsigned char )attr->en_sqd_async_notify) != 0U) {
    sqd_event = 1;
  } else {
    sqd_event = 0;
  }
  if (((unsigned long )ibqp->uobject == (unsigned long )((struct ib_uobject *)0) && (unsigned int )cur_state == 0U) && (unsigned int )new_state == 1U) {
    context->sq_crq_size = (__be16 )((unsigned int )context->sq_crq_size | 4096U);
  } else {
  }
  {
  mlx5_cur = to_mlx5_state(cur_state);
  mlx5_new = to_mlx5_state(new_state);
  mlx5_st = to_mlx5_st(ibqp->qp_type);
  }
  if (mlx5_st < 0) {
    goto out;
  } else {
  }
  {
  tmp___23 = ib_mask_to_mlx5_opt(attr_mask);
  optpar = (enum mlx5_qp_optpar )tmp___23;
  optpar = (enum mlx5_qp_optpar )((unsigned int )optpar & (unsigned int )opt_mask[(unsigned int )mlx5_cur][(unsigned int )mlx5_new][mlx5_st]);
  tmp___24 = __fswab32((__u32 )optpar);
  in->optparam = tmp___24;
  tmp___25 = to_mlx5_state(new_state);
  tmp___26 = to_mlx5_state(cur_state);
  err = mlx5_core_qp_modify(& dev->mdev, tmp___26, tmp___25, in, sqd_event, & qp->mqp);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  qp->state = (u8 )new_state;
  if ((attr_mask & 8) != 0) {
    qp->atomic_rd_en = (u8 )attr->qp_access_flags;
  } else {
  }
  if ((attr_mask & 131072) != 0) {
    qp->resp_depth = attr->max_dest_rd_atomic;
  } else {
  }
  if ((attr_mask & 32) != 0) {
    qp->port = attr->port_num;
  } else {
  }
  if ((attr_mask & 16384) != 0) {
    qp->alt_port = attr->alt_port_num;
  } else {
  }
  if ((unsigned int )new_state == 0U && (unsigned long )ibqp->uobject == (unsigned long )((struct ib_uobject *)0)) {
    if ((unsigned long )ibqp->srq != (unsigned long )((struct ib_srq *)0)) {
      {
      tmp___27 = to_msrq(ibqp->srq);
      tmp___28 = tmp___27;
      }
    } else {
      tmp___28 = (struct mlx5_ib_srq *)0;
    }
    {
    mlx5_ib_cq_clean(recv_cq, (u32 )qp->mqp.qpn, tmp___28);
    }
    if ((unsigned long )send_cq != (unsigned long )recv_cq) {
      {
      mlx5_ib_cq_clean(send_cq, (u32 )qp->mqp.qpn, (struct mlx5_ib_srq *)0);
      }
    } else {
    }
    qp->rq.head = 0U;
    qp->rq.tail = 0U;
    qp->sq.head = 0U;
    qp->sq.tail = 0U;
    qp->sq.cur_post = 0U;
    qp->sq.last_poll = 0U;
    *(qp->db.db) = 0U;
    *(qp->db.db + 1UL) = 0U;
  } else {
  }
  out:
  {
  kfree((void const *)in);
  }
  return (err);
}
}
int mlx5_ib_modify_qp(struct ib_qp *ibqp , struct ib_qp_attr *attr , int attr_mask ,
                      struct ib_udata *udata )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_qp *qp ;
  struct mlx5_ib_qp *tmp___0 ;
  enum ib_qp_state cur_state ;
  enum ib_qp_state new_state ;
  int err ;
  int port ;
  int tmp___1 ;
  {
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  err = -22;
  ldv_mutex_lock_67(& qp->mutex);
  cur_state = (attr_mask & 2) != 0 ? attr->cur_qp_state : (enum ib_qp_state )qp->state;
  new_state = attr_mask & 1 ? attr->qp_state : cur_state;
  }
  if ((unsigned int )ibqp->qp_type != 4096U) {
    {
    tmp___1 = ib_modify_qp_is_ok(cur_state, new_state, ibqp->qp_type, (enum ib_qp_attr_mask )attr_mask,
                                 0);
    }
    if (tmp___1 == 0) {
      goto out;
    } else {
    }
  } else {
  }
  if ((attr_mask & 32) != 0 && ((unsigned int )attr->port_num == 0U || (int )attr->port_num > dev->mdev.caps.num_ports)) {
    goto out;
  } else {
  }
  if ((attr_mask & 16) != 0) {
    port = (attr_mask & 32) != 0 ? (int )attr->port_num : (int )qp->port;
    if ((int )attr->pkey_index >= dev->mdev.caps.port[port + -1].pkey_table_len) {
      goto out;
    } else {
    }
  } else {
  }
  if ((attr_mask & 8192) != 0 && (int )attr->max_rd_atomic > dev->mdev.caps.max_ra_res_qp) {
    goto out;
  } else {
  }
  if ((attr_mask & 131072) != 0 && (int )attr->max_dest_rd_atomic > dev->mdev.caps.max_ra_req_qp) {
    goto out;
  } else {
  }
  if ((unsigned int )cur_state == (unsigned int )new_state && (unsigned int )cur_state == 0U) {
    err = 0;
    goto out;
  } else {
  }
  {
  err = __mlx5_ib_modify_qp(ibqp, (struct ib_qp_attr const *)attr, attr_mask, cur_state,
                            new_state);
  }
  out:
  {
  ldv_mutex_unlock_68(& qp->mutex);
  }
  return (err);
}
}
static int mlx5_wq_overflow(struct mlx5_ib_wq *wq , int nreq , struct ib_cq *ib_cq )
{
  struct mlx5_ib_cq *cq ;
  unsigned int cur ;
  long tmp ;
  {
  {
  cur = wq->head - wq->tail;
  tmp = __builtin_expect(cur + (unsigned int )nreq < (unsigned int )wq->max_post,
                         1L);
  }
  if (tmp != 0L) {
    return (0);
  } else {
  }
  {
  cq = to_mcq(ib_cq);
  ldv_spin_lock_69(& cq->lock);
  cur = wq->head - wq->tail;
  ldv_spin_unlock_60___0(& cq->lock);
  }
  return (cur + (unsigned int )nreq >= (unsigned int )wq->max_post);
}
}
__inline static void set_raddr_seg(struct mlx5_wqe_raddr_seg *rseg , u64 remote_addr ,
                                   u32 rkey )
{
  __u64 tmp ;
  __u32 tmp___0 ;
  {
  {
  tmp = __fswab64(remote_addr);
  rseg->raddr = tmp;
  tmp___0 = __fswab32(rkey);
  rseg->rkey = tmp___0;
  rseg->reserved = 0U;
  }
  return;
}
}
static void set_datagram_seg(struct mlx5_wqe_datagram_seg *dseg , struct ib_send_wr *wr )
{
  struct mlx5_ib_ah *tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  {
  tmp = to_mah(wr->wr.ud.ah);
  memcpy((void *)(& dseg->av), (void const *)(& tmp->av), 48UL);
  tmp___0 = __fswab32(wr->wr.ud.remote_qpn | 2147483648U);
  dseg->av.dqp_dct = tmp___0;
  tmp___1 = __fswab32(wr->wr.ud.remote_qkey);
  dseg->av.key.qkey.qkey = tmp___1;
  }
  return;
}
}
static void set_data_ptr_seg(struct mlx5_wqe_data_seg *dseg , struct ib_sge *sg )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  {
  {
  tmp = __fswab32(sg->length);
  dseg->byte_count = tmp;
  tmp___0 = __fswab32(sg->lkey);
  dseg->lkey = tmp___0;
  tmp___1 = __fswab64(sg->addr);
  dseg->addr = tmp___1;
  }
  return;
}
}
static __be16 get_klm_octo(int npages )
{
  __u16 tmp ;
  {
  {
  tmp = __fswab16((int )((__u16 )(((npages + 7) & -8) / 2)));
  }
  return (tmp);
}
}
static __be64 frwr_mkey_mask(void)
{
  u64 result ;
  __u64 tmp ;
  {
  {
  result = 549331267ULL;
  tmp = __fswab64(result);
  }
  return (tmp);
}
}
static void set_frwr_umr_segment(struct mlx5_wqe_umr_ctrl_seg *umr , struct ib_send_wr *wr ,
                                 int li )
{
  {
  {
  memset((void *)umr, 0, 48UL);
  }
  if (li != 0) {
    umr->mkey_mask = 137438953472ULL;
    umr->flags = 128U;
    return;
  } else {
  }
  {
  umr->flags = 32U;
  umr->klm_octowords = get_klm_octo((int )wr->wr.fast_reg.page_list_len);
  umr->mkey_mask = frwr_mkey_mask();
  }
  return;
}
}
static void set_reg_umr_segment(struct mlx5_wqe_umr_ctrl_seg *umr , struct ib_send_wr *wr )
{
  struct umr_wr *umrwr ;
  u64 mask ;
  __u64 tmp ;
  __u64 tmp___0 ;
  {
  {
  umrwr = (struct umr_wr *)(& wr->wr.fast_reg);
  memset((void *)umr, 0, 48UL);
  }
  if ((wr->send_flags & 67108864) == 0) {
    {
    umr->flags = 32U;
    umr->klm_octowords = get_klm_octo((int )umrwr->npages);
    mask = 540942531ULL;
    tmp = __fswab64(mask);
    umr->mkey_mask = tmp;
    }
  } else {
    {
    umr->flags = 64U;
    mask = 536870912ULL;
    tmp___0 = __fswab64(mask);
    umr->mkey_mask = tmp___0;
    }
  }
  if (wr->num_sge == 0) {
    umr->flags = (u8 )((unsigned int )umr->flags | 128U);
  } else {
  }
  return;
}
}
static u8 get_umr_flags(int acc )
{
  {
  return ((u8 )((((((acc & 8) != 0 ? 64 : 0) | ((acc & 2) != 0 ? 32 : 0)) | ((acc & 4) != 0 ? 16 : 0)) | (acc & 1 ? 8 : 0)) | -123));
}
}
static void set_mkey_segment(struct mlx5_mkey_seg *seg , struct ib_send_wr *wr , int li ,
                             int *writ )
{
  __u32 tmp ;
  __u64 tmp___0 ;
  __u64 tmp___1 ;
  __u32 tmp___2 ;
  {
  {
  memset((void *)seg, 0, 64UL);
  }
  if (li != 0) {
    seg->status = 64U;
    return;
  } else {
  }
  {
  seg->flags = get_umr_flags(wr->wr.fast_reg.access_flags);
  *writ = (int )seg->flags & 10;
  tmp = __fswab32(wr->wr.fast_reg.rkey | 4294967040U);
  seg->qpn_mkey7_0 = tmp;
  seg->flags_pd = 1U;
  tmp___0 = __fswab64(wr->wr.fast_reg.iova_start);
  seg->start_addr = tmp___0;
  tmp___1 = __fswab64((__u64 )wr->wr.fast_reg.length);
  seg->len = tmp___1;
  tmp___2 = __fswab32((wr->wr.fast_reg.page_list_len + 1U) / 2U);
  seg->xlt_oct_size = tmp___2;
  seg->log2_page_size = (u8 )wr->wr.fast_reg.page_shift;
  }
  return;
}
}
static void set_reg_mkey_segment(struct mlx5_mkey_seg *seg , struct ib_send_wr *wr )
{
  struct mlx5_ib_pd *tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  __u64 tmp___2 ;
  u8 tmp___3 ;
  __u32 tmp___4 ;
  {
  {
  memset((void *)seg, 0, 64UL);
  }
  if ((wr->send_flags & 67108864) != 0) {
    seg->status = 64U;
    return;
  } else {
  }
  {
  seg->flags = convert_access(wr->wr.fast_reg.access_flags);
  tmp = to_mpd((struct ib_pd *)wr->wr.fast_reg.page_list);
  tmp___0 = __fswab32(tmp->pdn);
  seg->flags_pd = tmp___0;
  tmp___1 = __fswab64(wr->wr.fast_reg.iova_start);
  seg->start_addr = tmp___1;
  tmp___2 = __fswab64((__u64 )wr->wr.fast_reg.length);
  seg->len = tmp___2;
  seg->log2_page_size = (u8 )wr->wr.fast_reg.page_shift;
  tmp___3 = mlx5_mkey_variant(wr->wr.fast_reg.rkey);
  tmp___4 = __fswab32((unsigned int )tmp___3 | 4294967040U);
  seg->qpn_mkey7_0 = tmp___4;
  }
  return;
}
}
static void set_frwr_pages(struct mlx5_wqe_data_seg *dseg , struct ib_send_wr *wr ,
                           struct mlx5_core_dev *mdev , struct mlx5_ib_pd *pd , int writ )
{
  struct mlx5_ib_fast_reg_page_list *mfrpl ;
  struct mlx5_ib_fast_reg_page_list *tmp ;
  u64 *page_list ;
  u64 perm ;
  int i ;
  __u64 tmp___0 ;
  __u64 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  {
  {
  tmp = to_mfrpl(wr->wr.fast_reg.page_list);
  mfrpl = tmp;
  page_list = (wr->wr.fast_reg.page_list)->page_list;
  perm = writ != 0 ? 3ULL : 1ULL;
  i = 0;
  }
  goto ldv_36560;
  ldv_36559:
  {
  tmp___0 = __fswab64(*(page_list + (unsigned long )i) | perm);
  *(mfrpl->mapped_page_list + (unsigned long )i) = tmp___0;
  i = i + 1;
  }
  ldv_36560: ;
  if ((unsigned int )i < wr->wr.fast_reg.page_list_len) {
    goto ldv_36559;
  } else {
  }
  {
  tmp___1 = __fswab64(mfrpl->map);
  dseg->addr = tmp___1;
  tmp___2 = __fswab32((wr->wr.fast_reg.page_list_len * 8U + 63U) & 4294967232U);
  dseg->byte_count = tmp___2;
  tmp___3 = __fswab32(pd->pa_lkey);
  dseg->lkey = tmp___3;
  }
  return;
}
}
static __be32 send_ieth(struct ib_send_wr *wr )
{
  __u32 tmp ;
  {
  {
  if ((unsigned int )wr->opcode == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )wr->opcode == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )wr->opcode == 8U) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_3: ;
  case_1: ;
  return (wr->ex.imm_data);
  case_8:
  {
  tmp = __fswab32(wr->ex.invalidate_rkey);
  }
  return (tmp);
  switch_default: ;
  return (0U);
  switch_break: ;
  }
}
}
static u8 calc_sig(void *wqe , int size )
{
  u8 *p ;
  u8 res ;
  int i ;
  {
  p = (u8 *)wqe;
  res = 0U;
  i = 0;
  goto ldv_36577;
  ldv_36576:
  res = (u8 )((int )res ^ (int )*(p + (unsigned long )i));
  i = i + 1;
  ldv_36577: ;
  if (i < size) {
    goto ldv_36576;
  } else {
  }
  return (~ ((int )res));
}
}
static u8 wq_sig(void *wqe )
{
  u8 tmp ;
  {
  {
  tmp = calc_sig(wqe, ((int )*((u8 *)(wqe + 8UL)) & 63) << 4);
  }
  return (tmp);
}
}
static int set_data_inl_seg(struct mlx5_ib_qp *qp , struct ib_send_wr *wr , void *wqe ,
                            int *sz )
{
  struct mlx5_wqe_inline_seg *seg ;
  void *qend ;
  void *addr ;
  int inl___0 ;
  int copy ;
  int len ;
  int i ;
  long tmp ;
  long tmp___0 ;
  __u32 tmp___1 ;
  {
  qend = qp->sq.qend;
  inl___0 = 0;
  seg = (struct mlx5_wqe_inline_seg *)wqe;
  wqe = wqe + 4UL;
  i = 0;
  goto ldv_36596;
  ldv_36595:
  {
  addr = (void *)(wr->sg_list + (unsigned long )i)->addr;
  len = (int )(wr->sg_list + (unsigned long )i)->length;
  inl___0 = inl___0 + len;
  tmp = __builtin_expect(inl___0 > qp->max_inline_data, 0L);
  }
  if (tmp != 0L) {
    return (-12);
  } else {
  }
  {
  tmp___0 = __builtin_expect((unsigned long )(wqe + (unsigned long )len) > (unsigned long )qend,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    copy = (int )((unsigned int )((long )qend) - (unsigned int )((long )wqe));
    memcpy(wqe, (void const *)addr, (size_t )copy);
    addr = addr + (unsigned long )copy;
    len = len - copy;
    wqe = mlx5_get_send_wqe(qp, 0);
    }
  } else {
  }
  {
  memcpy(wqe, (void const *)addr, (size_t )len);
  wqe = wqe + (unsigned long )len;
  i = i + 1;
  }
  ldv_36596: ;
  if (i < wr->num_sge) {
    goto ldv_36595;
  } else {
  }
  {
  tmp___1 = __fswab32((unsigned int )inl___0 | 2147483648U);
  seg->byte_count = tmp___1;
  *sz = (int )((((unsigned long )inl___0 + 19UL) & 0xfffffffffffffff0UL) / 16UL);
  }
  return (0);
}
}
static int set_frwr_li_wr(void **seg , struct ib_send_wr *wr , int *size , struct mlx5_core_dev *mdev ,
                          struct mlx5_ib_pd *pd , struct mlx5_ib_qp *qp )
{
  int writ ;
  int li ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  writ = 0;
  li = (unsigned int )wr->opcode == 10U;
  tmp = __builtin_expect((wr->send_flags & 8) != 0, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  {
  set_frwr_umr_segment((struct mlx5_wqe_umr_ctrl_seg *)*seg, wr, li);
  *seg = *seg + 48UL;
  *size = (int )((unsigned int )*size + 3U);
  tmp___0 = __builtin_expect((unsigned long )*seg == (unsigned long )qp->sq.qend,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    *seg = mlx5_get_send_wqe(qp, 0);
    }
  } else {
  }
  {
  set_mkey_segment((struct mlx5_mkey_seg *)*seg, wr, li, & writ);
  *seg = *seg + 64UL;
  *size = (int )((unsigned int )*size + 4U);
  tmp___1 = __builtin_expect((unsigned long )*seg == (unsigned long )qp->sq.qend,
                             0L);
  }
  if (tmp___1 != 0L) {
    {
    *seg = mlx5_get_send_wqe(qp, 0);
    }
  } else {
  }
  if (li == 0) {
    {
    tmp___2 = __builtin_expect(wr->wr.fast_reg.page_list_len > (wr->wr.fast_reg.page_list)->max_page_list_len,
                               0L);
    }
    if (tmp___2 != 0L) {
      return (-12);
    } else {
    }
    {
    set_frwr_pages((struct mlx5_wqe_data_seg *)*seg, wr, mdev, pd, writ);
    *seg = *seg + 16UL;
    *size = (int )((unsigned int )*size + 1U);
    }
  } else {
  }
  return (0);
}
}
static u8 get_fence(u8 fence , struct ib_send_wr *wr )
{
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = __builtin_expect((unsigned int )wr->opcode == 10U, 0L);
  }
  if (tmp != 0L) {
    {
    tmp___0 = __builtin_expect((long )wr->send_flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      return (96U);
    } else {
    }
  } else {
  }
  {
  tmp___1 = __builtin_expect((unsigned int )fence != 0U, 0L);
  }
  if (tmp___1 != 0L) {
    if (wr->send_flags & 1) {
      return (128U);
    } else {
      return (fence);
    }
  } else {
    return (0U);
  }
}
}
int mlx5_ib_post_send(struct ib_qp *ibqp , struct ib_send_wr *wr , struct ib_send_wr **bad_wr )
{
  struct mlx5_wqe_ctrl_seg *ctrl ;
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_core_dev *mdev ;
  struct mlx5_ib_qp *qp ;
  struct mlx5_ib_qp *tmp___0 ;
  struct mlx5_wqe_data_seg *dpseg ;
  struct mlx5_wqe_xrc_seg *xrc ;
  struct mlx5_bf *bf ;
  int size ;
  void *qend ;
  unsigned long flags ;
  u32 mlx5_opcode ;
  unsigned int idx ;
  int err ;
  int inl___0 ;
  int num_sge ;
  void *seg ;
  int nreq ;
  int i ;
  u8 next_fence ;
  u8 opmod ;
  u8 fence ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  struct task_struct *tmp___6 ;
  long tmp___7 ;
  __u32 tmp___8 ;
  struct task_struct *tmp___9 ;
  __u32 tmp___10 ;
  struct mlx5_ib_pd *tmp___11 ;
  struct task_struct *tmp___12 ;
  __u32 tmp___13 ;
  struct mlx5_ib_pd *tmp___14 ;
  struct task_struct *tmp___15 ;
  long tmp___16 ;
  struct task_struct *tmp___17 ;
  __u32 tmp___18 ;
  long tmp___19 ;
  long tmp___20 ;
  int sz ;
  struct task_struct *tmp___21 ;
  long tmp___22 ;
  long tmp___23 ;
  long tmp___24 ;
  __u32 tmp___25 ;
  __u32 tmp___26 ;
  u8 tmp___27 ;
  long tmp___28 ;
  __u32 tmp___29 ;
  long tmp___30 ;
  {
  {
  ctrl = (struct mlx5_wqe_ctrl_seg *)0;
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  mdev = & dev->mdev;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  bf = qp->bf;
  size = size;
  qend = qp->sq.qend;
  err = 0;
  inl___0 = 0;
  next_fence = 0U;
  opmod = 0U;
  ldv___ldv_spin_lock_71(& qp->sq.lock);
  nreq = 0;
  }
  goto ldv_36693;
  ldv_36692:
  {
  tmp___2 = __builtin_expect((unsigned int )wr->opcode > 240U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___1 = get_current___1();
    printk("\f%s:%s:%d:(pid %d): \n", (char *)(& dev->ib_dev.name), "mlx5_ib_post_send",
           2073, tmp___1->pid);
    err = -22;
    *bad_wr = wr;
    }
    goto out;
  } else {
  }
  {
  tmp___4 = mlx5_wq_overflow(& qp->sq, nreq, qp->ibqp.send_cq);
  tmp___5 = __builtin_expect(tmp___4 != 0, 0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___3 = get_current___1();
    printk("\f%s:%s:%d:(pid %d): \n", (char *)(& dev->ib_dev.name), "mlx5_ib_post_send",
           2080, tmp___3->pid);
    err = -12;
    *bad_wr = wr;
    }
    goto out;
  } else {
  }
  {
  fence = qp->fm_cache;
  num_sge = wr->num_sge;
  tmp___7 = __builtin_expect(num_sge > qp->sq.max_gs, 0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___6 = get_current___1();
    printk("\f%s:%s:%d:(pid %d): \n", (char *)(& dev->ib_dev.name), "mlx5_ib_post_send",
           2089, tmp___6->pid);
    err = -12;
    *bad_wr = wr;
    }
    goto out;
  } else {
  }
  {
  idx = (unsigned int )((int )qp->sq.cur_post & (qp->sq.wqe_cnt + -1));
  seg = mlx5_get_send_wqe(qp, (int )idx);
  ctrl = (struct mlx5_wqe_ctrl_seg *)seg;
  *((uint32_t *)(seg + 8U)) = 0U;
  ctrl->imm = send_ieth(wr);
  ctrl->fm_ce_se = (u8 )(((int )((signed char )qp->sq_signal_bits) | ((wr->send_flags & 2) != 0 ? 8 : 0)) | ((wr->send_flags & 4) != 0 ? 2 : 0));
  seg = seg + 16UL;
  size = 1;
  }
  {
  if ((unsigned int )ibqp->qp_type == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )ibqp->qp_type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )ibqp->qp_type == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )ibqp->qp_type == 4U) {
    goto case_4___0;
  } else {
  }
  if ((unsigned int )ibqp->qp_type == 0U) {
    goto case_0___1;
  } else {
  }
  if ((unsigned int )ibqp->qp_type == 1U) {
    goto case_1___1;
  } else {
  }
  if ((unsigned int )ibqp->qp_type == 4096U) {
    goto case_4096;
  } else {
  }
  goto switch_default___1;
  case_9:
  {
  xrc = (struct mlx5_wqe_xrc_seg *)seg;
  tmp___8 = __fswab32(wr->xrc_remote_srq_num);
  xrc->xrc_srqn = tmp___8;
  seg = seg + 16UL;
  size = (int )((unsigned int )size + 1U);
  }
  case_2: ;
  {
  if ((unsigned int )wr->opcode == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )wr->opcode == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )wr->opcode == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )wr->opcode == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )wr->opcode == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )wr->opcode == 12U) {
    goto case_12;
  } else {
  }
  if ((unsigned int )wr->opcode == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )wr->opcode == 11U) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_4: ;
  case_0: ;
  case_1:
  {
  set_raddr_seg((struct mlx5_wqe_raddr_seg *)seg, wr->wr.rdma.remote_addr, wr->wr.rdma.rkey);
  seg = seg + 16UL;
  size = (int )((unsigned int )size + 1U);
  }
  goto ldv_36670;
  case_5: ;
  case_6: ;
  case_12:
  {
  tmp___9 = get_current___1();
  printk("\f%s:%s:%d:(pid %d): Atomic operations are not supported yet\n", (char *)(& dev->ib_dev.name),
         "mlx5_ib_post_send", 2130, tmp___9->pid);
  err = -38;
  *bad_wr = wr;
  }
  goto out;
  case_10:
  {
  next_fence = 32U;
  *(qp->sq.wr_data + (unsigned long )idx) = 10U;
  tmp___10 = __fswab32(wr->ex.invalidate_rkey);
  ctrl->imm = tmp___10;
  tmp___11 = to_mpd(ibqp->pd);
  err = set_frwr_li_wr(& seg, wr, & size, mdev, tmp___11, qp);
  }
  if (err != 0) {
    {
    tmp___12 = get_current___1();
    printk("\f%s:%s:%d:(pid %d): \n", (char *)(& dev->ib_dev.name), "mlx5_ib_post_send",
           2141, tmp___12->pid);
    *bad_wr = wr;
    }
    goto out;
  } else {
  }
  num_sge = 0;
  goto ldv_36670;
  case_11:
  {
  next_fence = 32U;
  *(qp->sq.wr_data + (unsigned long )idx) = 11U;
  tmp___13 = __fswab32(wr->wr.fast_reg.rkey);
  ctrl->imm = tmp___13;
  tmp___14 = to_mpd(ibqp->pd);
  err = set_frwr_li_wr(& seg, wr, & size, mdev, tmp___14, qp);
  }
  if (err != 0) {
    {
    tmp___15 = get_current___1();
    printk("\f%s:%s:%d:(pid %d): \n", (char *)(& dev->ib_dev.name), "mlx5_ib_post_send",
           2154, tmp___15->pid);
    *bad_wr = wr;
    }
    goto out;
  } else {
  }
  num_sge = 0;
  goto ldv_36670;
  switch_default: ;
  goto ldv_36670;
  switch_break___0: ;
  }
  ldv_36670: ;
  goto ldv_36677;
  case_3: ;
  {
  if ((unsigned int )wr->opcode == 0U) {
    goto case_0___0;
  } else {
  }
  if ((unsigned int )wr->opcode == 1U) {
    goto case_1___0;
  } else {
  }
  goto switch_default___0;
  case_0___0: ;
  case_1___0:
  {
  set_raddr_seg((struct mlx5_wqe_raddr_seg *)seg, wr->wr.rdma.remote_addr, wr->wr.rdma.rkey);
  seg = seg + 16UL;
  size = (int )((unsigned int )size + 1U);
  }
  goto ldv_36681;
  switch_default___0: ;
  goto ldv_36681;
  switch_break___1: ;
  }
  ldv_36681: ;
  goto ldv_36677;
  case_4___0: ;
  case_0___1: ;
  case_1___1:
  {
  set_datagram_seg((struct mlx5_wqe_datagram_seg *)seg, wr);
  seg = seg + 48UL;
  size = (int )((unsigned int )size + 3U);
  tmp___16 = __builtin_expect((unsigned long )seg == (unsigned long )qend, 0L);
  }
  if (tmp___16 != 0L) {
    {
    seg = mlx5_get_send_wqe(qp, 0);
    }
  } else {
  }
  goto ldv_36677;
  case_4096: ;
  if ((unsigned int )wr->opcode != 240U) {
    {
    err = -22;
    tmp___17 = get_current___1();
    printk("\f%s:%s:%d:(pid %d): bad opcode\n", (char *)(& dev->ib_dev.name), "mlx5_ib_post_send",
           2194, tmp___17->pid);
    }
    goto out;
  } else {
  }
  {
  *(qp->sq.wr_data + (unsigned long )idx) = 240U;
  tmp___18 = __fswab32(wr->wr.fast_reg.rkey);
  ctrl->imm = tmp___18;
  set_reg_umr_segment((struct mlx5_wqe_umr_ctrl_seg *)seg, wr);
  seg = seg + 48UL;
  size = (int )((unsigned int )size + 3U);
  tmp___19 = __builtin_expect((unsigned long )seg == (unsigned long )qend, 0L);
  }
  if (tmp___19 != 0L) {
    {
    seg = mlx5_get_send_wqe(qp, 0);
    }
  } else {
  }
  {
  set_reg_mkey_segment((struct mlx5_mkey_seg *)seg, wr);
  seg = seg + 64UL;
  size = (int )((unsigned int )size + 4U);
  tmp___20 = __builtin_expect((unsigned long )seg == (unsigned long )qend, 0L);
  }
  if (tmp___20 != 0L) {
    {
    seg = mlx5_get_send_wqe(qp, 0);
    }
  } else {
  }
  goto ldv_36677;
  switch_default___1: ;
  goto ldv_36677;
  switch_break: ;
  }
  ldv_36677: ;
  if ((wr->send_flags & 8) != 0 && num_sge != 0) {
    {
    sz = sz;
    err = set_data_inl_seg(qp, wr, seg, & sz);
    tmp___22 = __builtin_expect(err != 0, 0L);
    }
    if (tmp___22 != 0L) {
      {
      tmp___21 = get_current___1();
      printk("\f%s:%s:%d:(pid %d): \n", (char *)(& dev->ib_dev.name), "mlx5_ib_post_send",
             2220, tmp___21->pid);
      *bad_wr = wr;
      }
      goto out;
    } else {
    }
    inl___0 = 1;
    size = size + sz;
  } else {
    dpseg = (struct mlx5_wqe_data_seg *)seg;
    i = 0;
    goto ldv_36690;
    ldv_36689:
    {
    tmp___23 = __builtin_expect((unsigned long )((void *)dpseg) == (unsigned long )qend,
                                0L);
    }
    if (tmp___23 != 0L) {
      {
      seg = mlx5_get_send_wqe(qp, 0);
      dpseg = (struct mlx5_wqe_data_seg *)seg;
      }
    } else {
    }
    {
    tmp___24 = __builtin_expect((wr->sg_list + (unsigned long )i)->length != 0U, 1L);
    }
    if (tmp___24 != 0L) {
      {
      set_data_ptr_seg(dpseg, wr->sg_list + (unsigned long )i);
      size = (int )((unsigned int )size + 1U);
      dpseg = dpseg + 1;
      }
    } else {
    }
    i = i + 1;
    ldv_36690: ;
    if (i < num_sge) {
      goto ldv_36689;
    } else {
    }
  }
  {
  mlx5_opcode = mlx5_ib_opcode[(unsigned int )wr->opcode];
  tmp___25 = __fswab32((((unsigned int )qp->sq.cur_post << 8) | mlx5_opcode) | ((unsigned int )opmod << 24));
  ctrl->opmod_idx_opcode = tmp___25;
  tmp___26 = __fswab32((__u32 )(size | (qp->mqp.qpn << 8)));
  ctrl->qpn_ds = tmp___26;
  tmp___27 = get_fence((int )fence, wr);
  ctrl->fm_ce_se = (u8 )((int )ctrl->fm_ce_se | (int )tmp___27);
  qp->fm_cache = next_fence;
  tmp___28 = __builtin_expect(qp->wq_sig != 0, 0L);
  }
  if (tmp___28 != 0L) {
    {
    ctrl->signature = wq_sig((void *)ctrl);
    }
  } else {
  }
  *(qp->sq.wrid + (unsigned long )idx) = wr->wr_id;
  (qp->sq.w_list + (unsigned long )idx)->opcode = (u16 )mlx5_opcode;
  *(qp->sq.wqe_head + (unsigned long )idx) = qp->sq.head + (unsigned int )nreq;
  qp->sq.cur_post = (int )qp->sq.cur_post + (int )((u16 )(((size + 4) * 16 + -1) / 64));
  (qp->sq.w_list + (unsigned long )idx)->next = qp->sq.cur_post;
  nreq = nreq + 1;
  wr = wr->next;
  ldv_36693: ;
  if ((unsigned long )wr != (unsigned long )((struct ib_send_wr *)0)) {
    goto ldv_36692;
  } else {
  }
  out:
  {
  tmp___30 = __builtin_expect(nreq != 0, 1L);
  }
  if (tmp___30 != 0L) {
    {
    qp->sq.head = qp->sq.head + (unsigned int )nreq;
    __asm__ volatile ("sfence": : : "memory");
    tmp___29 = __fswab32((__u32 )qp->sq.cur_post);
    *(qp->db.db + 1UL) = tmp___29;
    __asm__ volatile ("sfence": : : "memory");
    }
    if (bf->need_lock != 0) {
      {
      ldv_spin_lock_72(& bf->lock);
      }
    } else {
    }
    {
    mlx5_write64((__be32 *)ctrl, bf->regreg + bf->offset, (spinlock_t *)0);
    __asm__ volatile ("": : : "memory");
    bf->offset = bf->offset ^ (unsigned long )bf->buf_size;
    }
    if (bf->need_lock != 0) {
      {
      ldv_spin_unlock_73(& bf->lock);
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_74(& qp->sq.lock, flags);
  }
  return (err);
}
}
static void set_sig_seg(struct mlx5_rwqe_sig *sig , int size )
{
  {
  {
  sig->signature = calc_sig((void *)sig, size);
  }
  return;
}
}
int mlx5_ib_post_recv(struct ib_qp *ibqp , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr )
{
  struct mlx5_ib_qp *qp ;
  struct mlx5_ib_qp *tmp ;
  struct mlx5_wqe_data_seg *scat ;
  struct mlx5_rwqe_sig *sig ;
  unsigned long flags ;
  int err ;
  int nreq ;
  int ind ;
  int i ;
  int tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  __u32 tmp___3 ;
  long tmp___4 ;
  {
  {
  tmp = to_mqp(ibqp);
  qp = tmp;
  err = 0;
  ldv___ldv_spin_lock_75(& qp->rq.lock);
  ind = (int )(qp->rq.head & (unsigned int )(qp->rq.wqe_cnt + -1));
  nreq = 0;
  }
  goto ldv_36717;
  ldv_36716:
  {
  tmp___0 = mlx5_wq_overflow(& qp->rq, nreq, qp->ibqp.recv_cq);
  }
  if (tmp___0 != 0) {
    err = -12;
    *bad_wr = wr;
    goto out;
  } else {
  }
  {
  tmp___1 = __builtin_expect(wr->num_sge > qp->rq.max_gs, 0L);
  }
  if (tmp___1 != 0L) {
    err = -22;
    *bad_wr = wr;
    goto out;
  } else {
  }
  {
  tmp___2 = get_recv_wqe(qp, ind);
  scat = (struct mlx5_wqe_data_seg *)tmp___2;
  }
  if (qp->wq_sig != 0) {
    scat = scat + 1;
  } else {
  }
  i = 0;
  goto ldv_36714;
  ldv_36713:
  {
  set_data_ptr_seg(scat + (unsigned long )i, wr->sg_list + (unsigned long )i);
  i = i + 1;
  }
  ldv_36714: ;
  if (i < wr->num_sge) {
    goto ldv_36713;
  } else {
  }
  if (i < qp->rq.max_gs) {
    (scat + (unsigned long )i)->byte_count = 0U;
    (scat + (unsigned long )i)->lkey = 65536U;
    (scat + (unsigned long )i)->addr = 0ULL;
  } else {
  }
  if (qp->wq_sig != 0) {
    {
    sig = (struct mlx5_rwqe_sig *)scat;
    set_sig_seg(sig, (qp->rq.max_gs + 1) << 2);
    }
  } else {
  }
  *(qp->rq.wrid + (unsigned long )ind) = wr->wr_id;
  ind = (ind + 1) & (qp->rq.wqe_cnt + -1);
  nreq = nreq + 1;
  wr = wr->next;
  ldv_36717: ;
  if ((unsigned long )wr != (unsigned long )((struct ib_recv_wr *)0)) {
    goto ldv_36716;
  } else {
  }
  out:
  {
  tmp___4 = __builtin_expect(nreq != 0, 1L);
  }
  if (tmp___4 != 0L) {
    {
    qp->rq.head = qp->rq.head + (unsigned int )nreq;
    __asm__ volatile ("sfence": : : "memory");
    tmp___3 = __fswab32(qp->rq.head & 65535U);
    *(qp->db.db) = tmp___3;
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_74(& qp->rq.lock, flags);
  }
  return (err);
}
}
__inline static enum ib_qp_state to_ib_qp_state(enum mlx5_qp_state mlx5_state )
{
  {
  {
  if ((unsigned int )mlx5_state == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )mlx5_state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )mlx5_state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )mlx5_state == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )mlx5_state == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )mlx5_state == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )mlx5_state == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )mlx5_state == 6U) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (0);
  case_1: ;
  return (1);
  case_2: ;
  return (2);
  case_3: ;
  return (3);
  case_7: ;
  case_5: ;
  return (4);
  case_4: ;
  return (5);
  case_6: ;
  return (6);
  switch_default: ;
  return (4294967295L);
  switch_break: ;
  }
}
}
__inline static enum ib_mig_state to_ib_mig_state(int mlx5_mig_state )
{
  {
  {
  if (mlx5_mig_state == 0) {
    goto case_0;
  } else {
  }
  if (mlx5_mig_state == 1) {
    goto case_1;
  } else {
  }
  if (mlx5_mig_state == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (1);
  case_3: ;
  return (0);
  switch_default: ;
  return (4294967295L);
  switch_break: ;
  }
}
}
static int to_ib_qp_access_flags(int mlx5_flags )
{
  int ib_flags ;
  {
  ib_flags = 0;
  if ((mlx5_flags & 32768) != 0) {
    ib_flags = ib_flags | 4;
  } else {
  }
  if ((mlx5_flags & 16384) != 0) {
    ib_flags = ib_flags | 2;
  } else {
  }
  if ((mlx5_flags & 8192) != 0) {
    ib_flags = ib_flags | 8;
  } else {
  }
  return (ib_flags);
}
}
static void to_ib_ah_attr(struct mlx5_ib_dev *ibdev , struct ib_ah_attr *ib_ah_attr ,
                          struct mlx5_qp_path *path )
{
  struct mlx5_core_dev *dev ;
  __u16 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  {
  dev = & ibdev->mdev;
  memset((void *)ib_ah_attr, 0, 40UL);
  ib_ah_attr->port_num = path->port;
  }
  if ((unsigned int )ib_ah_attr->port_num == 0U || (int )ib_ah_attr->port_num > dev->caps.num_ports) {
    return;
  } else {
  }
  {
  ib_ah_attr->sl = (unsigned int )path->sl & 15U;
  tmp = __fswab16((int )path->rlid);
  ib_ah_attr->dlid = tmp;
  ib_ah_attr->src_path_bits = (unsigned int )path->grh_mlid & 127U;
  ib_ah_attr->static_rate = (unsigned int )path->static_rate != 0U ? (unsigned int )path->static_rate + 251U : 0U;
  ib_ah_attr->ah_flags = (int )((signed char )path->grh_mlid) < 0;
  }
  if ((unsigned int )ib_ah_attr->ah_flags != 0U) {
    {
    ib_ah_attr->grh.sgid_index = path->mgid_index;
    ib_ah_attr->grh.hop_limit = path->hop_limit;
    tmp___0 = __fswab32(path->tclass_flowlabel);
    ib_ah_attr->grh.traffic_class = (u8 )(tmp___0 >> 20);
    tmp___1 = __fswab32(path->tclass_flowlabel);
    ib_ah_attr->grh.flow_label = tmp___1 & 1048575U;
    memcpy((void *)(& ib_ah_attr->grh.dgid.raw), (void const *)(& path->rgid), 16UL);
    }
  } else {
  }
  return;
}
}
int mlx5_ib_query_qp(struct ib_qp *ibqp , struct ib_qp_attr *qp_attr , int qp_attr_mask ,
                     struct ib_qp_init_attr *qp_init_attr )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_qp *qp ;
  struct mlx5_ib_qp *tmp___0 ;
  struct mlx5_query_qp_mbox_out *outb___0 ;
  struct mlx5_qp_context *context ;
  int mlx5_state ;
  int err ;
  void *tmp___1 ;
  __u32 tmp___2 ;
  enum ib_qp_state tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  {
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  err = 0;
  ldv_mutex_lock_77(& qp->mutex);
  tmp___1 = kzalloc(272UL, 208U);
  outb___0 = (struct mlx5_query_qp_mbox_out *)tmp___1;
  }
  if ((unsigned long )outb___0 == (unsigned long )((struct mlx5_query_qp_mbox_out *)0)) {
    err = -12;
    goto out;
  } else {
  }
  {
  context = & outb___0->ctx;
  err = mlx5_core_qp_query(& dev->mdev, & qp->mqp, outb___0, 272);
  }
  if (err != 0) {
    goto out_free;
  } else {
  }
  {
  tmp___2 = __fswab32(context->flags);
  mlx5_state = (int )(tmp___2 >> 28);
  tmp___3 = to_ib_qp_state((enum mlx5_qp_state )mlx5_state);
  qp->state = (u8 )tmp___3;
  qp_attr->qp_state = (enum ib_qp_state )qp->state;
  qp_attr->path_mtu = (enum ib_mtu )((int )context->mtu_msgmax >> 5);
  tmp___4 = __fswab32(context->flags);
  qp_attr->path_mig_state = to_ib_mig_state((int )(tmp___4 >> 11) & 3);
  tmp___5 = __fswab32(context->qkey);
  qp_attr->qkey = tmp___5;
  tmp___6 = __fswab32(context->rnr_nextrecvpsn);
  qp_attr->rq_psn = tmp___6 & 16777215U;
  tmp___7 = __fswab32(context->next_send_psn);
  qp_attr->sq_psn = tmp___7 & 16777215U;
  tmp___8 = __fswab32(context->log_pg_sz_remote_qpn);
  qp_attr->dest_qp_num = tmp___8 & 16777215U;
  tmp___9 = __fswab32(context->params2);
  qp_attr->qp_access_flags = to_ib_qp_access_flags((int )tmp___9);
  }
  if ((unsigned int )qp->ibqp.qp_type - 2U <= 1U) {
    {
    to_ib_ah_attr(dev, & qp_attr->ah_attr, & context->pri_path);
    to_ib_ah_attr(dev, & qp_attr->alt_ah_attr, & context->alt_path);
    qp_attr->alt_pkey_index = (unsigned int )((u16 )context->alt_path.pkey_index) & 127U;
    qp_attr->alt_port_num = qp_attr->alt_ah_attr.port_num;
    }
  } else {
  }
  {
  qp_attr->pkey_index = (unsigned int )((u16 )context->pri_path.pkey_index) & 127U;
  qp_attr->port_num = context->pri_path.port;
  qp_attr->sq_draining = mlx5_state == 7;
  tmp___10 = __fswab32(context->params1);
  qp_attr->max_rd_atomic = (u8 )(1 << ((int )(tmp___10 >> 21) & 7));
  tmp___11 = __fswab32(context->params2);
  qp_attr->max_dest_rd_atomic = (u8 )(1 << ((int )(tmp___11 >> 21) & 7));
  tmp___12 = __fswab32(context->rnr_nextrecvpsn);
  qp_attr->min_rnr_timer = (unsigned int )((u8 )(tmp___12 >> 24)) & 31U;
  qp_attr->timeout = (u8 )((int )context->pri_path.ackto_lt >> 3);
  tmp___13 = __fswab32(context->params1);
  qp_attr->retry_cnt = (unsigned int )((u8 )(tmp___13 >> 16)) & 7U;
  tmp___14 = __fswab32(context->params1);
  qp_attr->rnr_retry = (unsigned int )((u8 )(tmp___14 >> 13)) & 7U;
  qp_attr->alt_timeout = (u8 )((int )context->alt_path.ackto_lt >> 3);
  qp_attr->cur_qp_state = qp_attr->qp_state;
  qp_attr->cap.max_recv_wr = (u32 )qp->rq.wqe_cnt;
  qp_attr->cap.max_recv_sge = (u32 )qp->rq.max_gs;
  }
  if ((unsigned long )ibqp->uobject == (unsigned long )((struct ib_uobject *)0)) {
    qp_attr->cap.max_send_wr = (u32 )qp->sq.wqe_cnt;
    qp_attr->cap.max_send_sge = (u32 )qp->sq.max_gs;
  } else {
    qp_attr->cap.max_send_wr = 0U;
    qp_attr->cap.max_send_sge = 0U;
  }
  qp_attr->cap.max_inline_data = 0U;
  qp_init_attr->cap = qp_attr->cap;
  qp_init_attr->create_flags = 0;
  if ((int )qp->flags & 1) {
    qp_init_attr->create_flags = (enum ib_qp_create_flags )((int )qp_init_attr->create_flags | 2);
  } else {
  }
  qp_init_attr->sq_sig_type = ((int )qp->sq_signal_bits & 8) == 0;
  out_free:
  {
  kfree((void const *)outb___0);
  }
  out:
  {
  ldv_mutex_unlock_78(& qp->mutex);
  }
  return (err);
}
}
struct ib_xrcd *mlx5_ib_alloc_xrcd(struct ib_device *ibdev , struct ib_ucontext *context ,
                                   struct ib_udata *udata )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_xrcd *xrcd ;
  int err ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  {
  tmp = to_mdev(ibdev);
  dev = tmp;
  }
  if ((dev->mdev.caps.flags & 8ULL) == 0ULL) {
    {
    tmp___0 = ERR_PTR(-38L);
    }
    return ((struct ib_xrcd *)tmp___0);
  } else {
  }
  {
  tmp___1 = kmalloc(216UL, 208U);
  xrcd = (struct mlx5_ib_xrcd *)tmp___1;
  }
  if ((unsigned long )xrcd == (unsigned long )((struct mlx5_ib_xrcd *)0)) {
    {
    tmp___2 = ERR_PTR(-12L);
    }
    return ((struct ib_xrcd *)tmp___2);
  } else {
  }
  {
  err = mlx5_core_xrcd_alloc(& dev->mdev, & xrcd->xrcdn);
  }
  if (err != 0) {
    {
    kfree((void const *)xrcd);
    tmp___3 = ERR_PTR(-12L);
    }
    return ((struct ib_xrcd *)tmp___3);
  } else {
  }
  return (& xrcd->ibxrcd);
}
}
int mlx5_ib_dealloc_xrcd(struct ib_xrcd *xrcd )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  u32 xrcdn ;
  struct mlx5_ib_xrcd *tmp___0 ;
  int err ;
  struct task_struct *tmp___1 ;
  {
  {
  tmp = to_mdev(xrcd->device);
  dev = tmp;
  tmp___0 = to_mxrcd(xrcd);
  xrcdn = tmp___0->xrcdn;
  err = mlx5_core_xrcd_dealloc(& dev->mdev, xrcdn);
  }
  if (err != 0) {
    {
    tmp___1 = get_current___1();
    printk("\f%s:%s:%d:(pid %d): failed to dealloc xrcdn 0x%x\n", (char *)(& dev->ib_dev.name),
           "mlx5_ib_dealloc_xrcd", 2567, tmp___1->pid, xrcdn);
    }
    return (err);
  } else {
  }
  {
  kfree((void const *)xrcd);
  }
  return (0);
}
}
static void ldv_mutex_lock_49___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_mlx5_uuar_info(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_50___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_mlx5_uuar_info(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_51___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_mlx5_uuar_info(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_52___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_mlx5_uuar_info(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_54___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_cq();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_57(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_cq();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_60___0(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_ib_cq();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_mlx5_ib_qp(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_mlx5_ib_qp(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_69(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_cq();
  spin_lock(lock);
  }
  return;
}
}
static void ldv___ldv_spin_lock_71(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_wq();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_72(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_bf();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_73(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_bf();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_74(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_ib_wq();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_75(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_wq();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_77(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_mlx5_ib_qp(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_mlx5_ib_qp(ldv_func_arg1);
  }
  return;
}
}
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
__inline static int __ilog2_u64(u64 n )
{
  int tmp ;
  {
  {
  tmp = fls64(n);
  }
  return (tmp + -1);
}
}
__inline static struct task_struct *get_current___2(void)
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
  goto ldv_3074;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3074;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3074;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3074;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3074: ;
  return (pfo_ret__);
}
}
void mlx5_ib_cont_pages(struct ib_umem *umem , u64 addr , int *count , int *shift ,
                        int *ncont , int *order )
{
  struct ib_umem_chunk *chunk ;
  unsigned long tmp ;
  unsigned long m ;
  int i ;
  int j ;
  int k ;
  u64 base ;
  int p ;
  int skip ;
  int mask ;
  u64 len ;
  u64 pfn ;
  struct list_head const *__mptr ;
  unsigned long _min1 ;
  unsigned long _min2 ;
  unsigned long tmp___0 ;
  struct list_head const *__mptr___0 ;
  unsigned long __min1 ;
  unsigned long tmp___70 ;
  int tmp___71 ;
  unsigned long __min2 ;
  unsigned long tmp___141 ;
  {
  {
  base = 0ULL;
  p = 0;
  addr = addr >> 12;
  tmp = (unsigned long )addr;
  m = find_first_bit((unsigned long const *)(& tmp), 8UL);
  skip = 1 << (int )m;
  mask = skip + -1;
  i = 0;
  __mptr = (struct list_head const *)umem->chunk_list.next;
  chunk = (struct ib_umem_chunk *)__mptr;
  }
  goto ldv_35827;
  ldv_35826:
  j = 0;
  goto ldv_35824;
  ldv_35823:
  len = (u64 )(((struct scatterlist *)(& chunk->page_list + (unsigned long )j))->dma_length >> 12);
  pfn = ((struct scatterlist *)(& chunk->page_list + (unsigned long )j))->dma_address >> 12;
  k = 0;
  goto ldv_35821;
  ldv_35820: ;
  if ((i & mask) == 0) {
    {
    tmp = (unsigned long )pfn;
    _min1 = m;
    tmp___0 = find_first_bit((unsigned long const *)(& tmp), 8UL);
    _min2 = tmp___0;
    m = _min1 < _min2 ? _min1 : _min2;
    skip = 1 << (int )m;
    mask = skip + -1;
    base = pfn;
    p = 0;
    }
  } else
  if (base + (u64 )p != pfn) {
    {
    tmp = (unsigned long )p;
    m = find_first_bit((unsigned long const *)(& tmp), 8UL);
    skip = 1 << (int )m;
    mask = skip + -1;
    base = pfn;
    p = 0;
    }
  } else {
  }
  p = p + 1;
  i = i + 1;
  k = k + 1;
  ldv_35821: ;
  if ((u64 )k < len) {
    goto ldv_35820;
  } else {
  }
  j = j + 1;
  ldv_35824: ;
  if (j < chunk->nmap) {
    goto ldv_35823;
  } else {
  }
  __mptr___0 = (struct list_head const *)chunk->list.next;
  chunk = (struct ib_umem_chunk *)__mptr___0;
  ldv_35827: ;
  if ((unsigned long )(& chunk->list) != (unsigned long )(& umem->chunk_list)) {
    goto ldv_35826;
  } else {
  }
  if (i != 0) {
    {
    tmp___70 = __roundup_pow_of_two((unsigned long )i);
    tmp___71 = __ilog2_u64((u64 )tmp___70);
    __min1 = (unsigned long )tmp___71;
    __min2 = m;
    m = __min1 < __min2 ? __min1 : __min2;
    }
    if ((unsigned long )order != (unsigned long )((int *)0)) {
      {
      tmp___141 = __roundup_pow_of_two((unsigned long )i);
      *order = __ilog2_u64((u64 )(tmp___141 >> (int )m));
      }
    } else {
    }
    *ncont = ((i + (1 << (int )m)) + -1) / (1 << (int )m);
  } else {
    m = 0UL;
    if ((unsigned long )order != (unsigned long )((int *)0)) {
      *order = 0;
    } else {
    }
    *ncont = 0;
  }
  *shift = (int )((unsigned int )m + 12U);
  *count = i;
  return;
}
}
void mlx5_ib_populate_pas(struct mlx5_ib_dev *dev , struct ib_umem *umem , int page_shift ,
                          __be64 *pas , int umr )
{
  int shift ;
  int mask ;
  struct ib_umem_chunk *chunk ;
  int i ;
  int j ;
  int k ;
  u64 cur ;
  u64 base ;
  int len ;
  struct list_head const *__mptr ;
  __u64 tmp ;
  struct _ddebug descriptor ;
  __u64 tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  struct list_head const *__mptr___0 ;
  {
  shift = page_shift + -12;
  mask = (1 << shift) + -1;
  cur = 0ULL;
  i = 0;
  __mptr = (struct list_head const *)umem->chunk_list.next;
  chunk = (struct ib_umem_chunk *)__mptr;
  goto ldv_35862;
  ldv_35861:
  j = 0;
  goto ldv_35859;
  ldv_35858:
  len = (int )(((struct scatterlist *)(& chunk->page_list + (unsigned long )j))->dma_length >> 12);
  base = ((struct scatterlist *)(& chunk->page_list + (unsigned long )j))->dma_address;
  k = 0;
  goto ldv_35856;
  ldv_35855: ;
  if ((i & mask) == 0) {
    cur = base + (u64 )(k << 12);
    if (umr != 0) {
      cur = cur | 3ULL;
    } else {
    }
    {
    tmp = __fswab64(cur);
    *(pas + (unsigned long )(i >> shift)) = tmp;
    descriptor.modname = "mlx5_ib";
    descriptor.function = "mlx5_ib_populate_pas";
    descriptor.filename = "drivers/infiniband/hw/mlx5/mem.c";
    descriptor.format = "%s:%s:%d:(pid %d): pas[%d] 0x%llx\n";
    descriptor.lineno = 134U;
    descriptor.flags = 0U;
    tmp___2 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___0 = __fswab64(*(pas + (unsigned long )(i >> shift)));
      tmp___1 = get_current___2();
      __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): pas[%d] 0x%llx\n", (char *)(& dev->ib_dev.name),
                         "mlx5_ib_populate_pas", 134, tmp___1->pid, i >> shift, tmp___0);
      }
    } else {
    }
  } else {
    {
    descriptor___0.modname = "mlx5_ib";
    descriptor___0.function = "mlx5_ib_populate_pas";
    descriptor___0.filename = "drivers/infiniband/hw/mlx5/mem.c";
    descriptor___0.format = "%s:%s:%d:(pid %d): =====> 0x%llx\n";
    descriptor___0.lineno = 137U;
    descriptor___0.flags = 0U;
    tmp___4 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      tmp___3 = get_current___2();
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): =====> 0x%llx\n", (char *)(& dev->ib_dev.name),
                         "mlx5_ib_populate_pas", 137, tmp___3->pid, base + (u64 )(k << 12));
      }
    } else {
    }
  }
  i = i + 1;
  k = k + 1;
  ldv_35856: ;
  if (k < len) {
    goto ldv_35855;
  } else {
  }
  j = j + 1;
  ldv_35859: ;
  if (j < chunk->nmap) {
    goto ldv_35858;
  } else {
  }
  __mptr___0 = (struct list_head const *)chunk->list.next;
  chunk = (struct ib_umem_chunk *)__mptr___0;
  ldv_35862: ;
  if ((unsigned long )(& chunk->list) != (unsigned long )(& umem->chunk_list)) {
    goto ldv_35861;
  } else {
  }
  return;
}
}
int mlx5_ib_get_buf_offset(u64 addr , int page_shift , u32 *offset )
{
  u64 page_size ;
  u64 page_mask ;
  u64 off_size ;
  u64 off_mask ;
  u64 buf_off ;
  int tmp___66 ;
  {
  page_size = (u64 )(1 << page_shift);
  page_mask = page_size - 1ULL;
  buf_off = addr & page_mask;
  off_size = page_size >> 6;
  off_mask = off_size - 1ULL;
  if ((buf_off & off_mask) != 0ULL) {
    return (-22);
  } else {
  }
  {
  tmp___66 = __ilog2_u64(off_size);
  *offset = (u32 )(buf_off >> tmp___66);
  }
  return (0);
}
}
static void ldv_mutex_lock_49___1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_mlx5_ib_srq(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_mlx5_ib_srq(struct mutex *lock ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
static void ldv___ldv_spin_lock_53(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_lock_of_mlx5_ib_srq(void) ;
void ldv_spin_unlock_lock_of_mlx5_ib_srq(void) ;
static void ldv_mutex_unlock_50___1(struct mutex *ldv_func_arg1 ) ;
__inline static void ldv_spin_lock_51___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_52___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_54(spinlock_t *lock , unsigned long flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void *mlx5_vzalloc___1(unsigned long size )
{
  void *rtn ;
  {
  {
  rtn = kzalloc(size, 720U);
  }
  if ((unsigned long )rtn == (unsigned long )((void *)0)) {
    {
    rtn = vzalloc(size);
    }
  } else {
  }
  return (rtn);
}
}
extern int mlx5_core_create_srq(struct mlx5_core_dev * , struct mlx5_core_srq * ,
                                struct mlx5_create_srq_mbox_in * , int ) ;
extern int mlx5_core_destroy_srq(struct mlx5_core_dev * , struct mlx5_core_srq * ) ;
extern int mlx5_core_query_srq(struct mlx5_core_dev * , struct mlx5_core_srq * , struct mlx5_query_srq_mbox_out * ) ;
extern int mlx5_core_arm_srq(struct mlx5_core_dev * , struct mlx5_core_srq * , u16 ,
                             int ) ;
static int srq_signature ;
static void *get_wqe___0(struct mlx5_ib_srq *srq , int n )
{
  void *tmp ;
  {
  {
  tmp = mlx5_buf_offset(& srq->buf, n << srq->msrq.wqe_shift);
  }
  return (tmp);
}
}
static void mlx5_ib_srq_event(struct mlx5_core_srq *srq , enum mlx5_event type )
{
  struct ib_event event ;
  struct ib_srq *ibsrq ;
  struct mlx5_ib_srq *tmp ;
  {
  {
  tmp = to_mibsrq(srq);
  ibsrq = & tmp->ibsrq;
  }
  if ((unsigned long )ibsrq->event_handler != (unsigned long )((void (*)(struct ib_event * ,
                                                                         void * ))0)) {
    event.device = ibsrq->device;
    event.element.srq = ibsrq;
    {
    if ((unsigned int )type == 20U) {
      goto case_20;
    } else {
    }
    if ((unsigned int )type == 18U) {
      goto case_18;
    } else {
    }
    goto switch_default;
    case_20:
    event.event = 15;
    goto ldv_35890;
    case_18:
    event.event = 14;
    goto ldv_35890;
    switch_default:
    {
    printk("\fmlx5_ib: Unexpected event type %d on SRQ %06x\n", (unsigned int )type,
           srq->srqn);
    }
    return;
    switch_break: ;
    }
    ldv_35890:
    {
    (*(ibsrq->event_handler))(& event, ibsrq->srq_context);
    }
  } else {
  }
  return;
}
}
static int create_srq_user(struct ib_pd *pd , struct mlx5_ib_srq *srq , struct mlx5_create_srq_mbox_in **in ,
                           struct ib_udata *udata , int buf_size , int *inlen )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_create_srq ucmd ;
  int err ;
  int npages ;
  int page_shift ;
  int ncont ;
  u32 offset ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  struct task_struct *tmp___7 ;
  void *tmp___8 ;
  struct mlx5_ib_ucontext *tmp___9 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  __u32 tmp___12 ;
  {
  {
  tmp = to_mdev(pd->device);
  dev = tmp;
  tmp___2 = ib_copy_from_udata((void *)(& ucmd), udata, 24UL);
  }
  if (tmp___2 != 0) {
    {
    descriptor.modname = "mlx5_ib";
    descriptor.function = "create_srq_user";
    descriptor.filename = "drivers/infiniband/hw/mlx5/srq.c";
    descriptor.format = "%s:%s:%d:(pid %d): failed copy udata\n";
    descriptor.lineno = 88U;
    descriptor.flags = 0U;
    tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___0 = get_current();
      __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): failed copy udata\n", (char *)(& dev->ib_dev.name),
                         "create_srq_user", 88, tmp___0->pid);
      }
    } else {
    }
    return (-14);
  } else {
  }
  {
  srq->wq_sig = (int )ucmd.flags & 1;
  srq->umem = ib_umem_get((pd->uobject)->context, (unsigned long )ucmd.buf_addr, (size_t )buf_size,
                          0, 0);
  tmp___6 = IS_ERR((void const *)srq->umem);
  }
  if (tmp___6 != 0L) {
    {
    descriptor___0.modname = "mlx5_ib";
    descriptor___0.function = "create_srq_user";
    descriptor___0.filename = "drivers/infiniband/hw/mlx5/srq.c";
    descriptor___0.format = "%s:%s:%d:(pid %d): failed umem get, size %d\n";
    descriptor___0.lineno = 96U;
    descriptor___0.flags = 0U;
    tmp___4 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      tmp___3 = get_current();
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): failed umem get, size %d\n",
                         (char *)(& dev->ib_dev.name), "create_srq_user", 96, tmp___3->pid,
                         buf_size);
      }
    } else {
    }
    {
    tmp___5 = PTR_ERR((void const *)srq->umem);
    err = (int )tmp___5;
    }
    return (err);
  } else {
  }
  {
  mlx5_ib_cont_pages(srq->umem, ucmd.buf_addr, & npages, & page_shift, & ncont, (int *)0);
  err = mlx5_ib_get_buf_offset(ucmd.buf_addr, page_shift, & offset);
  }
  if (err != 0) {
    {
    tmp___7 = get_current();
    printk("\f%s:%s:%d:(pid %d): bad offset\n", (char *)(& dev->ib_dev.name), "create_srq_user",
           106, tmp___7->pid);
    }
    goto err_umem;
  } else {
  }
  {
  *inlen = (int )((unsigned int )((unsigned long )ncont + 34UL) * 8U);
  tmp___8 = mlx5_vzalloc___1((unsigned long )*inlen);
  *in = (struct mlx5_create_srq_mbox_in *)tmp___8;
  }
  if ((unsigned long )*in == (unsigned long )((struct mlx5_create_srq_mbox_in *)0)) {
    err = -12;
    goto err_umem;
  } else {
  }
  {
  mlx5_ib_populate_pas(dev, srq->umem, page_shift, (__be64 *)(& (*in)->pas), 0);
  tmp___9 = to_mucontext((pd->uobject)->context);
  err = mlx5_ib_db_map_user(tmp___9, (unsigned long )ucmd.db_addr, & srq->db);
  }
  if (err != 0) {
    {
    descriptor___1.modname = "mlx5_ib";
    descriptor___1.function = "create_srq_user";
    descriptor___1.filename = "drivers/infiniband/hw/mlx5/srq.c";
    descriptor___1.format = "%s:%s:%d:(pid %d): map doorbell failed\n";
    descriptor___1.lineno = 122U;
    descriptor___1.flags = 0U;
    tmp___11 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___11 != 0L) {
      {
      tmp___10 = get_current();
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): map doorbell failed\n",
                         (char *)(& dev->ib_dev.name), "create_srq_user", 122, tmp___10->pid);
      }
    } else {
    }
    goto err_in;
  } else {
  }
  {
  (*in)->ctx.log_pg_sz = (unsigned int )((u8 )page_shift) + 244U;
  tmp___12 = __fswab32(offset << 26);
  (*in)->ctx.pgoff_cqn = tmp___12;
  }
  return (0);
  err_in:
  {
  mlx5_vfree((void const *)*in);
  }
  err_umem:
  {
  ib_umem_release(srq->umem);
  }
  return (err);
}
}
static int create_srq_kernel(struct mlx5_ib_dev *dev , struct mlx5_ib_srq *srq , struct mlx5_create_srq_mbox_in **in ,
                             int buf_size , int *inlen )
{
  int err ;
  int i ;
  struct mlx5_wqe_srq_next_seg *next ;
  int page_shift ;
  int npages ;
  struct task_struct *tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  __u16 tmp___4 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  {
  {
  err = mlx5_db_alloc(& dev->mdev, & srq->db);
  }
  if (err != 0) {
    {
    tmp = get_current();
    printk("\f%s:%s:%d:(pid %d): alloc dbell rec failed\n", (char *)(& dev->ib_dev.name),
           "create_srq_kernel", 152, tmp->pid);
    }
    return (err);
  } else {
  }
  {
  *(srq->db.db) = 0U;
  tmp___2 = mlx5_buf_alloc(& dev->mdev, buf_size, 8192, & srq->buf);
  }
  if (tmp___2 != 0) {
    {
    descriptor.modname = "mlx5_ib";
    descriptor.function = "create_srq_kernel";
    descriptor.filename = "drivers/infiniband/hw/mlx5/srq.c";
    descriptor.format = "%s:%s:%d:(pid %d): buf alloc failed\n";
    descriptor.lineno = 159U;
    descriptor.flags = 0U;
    tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___0 = get_current();
      __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): buf alloc failed\n", (char *)(& dev->ib_dev.name),
                         "create_srq_kernel", 159, tmp___0->pid);
      }
    } else {
    }
    err = -12;
    goto err_db;
  } else {
  }
  page_shift = srq->buf.page_shift;
  srq->head = 0;
  srq->tail = srq->msrq.max + -1;
  srq->wqe_ctr = 0U;
  i = 0;
  goto ldv_35930;
  ldv_35929:
  {
  tmp___3 = get_wqe___0(srq, i);
  next = (struct mlx5_wqe_srq_next_seg *)tmp___3;
  tmp___4 = __fswab16((int )((__u16 )((int )((short )((unsigned int )((unsigned short )i) + 1U)) & (int )((short )((unsigned int )((unsigned short )srq->msrq.max) + 65535U)))));
  next->next_wqe_index = tmp___4;
  i = i + 1;
  }
  ldv_35930: ;
  if (i < srq->msrq.max) {
    goto ldv_35929;
  } else {
  }
  {
  npages = ((srq->buf.npages + (1 << (page_shift + -12))) + -1) / (1 << (page_shift + -12));
  descriptor___0.modname = "mlx5_ib";
  descriptor___0.function = "create_srq_kernel";
  descriptor___0.filename = "drivers/infiniband/hw/mlx5/srq.c";
  descriptor___0.format = "%s:%s:%d:(pid %d): buf_size %d, page_shift %d, npages %d, calc npages %d\n";
  descriptor___0.lineno = 177U;
  descriptor___0.flags = 0U;
  tmp___6 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    tmp___5 = get_current();
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): buf_size %d, page_shift %d, npages %d, calc npages %d\n",
                       (char *)(& dev->ib_dev.name), "create_srq_kernel", 177, tmp___5->pid,
                       buf_size, page_shift, srq->buf.npages, npages);
    }
  } else {
  }
  {
  *inlen = (int )((unsigned int )((unsigned long )npages + 34UL) * 8U);
  tmp___7 = mlx5_vzalloc___1((unsigned long )*inlen);
  *in = (struct mlx5_create_srq_mbox_in *)tmp___7;
  }
  if ((unsigned long )*in == (unsigned long )((struct mlx5_create_srq_mbox_in *)0)) {
    err = -12;
    goto err_buf;
  } else {
  }
  {
  mlx5_fill_page_array(& srq->buf, (__be64 *)(& (*in)->pas));
  tmp___8 = kmalloc((unsigned long )srq->msrq.max * 8UL, 208U);
  srq->wrid = (u64 *)tmp___8;
  }
  if ((unsigned long )srq->wrid == (unsigned long )((u64 *)0ULL)) {
    {
    descriptor___1.modname = "mlx5_ib";
    descriptor___1.function = "create_srq_kernel";
    descriptor___1.filename = "drivers/infiniband/hw/mlx5/srq.c";
    descriptor___1.format = "%s:%s:%d:(pid %d): kmalloc failed %lu\n";
    descriptor___1.lineno = 189U;
    descriptor___1.flags = 0U;
    tmp___10 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___9 = get_current();
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): kmalloc failed %lu\n",
                         (char *)(& dev->ib_dev.name), "create_srq_kernel", 189, tmp___9->pid,
                         (unsigned long )srq->msrq.max * 8UL);
      }
    } else {
    }
    err = -12;
    goto err_in;
  } else {
  }
  srq->wq_sig = srq_signature != 0;
  (*in)->ctx.log_pg_sz = (unsigned int )((u8 )page_shift) + 244U;
  return (0);
  err_in:
  {
  mlx5_vfree((void const *)*in);
  }
  err_buf:
  {
  mlx5_buf_free(& dev->mdev, & srq->buf);
  }
  err_db:
  {
  mlx5_db_free(& dev->mdev, & srq->db);
  }
  return (err);
}
}
static void destroy_srq_user(struct ib_pd *pd , struct mlx5_ib_srq *srq )
{
  struct mlx5_ib_ucontext *tmp ;
  {
  {
  tmp = to_mucontext((pd->uobject)->context);
  mlx5_ib_db_unmap_user(tmp, & srq->db);
  ib_umem_release(srq->umem);
  }
  return;
}
}
static void destroy_srq_kernel(struct mlx5_ib_dev *dev , struct mlx5_ib_srq *srq )
{
  {
  {
  kfree((void const *)srq->wrid);
  mlx5_buf_free(& dev->mdev, & srq->buf);
  mlx5_db_free(& dev->mdev, & srq->db);
  }
  return;
}
}
struct ib_srq *mlx5_ib_create_srq(struct ib_pd *pd , struct ib_srq_init_attr *init_attr ,
                                  struct ib_udata *udata )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_srq *srq ;
  int desc_size ;
  int buf_size ;
  int err ;
  struct mlx5_create_srq_mbox_in *in ;
  int inlen ;
  int is_xrc ;
  u32 flgs ;
  u32 xrcdn ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  unsigned long tmp___73 ;
  unsigned long tmp___143 ;
  int __max1 ;
  int __max2 ;
  int tmp___211 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___212 ;
  long tmp___213 ;
  struct task_struct *tmp___214 ;
  int tmp___282 ;
  struct mlx5_ib_xrcd *tmp___283 ;
  struct mlx5_ib_cq *tmp___284 ;
  __u32 tmp___285 ;
  struct mlx5_ib_xrcd *tmp___286 ;
  struct mlx5_ib_cq *tmp___287 ;
  __u32 tmp___288 ;
  __u32 tmp___289 ;
  struct mlx5_ib_pd *tmp___290 ;
  __u32 tmp___291 ;
  __u64 tmp___292 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___293 ;
  long tmp___294 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___295 ;
  long tmp___296 ;
  struct _ddebug descriptor___3 ;
  struct task_struct *tmp___297 ;
  long tmp___298 ;
  int tmp___299 ;
  void *tmp___300 ;
  {
  {
  tmp = to_mdev(pd->device);
  dev = tmp;
  in = in;
  inlen = inlen;
  }
  if (init_attr->attr.max_wr >= (u32 )dev->mdev.caps.max_srq_wqes) {
    {
    descriptor.modname = "mlx5_ib";
    descriptor.function = "mlx5_ib_create_srq";
    descriptor.filename = "drivers/infiniband/hw/mlx5/srq.c";
    descriptor.format = "%s:%s:%d:(pid %d): max_wr %d, cap %d\n";
    descriptor.lineno = 242U;
    descriptor.flags = 0U;
    tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___0 = get_current();
      __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): max_wr %d, cap %d\n", (char *)(& dev->ib_dev.name),
                         "mlx5_ib_create_srq", 242, tmp___0->pid, init_attr->attr.max_wr,
                         dev->mdev.caps.max_srq_wqes);
      }
    } else {
    }
    {
    tmp___2 = ERR_PTR(-22L);
    }
    return ((struct ib_srq *)tmp___2);
  } else {
  }
  {
  tmp___3 = kmalloc(560UL, 208U);
  srq = (struct mlx5_ib_srq *)tmp___3;
  }
  if ((unsigned long )srq == (unsigned long )((struct mlx5_ib_srq *)0)) {
    {
    tmp___4 = ERR_PTR(-12L);
    }
    return ((struct ib_srq *)tmp___4);
  } else {
  }
  {
  __mutex_init(& srq->mutex, "&srq->mutex", & __key);
  spinlock_check(& srq->lock);
  __raw_spin_lock_init(& srq->lock.__annonCompField19.rlock, "&(&srq->lock)->rlock",
                       & __key___0);
  tmp___73 = __roundup_pow_of_two((unsigned long )(init_attr->attr.max_wr + 1U));
  srq->msrq.max = (int )tmp___73;
  srq->msrq.max_gs = (int )init_attr->attr.max_sge;
  desc_size = (int )((unsigned int )((unsigned long )srq->msrq.max_gs + 1UL) * 16U);
  tmp___143 = __roundup_pow_of_two((unsigned long )desc_size);
  desc_size = (int )tmp___143;
  __max1 = 32;
  __max2 = desc_size;
  desc_size = __max1 > __max2 ? __max1 : __max2;
  srq->msrq.max_avail_gather = (int )(((unsigned long )desc_size - 16UL) / 16UL);
  tmp___211 = __ilog2_u32((u32 )desc_size);
  srq->msrq.wqe_shift = tmp___211;
  buf_size = srq->msrq.max * desc_size;
  descriptor___0.modname = "mlx5_ib";
  descriptor___0.function = "mlx5_ib_create_srq";
  descriptor___0.filename = "drivers/infiniband/hw/mlx5/srq.c";
  descriptor___0.format = "%s:%s:%d:(pid %d): desc_size 0x%x, req wr 0x%x, srq size 0x%x, max_gs 0x%x, max_avail_gather 0x%x\n";
  descriptor___0.lineno = 265U;
  descriptor___0.flags = 0U;
  tmp___213 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___213 != 0L) {
    {
    tmp___212 = get_current();
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): desc_size 0x%x, req wr 0x%x, srq size 0x%x, max_gs 0x%x, max_avail_gather 0x%x\n",
                       (char *)(& dev->ib_dev.name), "mlx5_ib_create_srq", 265, tmp___212->pid,
                       desc_size, init_attr->attr.max_wr, srq->msrq.max, srq->msrq.max_gs,
                       srq->msrq.max_avail_gather);
    }
  } else {
  }
  if ((unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
    {
    err = create_srq_user(pd, srq, & in, udata, buf_size, & inlen);
    }
  } else {
    {
    err = create_srq_kernel(dev, srq, & in, buf_size, & inlen);
    }
  }
  if (err != 0) {
    {
    tmp___214 = get_current();
    printk("\f%s:%s:%d:(pid %d): create srq %s failed, err %d\n", (char *)(& dev->ib_dev.name),
           "mlx5_ib_create_srq", 274, tmp___214->pid, (unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0) ? (char *)"user" : (char *)"kernel",
           err);
    }
    goto err_srq;
  } else {
  }
  {
  is_xrc = (unsigned int )init_attr->srq_type == 1U;
  tmp___282 = __ilog2_u32((u32 )srq->msrq.max);
  in->ctx.state_log_sz = (u8 )tmp___282;
  flgs = (u32 )((((srq->msrq.wqe_shift + -4) | (is_xrc << 5)) | (srq->wq_sig << 7)) << 24);
  xrcdn = 0U;
  }
  if (is_xrc != 0) {
    {
    tmp___283 = to_mxrcd(init_attr->ext.xrc.xrcd);
    xrcdn = tmp___283->xrcdn;
    tmp___284 = to_mcq(init_attr->ext.xrc.cq);
    tmp___285 = __fswab32(tmp___284->mcq.cqn);
    in->ctx.pgoff_cqn = in->ctx.pgoff_cqn | tmp___285;
    }
  } else
  if ((unsigned int )init_attr->srq_type == 0U) {
    {
    tmp___286 = to_mxrcd(dev->devr.x0);
    xrcdn = tmp___286->xrcdn;
    tmp___287 = to_mcq(dev->devr.c0);
    tmp___288 = __fswab32(tmp___287->mcq.cqn);
    in->ctx.pgoff_cqn = in->ctx.pgoff_cqn | tmp___288;
    }
  } else {
  }
  {
  tmp___289 = __fswab32((flgs & 4278190080U) | (xrcdn & 16777215U));
  in->ctx.flags_xrcd = tmp___289;
  tmp___290 = to_mpd(pd);
  tmp___291 = __fswab32(tmp___290->pdn);
  in->ctx.pd = tmp___291;
  tmp___292 = __fswab64(srq->db.dma);
  in->ctx.db_record = tmp___292;
  err = mlx5_core_create_srq(& dev->mdev, & srq->msrq, in, inlen);
  mlx5_vfree((void const *)in);
  }
  if (err != 0) {
    {
    descriptor___1.modname = "mlx5_ib";
    descriptor___1.function = "mlx5_ib_create_srq";
    descriptor___1.filename = "drivers/infiniband/hw/mlx5/srq.c";
    descriptor___1.format = "%s:%s:%d:(pid %d): create SRQ failed, err %d\n";
    descriptor___1.lineno = 297U;
    descriptor___1.flags = 0U;
    tmp___294 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___294 != 0L) {
      {
      tmp___293 = get_current();
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): create SRQ failed, err %d\n",
                         (char *)(& dev->ib_dev.name), "mlx5_ib_create_srq", 297,
                         tmp___293->pid, err);
      }
    } else {
    }
    goto err_usr_kern_srq;
  } else {
  }
  {
  descriptor___2.modname = "mlx5_ib";
  descriptor___2.function = "mlx5_ib_create_srq";
  descriptor___2.filename = "drivers/infiniband/hw/mlx5/srq.c";
  descriptor___2.format = "%s:%s:%d:(pid %d): create SRQ with srqn 0x%x\n";
  descriptor___2.lineno = 301U;
  descriptor___2.flags = 0U;
  tmp___296 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___296 != 0L) {
    {
    tmp___295 = get_current();
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d:(pid %d): create SRQ with srqn 0x%x\n",
                       (char *)(& dev->ib_dev.name), "mlx5_ib_create_srq", 301, tmp___295->pid,
                       srq->msrq.srqn);
    }
  } else {
  }
  srq->msrq.event = & mlx5_ib_srq_event;
  srq->ibsrq.ext.xrc.srq_num = srq->msrq.srqn;
  if ((unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
    {
    tmp___299 = ib_copy_to_udata(udata, (void *)(& srq->msrq.srqn), 4UL);
    }
    if (tmp___299 != 0) {
      {
      descriptor___3.modname = "mlx5_ib";
      descriptor___3.function = "mlx5_ib_create_srq";
      descriptor___3.filename = "drivers/infiniband/hw/mlx5/srq.c";
      descriptor___3.format = "%s:%s:%d:(pid %d): copy to user failed\n";
      descriptor___3.lineno = 308U;
      descriptor___3.flags = 0U;
      tmp___298 = __builtin_expect((long )descriptor___3.flags & 1L, 0L);
      }
      if (tmp___298 != 0L) {
        {
        tmp___297 = get_current();
        __dynamic_pr_debug(& descriptor___3, "%s:%s:%d:(pid %d): copy to user failed\n",
                           (char *)(& dev->ib_dev.name), "mlx5_ib_create_srq", 308,
                           tmp___297->pid);
        }
      } else {
      }
      err = -14;
      goto err_core;
    } else {
    }
  } else {
  }
  init_attr->attr.max_wr = (u32 )(srq->msrq.max + -1);
  return (& srq->ibsrq);
  err_core:
  {
  mlx5_core_destroy_srq(& dev->mdev, & srq->msrq);
  }
  err_usr_kern_srq: ;
  if ((unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
    {
    destroy_srq_user(pd, srq);
    }
  } else {
    {
    destroy_srq_kernel(dev, srq);
    }
  }
  err_srq:
  {
  kfree((void const *)srq);
  tmp___300 = ERR_PTR((long )err);
  }
  return ((struct ib_srq *)tmp___300);
}
}
int mlx5_ib_modify_srq(struct ib_srq *ibsrq , struct ib_srq_attr *attr , enum ib_srq_attr_mask attr_mask ,
                       struct ib_udata *udata )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_srq *srq ;
  struct mlx5_ib_srq *tmp___0 ;
  int ret ;
  {
  {
  tmp = to_mdev(ibsrq->device);
  dev = tmp;
  tmp___0 = to_msrq(ibsrq);
  srq = tmp___0;
  }
  if ((int )attr_mask & 1) {
    return (-22);
  } else {
  }
  if (((unsigned int )attr_mask & 2U) != 0U) {
    if (attr->srq_limit >= (u32 )srq->msrq.max) {
      return (-22);
    } else {
    }
    {
    ldv_mutex_lock_49___1(& srq->mutex);
    ret = mlx5_core_arm_srq(& dev->mdev, & srq->msrq, (int )((u16 )attr->srq_limit),
                            1);
    ldv_mutex_unlock_50___1(& srq->mutex);
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  return (0);
}
}
int mlx5_ib_query_srq(struct ib_srq *ibsrq , struct ib_srq_attr *srq_attr )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_srq *srq ;
  struct mlx5_ib_srq *tmp___0 ;
  int ret ;
  struct mlx5_query_srq_mbox_out *out ;
  void *tmp___1 ;
  __u16 tmp___2 ;
  {
  {
  tmp = to_mdev(ibsrq->device);
  dev = tmp;
  tmp___0 = to_msrq(ibsrq);
  srq = tmp___0;
  tmp___1 = kzalloc(96UL, 208U);
  out = (struct mlx5_query_srq_mbox_out *)tmp___1;
  }
  if ((unsigned long )out == (unsigned long )((struct mlx5_query_srq_mbox_out *)0)) {
    return (-12);
  } else {
  }
  {
  ret = mlx5_core_query_srq(& dev->mdev, & srq->msrq, out);
  }
  if (ret != 0) {
    goto out_box;
  } else {
  }
  {
  tmp___2 = __fswab16((int )out->ctx.lwm);
  srq_attr->srq_limit = (u32 )tmp___2;
  srq_attr->max_wr = (u32 )(srq->msrq.max + -1);
  srq_attr->max_sge = (u32 )srq->msrq.max_gs;
  }
  out_box:
  {
  kfree((void const *)out);
  }
  return (ret);
}
}
int mlx5_ib_destroy_srq(struct ib_srq *srq )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_srq *msrq ;
  struct mlx5_ib_srq *tmp___0 ;
  struct mlx5_ib_ucontext *tmp___1 ;
  {
  {
  tmp = to_mdev(srq->device);
  dev = tmp;
  tmp___0 = to_msrq(srq);
  msrq = tmp___0;
  mlx5_core_destroy_srq(& dev->mdev, & msrq->msrq);
  }
  if ((unsigned long )srq->uobject != (unsigned long )((struct ib_uobject *)0)) {
    {
    tmp___1 = to_mucontext((srq->uobject)->context);
    mlx5_ib_db_unmap_user(tmp___1, & msrq->db);
    ib_umem_release(msrq->umem);
    }
  } else {
    {
    destroy_srq_kernel(dev, msrq);
    }
  }
  {
  kfree((void const *)srq);
  }
  return (0);
}
}
void mlx5_ib_free_srq_wqe(struct mlx5_ib_srq *srq , int wqe_index )
{
  struct mlx5_wqe_srq_next_seg *next ;
  void *tmp ;
  __u16 tmp___0 ;
  {
  {
  ldv_spin_lock_51___0(& srq->lock);
  tmp = get_wqe___0(srq, srq->tail);
  next = (struct mlx5_wqe_srq_next_seg *)tmp;
  tmp___0 = __fswab16((int )((__u16 )wqe_index));
  next->next_wqe_index = tmp___0;
  srq->tail = wqe_index;
  ldv_spin_unlock_52___0(& srq->lock);
  }
  return;
}
}
int mlx5_ib_post_srq_recv(struct ib_srq *ibsrq , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr )
{
  struct mlx5_ib_srq *srq ;
  struct mlx5_ib_srq *tmp ;
  struct mlx5_wqe_srq_next_seg *next ;
  struct mlx5_wqe_data_seg *scat ;
  unsigned long flags ;
  int err ;
  int nreq ;
  int i ;
  long tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  __u16 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  __u32 tmp___7 ;
  long tmp___8 ;
  {
  {
  tmp = to_msrq(ibsrq);
  srq = tmp;
  err = 0;
  ldv___ldv_spin_lock_53(& srq->lock);
  nreq = 0;
  }
  goto ldv_36018;
  ldv_36017:
  {
  tmp___0 = __builtin_expect(wr->num_sge > srq->msrq.max_gs, 0L);
  }
  if (tmp___0 != 0L) {
    err = -22;
    *bad_wr = wr;
    goto ldv_36013;
  } else {
  }
  {
  tmp___1 = __builtin_expect(srq->head == srq->tail, 0L);
  }
  if (tmp___1 != 0L) {
    err = -12;
    *bad_wr = wr;
    goto ldv_36013;
  } else {
  }
  {
  *(srq->wrid + (unsigned long )srq->head) = wr->wr_id;
  tmp___2 = get_wqe___0(srq, srq->head);
  next = (struct mlx5_wqe_srq_next_seg *)tmp___2;
  tmp___3 = __fswab16((int )next->next_wqe_index);
  srq->head = (int )tmp___3;
  scat = (struct mlx5_wqe_data_seg *)(next + 1U);
  i = 0;
  }
  goto ldv_36015;
  ldv_36014:
  {
  tmp___4 = __fswab32((wr->sg_list + (unsigned long )i)->length);
  (scat + (unsigned long )i)->byte_count = tmp___4;
  tmp___5 = __fswab32((wr->sg_list + (unsigned long )i)->lkey);
  (scat + (unsigned long )i)->lkey = tmp___5;
  tmp___6 = __fswab64((wr->sg_list + (unsigned long )i)->addr);
  (scat + (unsigned long )i)->addr = tmp___6;
  i = i + 1;
  }
  ldv_36015: ;
  if (i < wr->num_sge) {
    goto ldv_36014;
  } else {
  }
  if (i < srq->msrq.max_avail_gather) {
    (scat + (unsigned long )i)->byte_count = 0U;
    (scat + (unsigned long )i)->lkey = 65536U;
    (scat + (unsigned long )i)->addr = 0ULL;
  } else {
  }
  nreq = nreq + 1;
  wr = wr->next;
  ldv_36018: ;
  if ((unsigned long )wr != (unsigned long )((struct ib_recv_wr *)0)) {
    goto ldv_36017;
  } else {
  }
  ldv_36013:
  {
  tmp___8 = __builtin_expect(nreq != 0, 1L);
  }
  if (tmp___8 != 0L) {
    {
    srq->wqe_ctr = (int )srq->wqe_ctr + (int )((u16 )nreq);
    __asm__ volatile ("sfence": : : "memory");
    tmp___7 = __fswab32((__u32 )srq->wqe_ctr);
    *(srq->db.db) = tmp___7;
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_54(& srq->lock, flags);
  }
  return (err);
}
}
static void ldv_mutex_lock_49___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_mlx5_ib_srq(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_50___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_mlx5_ib_srq(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_51___0(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_srq();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_52___0(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_ib_srq();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv___ldv_spin_lock_53(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_ib_srq();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_54(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_ib_srq();
  spin_unlock_irqrestore(lock, flags);
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
extern struct pv_irq_ops pv_irq_ops ;
extern int sscanf(char const * , char const * , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern int ( __builtin_unreachable)() ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = __builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/alpha/git/klever2/klever/scheduler/native-scheduler-work-dir/scheduler/jobs/d5cd53f56669d61faa91054857893dbd/klever-core-work-dir/lkbce/arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
static void ldv___ldv_spin_lock_49___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_53___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_55(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_lock_of_mlx5_cache_ent(void) ;
void ldv_spin_unlock_lock_of_mlx5_cache_ent(void) ;
void ldv_spin_lock_mkey_lock_of_mlx5_priv(void) ;
void ldv_spin_unlock_mkey_lock_of_mlx5_priv(void) ;
void ldv_spin_lock_mr_lock_of_mlx5_ib_dev(void) ;
void ldv_spin_unlock_mr_lock_of_mlx5_ib_dev(void) ;
int ldv_filter_err_code(int ret_val ) ;
__inline static void ldv_spin_lock_71(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_71(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_57(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_57(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_57(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_57(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_57(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_72(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_72(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_58(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_58(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_58(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_58(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_58(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_58(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_58(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_58(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_50___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_54___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_50___0(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  }
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
static int ldv_mod_timer_51(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_52(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_del_timer_sync_70(struct timer_list *ldv_func_arg1 ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
extern bool cancel_delayed_work(struct delayed_work * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work_on(8192, wq, work);
  }
  return (tmp);
}
}
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  {
  tmp = queue_delayed_work_on(8192, wq, dwork, delay);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  {
  tmp = __builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  }
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = __builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  }
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = __builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  }
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  }
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    }
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  }
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  }
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  {
  tmp___0 = is_device_dma_capable(dev);
  }
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  {
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  }
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = __builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("/home/alpha/git/klever2/klever/scheduler/native-scheduler-work-dir/scheduler/jobs/d5cd53f56669d61faa91054857893dbd/klever-core-work-dir/lkbce/arch/x86/include/asm/dma-mapping.h",
                       166);
    }
  } else {
  }
  {
  __builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  }
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
    }
  } else {
  }
  return;
}
}
extern void down(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
extern int simple_open(struct inode * , struct file * ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
extern struct dentry *debugfs_create_u32(char const * , umode_t , struct dentry * ,
                                         u32 * ) ;
extern void usleep_range(unsigned long , unsigned long ) ;
__inline static int ib_post_send(struct ib_qp *qp , struct ib_send_wr *send_wr , struct ib_send_wr **bad_send_wr )
{
  int tmp ;
  {
  {
  tmp = (*((qp->device)->post_send))(qp, send_wr, bad_send_wr);
  }
  return (tmp);
}
}
__inline static int ib_poll_cq(struct ib_cq *cq , int num_entries , struct ib_wc *wc )
{
  int tmp ;
  {
  {
  tmp = (*((cq->device)->poll_cq))(cq, num_entries, wc);
  }
  return (tmp);
}
}
extern struct dentry *mlx5_debugfs_root ;
__inline static void *mlx5_vzalloc___2(unsigned long size )
{
  void *rtn ;
  {
  {
  rtn = kzalloc(size, 720U);
  }
  if ((unsigned long )rtn == (unsigned long )((void *)0)) {
    {
    rtn = vzalloc(size);
    }
  } else {
  }
  return (rtn);
}
}
__inline static u32 mlx5_idx_to_mkey(u32 mkey_idx )
{
  {
  return (mkey_idx << 8);
}
}
__inline static struct mlx5_ib_mr *to_mmr(struct ib_mr *ibmr )
{
  struct ib_mr const *__mptr ;
  {
  __mptr = (struct ib_mr const *)ibmr;
  return ((struct mlx5_ib_mr *)__mptr);
}
}
static __be64 *mr_align(__be64 *ptr , int align )
{
  unsigned long mask ;
  {
  mask = (unsigned long )(align + -1);
  return ((__be64 *)(((unsigned long )ptr + mask) & ~ mask));
}
}
static int order2idx(struct mlx5_ib_dev *dev , int order )
{
  struct mlx5_mr_cache *cache ;
  {
  cache = & dev->cache;
  if ((u32 )order < cache->ent[0].order) {
    return (0);
  } else {
    return ((int )((u32 )order - cache->ent[0].order));
  }
}
}
static void reg_mr_callback(int status , void *context )
{
  struct mlx5_ib_mr *mr ;
  struct mlx5_ib_dev *dev ;
  struct mlx5_mr_cache *cache ;
  int c ;
  int tmp ;
  struct mlx5_cache_ent *ent ;
  u8 key ;
  unsigned long flags ;
  struct task_struct *tmp___0 ;
  __u32 tmp___1 ;
  struct task_struct *tmp___2 ;
  u8 tmp___3 ;
  __u32 tmp___4 ;
  u32 tmp___5 ;
  {
  {
  mr = (struct mlx5_ib_mr *)context;
  dev = mr->dev;
  cache = & dev->cache;
  tmp = order2idx(dev, mr->order);
  c = tmp;
  ent = (struct mlx5_cache_ent *)(& cache->ent + (unsigned long )c);
  ldv___ldv_spin_lock_49___0(& ent->lock);
  ent->pending = ent->pending - 1;
  ldv_spin_unlock_irqrestore_50___0(& ent->lock, flags);
  }
  if (status != 0) {
    {
    tmp___0 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): async reg mr failed. status %d\n", (char *)(& dev->ib_dev.name),
           "reg_mr_callback", 81, tmp___0->pid, status);
    kfree((void const *)mr);
    dev->fill_delay = 1;
    ldv_mod_timer_51(& dev->delay_timer, (unsigned long )jiffies + 250UL);
    }
    return;
  } else {
  }
  if ((unsigned int )mr->out.hdr.status != 0U) {
    {
    tmp___1 = __fswab32(mr->out.hdr.syndrome);
    tmp___2 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): failed - status %d, syndorme 0x%x\n", (char *)(& dev->ib_dev.name),
           "reg_mr_callback", 91, tmp___2->pid, (int )mr->out.hdr.status, tmp___1);
    kfree((void const *)mr);
    dev->fill_delay = 1;
    ldv_mod_timer_52(& dev->delay_timer, (unsigned long )jiffies + 250UL);
    }
    return;
  } else {
  }
  {
  ldv___ldv_spin_lock_53___0(& dev->mdev.priv.mkey_lock);
  tmp___3 = dev->mdev.priv.mkey_key;
  dev->mdev.priv.mkey_key = (u8 )((int )dev->mdev.priv.mkey_key + 1);
  key = tmp___3;
  ldv_spin_unlock_irqrestore_54___0(& dev->mdev.priv.mkey_lock, flags);
  tmp___4 = __fswab32(mr->out.mkey);
  tmp___5 = mlx5_idx_to_mkey(tmp___4 & 16777215U);
  mr->mmr.key = tmp___5 | (u32 )key;
  cache->last_add = jiffies;
  ldv___ldv_spin_lock_55(& ent->lock);
  list_add_tail(& mr->list, & ent->head);
  ent->cur = ent->cur + 1U;
  ent->size = ent->size + 1U;
  ldv_spin_unlock_irqrestore_50___0(& ent->lock, flags);
  }
  return;
}
}
static int add_keys(struct mlx5_ib_dev *dev , int c , int num )
{
  struct mlx5_mr_cache *cache ;
  struct mlx5_cache_ent *ent ;
  struct mlx5_create_mkey_mbox_in *in ;
  struct mlx5_ib_mr *mr ;
  int npages ;
  int err ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  struct task_struct *tmp___2 ;
  {
  {
  cache = & dev->cache;
  ent = (struct mlx5_cache_ent *)(& cache->ent + (unsigned long )c);
  npages = 1 << (int )ent->order;
  err = 0;
  tmp = kzalloc(272UL, 208U);
  in = (struct mlx5_create_mkey_mbox_in *)tmp;
  }
  if ((unsigned long )in == (unsigned long )((struct mlx5_create_mkey_mbox_in *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_35392;
  ldv_35391: ;
  if (ent->pending > 7) {
    err = -11;
    goto ldv_35389;
  } else {
  }
  {
  tmp___0 = kzalloc(264UL, 208U);
  mr = (struct mlx5_ib_mr *)tmp___0;
  }
  if ((unsigned long )mr == (unsigned long )((struct mlx5_ib_mr *)0)) {
    err = -12;
    goto ldv_35389;
  } else {
  }
  {
  mr->order = (int )ent->order;
  mr->umred = 1;
  mr->dev = dev;
  in->seg.status = 64U;
  tmp___1 = __fswab32((__u32 )((npages + 1) / 2));
  in->seg.xlt_oct_size = tmp___1;
  in->seg.qpn_mkey7_0 = 16777215U;
  in->seg.flags = 129U;
  in->seg.log2_page_size = 12U;
  ldv_spin_lock_irq_57(& ent->lock);
  ent->pending = ent->pending + 1;
  ldv_spin_unlock_irq_58(& ent->lock);
  err = mlx5_core_create_mkey(& dev->mdev, & mr->mmr, in, 272, & reg_mr_callback,
                              (void *)mr, & mr->out);
  }
  if (err != 0) {
    {
    tmp___2 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): create mkey failed %d\n", (char *)(& dev->ib_dev.name),
           "add_keys", 153, tmp___2->pid, err);
    kfree((void const *)mr);
    }
    goto ldv_35389;
  } else {
  }
  i = i + 1;
  ldv_35392: ;
  if (i < num) {
    goto ldv_35391;
  } else {
  }
  ldv_35389:
  {
  kfree((void const *)in);
  }
  return (err);
}
}
static void remove_keys(struct mlx5_ib_dev *dev , int c , int num )
{
  struct mlx5_mr_cache *cache ;
  struct mlx5_cache_ent *ent ;
  struct mlx5_ib_mr *mr ;
  int err ;
  int i ;
  int tmp ;
  struct list_head const *__mptr ;
  struct task_struct *tmp___0 ;
  {
  cache = & dev->cache;
  ent = (struct mlx5_cache_ent *)(& cache->ent + (unsigned long )c);
  i = 0;
  goto ldv_35407;
  ldv_35406:
  {
  ldv_spin_lock_irq_57(& ent->lock);
  tmp = list_empty((struct list_head const *)(& ent->head));
  }
  if (tmp != 0) {
    {
    ldv_spin_unlock_irq_58(& ent->lock);
    }
    return;
  } else {
  }
  {
  __mptr = (struct list_head const *)ent->head.next;
  mr = (struct mlx5_ib_mr *)(__mptr + 0xffffffffffffffa8UL);
  list_del(& mr->list);
  ent->cur = ent->cur - 1U;
  ent->size = ent->size - 1U;
  ldv_spin_unlock_irq_58(& ent->lock);
  err = mlx5_core_destroy_mkey(& dev->mdev, & mr->mmr);
  }
  if (err != 0) {
    {
    tmp___0 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): failed destroy mkey\n", (char *)(& dev->ib_dev.name),
           "remove_keys", 184, tmp___0->pid);
    }
  } else {
    {
    kfree((void const *)mr);
    }
  }
  i = i + 1;
  ldv_35407: ;
  if (i < num) {
    goto ldv_35406;
  } else {
  }
  return;
}
}
static ssize_t size_write(struct file *filp , char const *buf , size_t count , loff_t *pos )
{
  struct mlx5_cache_ent *ent ;
  struct mlx5_ib_dev *dev ;
  char lbuf[20U] ;
  u32 var ;
  int err ;
  int c ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  {
  ent = (struct mlx5_cache_ent *)filp->private_data;
  dev = ent->dev;
  tmp = copy_from_user((void *)(& lbuf), (void const *)buf, 20UL);
  }
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  {
  c = order2idx(dev, (int )ent->order);
  lbuf[19UL] = 0;
  tmp___0 = sscanf((char const *)(& lbuf), "%u", & var);
  }
  if (tmp___0 != 1) {
    return (-22L);
  } else {
  }
  if (var < ent->limit) {
    return (-22L);
  } else {
  }
  if (var > ent->size) {
    ldv_35421:
    {
    err = add_keys(dev, c, (int )(var - ent->size));
    }
    if (err != 0 && err != -11) {
      return ((ssize_t )err);
    } else {
    }
    {
    usleep_range(3000UL, 5000UL);
    }
    if (err != 0) {
      goto ldv_35421;
    } else {
    }
  } else
  if (var < ent->size) {
    {
    remove_keys(dev, c, (int )(ent->size - var));
    }
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t size_read(struct file *filp , char *buf , size_t count , loff_t *pos )
{
  struct mlx5_cache_ent *ent ;
  char lbuf[20U] ;
  int err ;
  unsigned long tmp ;
  {
  ent = (struct mlx5_cache_ent *)filp->private_data;
  if (*pos != 0LL) {
    return (0L);
  } else {
  }
  {
  err = snprintf((char *)(& lbuf), 20UL, "%d\n", ent->size);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  tmp = copy_to_user((void *)buf, (void const *)(& lbuf), (unsigned long )err);
  }
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  *pos = *pos + (loff_t )err;
  return ((ssize_t )err);
}
}
static struct file_operations const size_fops =
     {& __this_module, 0, & size_read, & size_write, 0, 0, 0, 0, 0, 0, 0, & simple_open,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static ssize_t limit_write(struct file *filp , char const *buf , size_t count ,
                           loff_t *pos )
{
  struct mlx5_cache_ent *ent ;
  struct mlx5_ib_dev *dev ;
  char lbuf[20U] ;
  u32 var ;
  int err ;
  int c ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp_size;
  {
  {
  ent = (struct mlx5_cache_ent *)filp->private_data;
  dev = ent->dev;
  tmp = copy_from_user((void *)(& lbuf), (void const *)buf, 20UL);
  }
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  {
  c = order2idx(dev, (int )ent->order);
  lbuf[19UL] = 0;
  tmp___0 = sscanf((char const *)(& lbuf), "%u", & var);
  }
  if (tmp___0 != 1) {
    return (-22L);
  } else {
  }
  ldv_spin_lock_irq_57(& ent->lock);
  tmp_size = ent->size;
  ldv_assert("", tmp_size == ent->size);
  ldv_spin_unlock_irq_58(& ent->lock);
  if (var > ent->size) {
    return (-22L);
  } else {
  }
  ent->limit = var;
  if (ent->cur < ent->limit) {
    {
    err = add_keys(dev, c, (int )(ent->limit * 2U - ent->cur));
    }
    if (err != 0) {
      return ((ssize_t )err);
    } else {
    }
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t limit_read(struct file *filp , char *buf , size_t count , loff_t *pos )
{
  struct mlx5_cache_ent *ent ;
  char lbuf[20U] ;
  int err ;
  unsigned long tmp ;
  {
  ent = (struct mlx5_cache_ent *)filp->private_data;
  if (*pos != 0LL) {
    return (0L);
  } else {
  }
  {
  err = snprintf((char *)(& lbuf), 20UL, "%d\n", ent->limit);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  tmp = copy_to_user((void *)buf, (void const *)(& lbuf), (unsigned long )err);
  }
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  *pos = *pos + (loff_t )err;
  return ((ssize_t )err);
}
}
static struct file_operations const limit_fops =
     {& __this_module, 0, & limit_read, & limit_write, 0, 0, 0, 0, 0, 0, 0, & simple_open,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int someone_adding(struct mlx5_mr_cache *cache )
{
  int i ;
  {
  i = 0;
  goto ldv_35460;
  ldv_35459: ;
  if (cache->ent[i].cur < cache->ent[i].limit) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_35460: ;
  if (i <= 15) {
    goto ldv_35459;
  } else {
  }
  return (0);
}
}
static void __cache_work_func(struct mlx5_cache_ent *ent )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_mr_cache *cache ;
  int i ;
  int tmp ;
  int err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  struct task_struct *tmp___3 ;
  unsigned long tmp___4 ;
  int tmp___5 ;
  {
  {
  dev = ent->dev;
  cache = & dev->cache;
  tmp = order2idx(dev, (int )ent->order);
  i = tmp;
  }
  if (cache->stopped != 0) {
    return;
  } else {
  }
  ent = (struct mlx5_cache_ent *)(& dev->cache.ent + (unsigned long )i);
  if (ent->cur < ent->limit * 2U && dev->fill_delay == 0) {
    {
    err = add_keys(dev, i, 1);
    }
    if (ent->cur < ent->limit * 2U) {
      if (err == -11) {
        {
        descriptor.modname = "mlx5_ib";
        descriptor.function = "__cache_work_func";
        descriptor.filename = "drivers/infiniband/hw/mlx5/mr.c";
        descriptor.format = "%s:%s:%d:(pid %d): returned eagain, order %d\n";
        descriptor.lineno = 346U;
        descriptor.flags = 0U;
        tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
        }
        if (tmp___1 != 0L) {
          {
          tmp___0 = get_current___2();
          __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): returned eagain, order %d\n",
                             (char *)(& dev->ib_dev.name), "__cache_work_func", 346,
                             tmp___0->pid, i + 2);
          }
        } else {
        }
        {
        tmp___2 = msecs_to_jiffies(3U);
        queue_delayed_work(cache->wq, & ent->dwork, tmp___2);
        }
      } else
      if (err != 0) {
        {
        tmp___3 = get_current___2();
        printk("\f%s:%s:%d:(pid %d): command failed order %d, err %d\n", (char *)(& dev->ib_dev.name),
               "__cache_work_func", 351, tmp___3->pid, i + 2, err);
        tmp___4 = msecs_to_jiffies(1000U);
        queue_delayed_work(cache->wq, & ent->dwork, tmp___4);
        }
      } else {
        {
        queue_work(cache->wq, & ent->work);
        }
      }
    } else {
    }
  } else
  if (ent->cur > ent->limit * 2U) {
    {
    tmp___5 = someone_adding(cache);
    }
    if (tmp___5 == 0 && (long )((cache->last_add - (unsigned long )jiffies) + 75000UL) < 0L) {
      {
      remove_keys(dev, i, 1);
      }
      if (ent->cur > ent->limit) {
        {
        queue_work(cache->wq, & ent->work);
        }
      } else {
      }
    } else {
      {
      queue_delayed_work(cache->wq, & ent->dwork, 75000UL);
      }
    }
  } else {
  }
  return;
}
}
static void delayed_cache_work_func(struct work_struct *work )
{
  struct mlx5_cache_ent *ent ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  ent = (struct mlx5_cache_ent *)(__mptr + 0xffffffffffffff10UL);
  __cache_work_func(ent);
  }
  return;
}
}
static void cache_work_func(struct work_struct *work )
{
  struct mlx5_cache_ent *ent ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  ent = (struct mlx5_cache_ent *)(__mptr + 0xffffffffffffff60UL);
  __cache_work_func(ent);
  }
  return;
}
}
static struct mlx5_ib_mr *alloc_cached_mr(struct mlx5_ib_dev *dev , int order )
{
  struct mlx5_mr_cache *cache ;
  struct mlx5_ib_mr *mr ;
  struct mlx5_cache_ent *ent ;
  int c ;
  int i ;
  struct task_struct *tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  {
  {
  cache = & dev->cache;
  mr = (struct mlx5_ib_mr *)0;
  c = order2idx(dev, order);
  }
  if ((unsigned int )c > 15U) {
    {
    tmp = get_current___2();
    printk("\f%s:%s:%d:(pid %d): order %d, cache index %d\n", (char *)(& dev->ib_dev.name),
           "alloc_cached_mr", 396, tmp->pid, order, c);
    }
    return ((struct mlx5_ib_mr *)0);
  } else {
  }
  i = c;
  goto ldv_35504;
  ldv_35503:
  {
  ent = (struct mlx5_cache_ent *)(& cache->ent + (unsigned long )i);
  descriptor.modname = "mlx5_ib";
  descriptor.function = "alloc_cached_mr";
  descriptor.filename = "drivers/infiniband/hw/mlx5/mr.c";
  descriptor.format = "%s:%s:%d:(pid %d): order %d, cache index %d\n";
  descriptor.lineno = 403U;
  descriptor.flags = 0U;
  tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = get_current___2();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): order %d, cache index %d\n",
                       (char *)(& dev->ib_dev.name), "alloc_cached_mr", 403, tmp___0->pid,
                       ent->order, i);
    }
  } else {
  }
  {
  ldv_spin_lock_irq_57(& ent->lock);
  tmp___2 = list_empty((struct list_head const *)(& ent->head));
  }
  if (tmp___2 == 0) {
    {
    __mptr = (struct list_head const *)ent->head.next;
    mr = (struct mlx5_ib_mr *)(__mptr + 0xffffffffffffffa8UL);
    list_del(& mr->list);
    ent->cur = ent->cur - 1U;
    ldv_spin_unlock_irq_58(& ent->lock);
    }
    if (ent->cur < ent->limit) {
      {
      queue_work(cache->wq, & ent->work);
      }
    } else {
    }
    goto ldv_35502;
  } else {
  }
  {
  ldv_spin_unlock_irq_58(& ent->lock);
  queue_work(cache->wq, & ent->work);
  }
  if ((unsigned long )mr != (unsigned long )((struct mlx5_ib_mr *)0)) {
    goto ldv_35502;
  } else {
  }
  i = i + 1;
  ldv_35504: ;
  if (i <= 15) {
    goto ldv_35503;
  } else {
  }
  ldv_35502: ;
  if ((unsigned long )mr == (unsigned long )((struct mlx5_ib_mr *)0)) {
    cache->ent[c].miss = cache->ent[c].miss + 1U;
  } else {
  }
  return (mr);
}
}
static void free_cached_mr(struct mlx5_ib_dev *dev , struct mlx5_ib_mr *mr )
{
  struct mlx5_mr_cache *cache ;
  struct mlx5_cache_ent *ent ;
  int shrink ;
  int c ;
  struct task_struct *tmp ;
  {
  {
  cache = & dev->cache;
  shrink = 0;
  c = order2idx(dev, mr->order);
  }
  if ((unsigned int )c > 15U) {
    {
    tmp = get_current___2();
    printk("\f%s:%s:%d:(pid %d): order %d, cache index %d\n", (char *)(& dev->ib_dev.name),
           "free_cached_mr", 439, tmp->pid, mr->order, c);
    }
    return;
  } else {
  }
  {
  ent = (struct mlx5_cache_ent *)(& cache->ent + (unsigned long )c);
  ldv_spin_lock_irq_57(& ent->lock);
  list_add_tail(& mr->list, & ent->head);
  ent->cur = ent->cur + 1U;
  }
  if (ent->cur > ent->limit * 2U) {
    shrink = 1;
  } else {
  }
  {
  ldv_spin_unlock_irq_58(& ent->lock);
  }
  if (shrink != 0) {
    {
    queue_work(cache->wq, & ent->work);
    }
  } else {
  }
  return;
}
}
static void clean_keys(struct mlx5_ib_dev *dev , int c )
{
  struct mlx5_mr_cache *cache ;
  struct mlx5_cache_ent *ent ;
  struct mlx5_ib_mr *mr ;
  int err ;
  int tmp ;
  struct list_head const *__mptr ;
  struct task_struct *tmp___0 ;
  {
  {
  cache = & dev->cache;
  ent = (struct mlx5_cache_ent *)(& cache->ent + (unsigned long )c);
  cancel_delayed_work(& ent->dwork);
  }
  ldv_35525:
  {
  ldv_spin_lock_irq_57(& ent->lock);
  tmp = list_empty((struct list_head const *)(& ent->head));
  }
  if (tmp != 0) {
    {
    ldv_spin_unlock_irq_58(& ent->lock);
    }
    return;
  } else {
  }
  {
  __mptr = (struct list_head const *)ent->head.next;
  mr = (struct mlx5_ib_mr *)(__mptr + 0xffffffffffffffa8UL);
  list_del(& mr->list);
  ent->cur = ent->cur - 1U;
  ent->size = ent->size - 1U;
  ldv_spin_unlock_irq_58(& ent->lock);
  err = mlx5_core_destroy_mkey(& dev->mdev, & mr->mmr);
  }
  if (err != 0) {
    {
    tmp___0 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): failed destroy mkey\n", (char *)(& dev->ib_dev.name),
           "clean_keys", 475, tmp___0->pid);
    }
  } else {
    {
    kfree((void const *)mr);
    }
  }
  goto ldv_35525;
}
}
static int mlx5_mr_cache_debugfs_init(struct mlx5_ib_dev *dev )
{
  struct mlx5_mr_cache *cache ;
  struct mlx5_cache_ent *ent ;
  int i ;
  {
  cache = & dev->cache;
  if ((unsigned long )mlx5_debugfs_root == (unsigned long )((struct dentry *)0)) {
    return (0);
  } else {
  }
  {
  cache->root = debugfs_create_dir("mr_cache", dev->mdev.priv.dbg_root);
  }
  if ((unsigned long )cache->root == (unsigned long )((struct dentry *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_35533;
  ldv_35532:
  {
  ent = (struct mlx5_cache_ent *)(& cache->ent + (unsigned long )i);
  sprintf((char *)(& ent->name), "%d", ent->order);
  ent->dir = debugfs_create_dir((char const *)(& ent->name), cache->root);
  }
  if ((unsigned long )ent->dir == (unsigned long )((struct dentry *)0)) {
    return (-12);
  } else {
  }
  {
  ent->fsize = debugfs_create_file("size", 384, ent->dir, (void *)ent, & size_fops);
  }
  if ((unsigned long )ent->fsize == (unsigned long )((struct dentry *)0)) {
    return (-12);
  } else {
  }
  {
  ent->flimit = debugfs_create_file("limit", 384, ent->dir, (void *)ent, & limit_fops);
  }
  if ((unsigned long )ent->flimit == (unsigned long )((struct dentry *)0)) {
    return (-12);
  } else {
  }
  {
  ent->fcur = debugfs_create_u32("cur", 256, ent->dir, & ent->cur);
  }
  if ((unsigned long )ent->fcur == (unsigned long )((struct dentry *)0)) {
    return (-12);
  } else {
  }
  {
  ent->fmiss = debugfs_create_u32("miss", 384, ent->dir, & ent->miss);
  }
  if ((unsigned long )ent->fmiss == (unsigned long )((struct dentry *)0)) {
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_35533: ;
  if (i <= 15) {
    goto ldv_35532;
  } else {
  }
  return (0);
}
}
static void mlx5_mr_cache_debugfs_cleanup(struct mlx5_ib_dev *dev )
{
  {
  if ((unsigned long )mlx5_debugfs_root == (unsigned long )((struct dentry *)0)) {
    return;
  } else {
  }
  {
  debugfs_remove_recursive(dev->cache.root);
  }
  return;
}
}
static void delay_time_func(unsigned long ctx )
{
  struct mlx5_ib_dev *dev ;
  {
  dev = (struct mlx5_ib_dev *)ctx;
  dev->fill_delay = 0;
  return;
}
}
int mlx5_mr_cache_init(struct mlx5_ib_dev *dev )
{
  struct mlx5_mr_cache *cache ;
  struct mlx5_cache_ent *ent ;
  int limit ;
  int err ;
  int i ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  struct task_struct *tmp___0 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___5 ;
  struct task_struct *tmp___1 ;
  {
  {
  cache = & dev->cache;
  __lock_name = "\"%s\"(\"mkey_cache\")";
  tmp = __alloc_workqueue_key("%s", 10U, 1, & __key, __lock_name, (char *)"mkey_cache");
  cache->wq = tmp;
  }
  if ((unsigned long )cache->wq == (unsigned long )((struct workqueue_struct *)0)) {
    {
    tmp___0 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): failed to create work queue\n", (char *)(& dev->ib_dev.name),
           "mlx5_mr_cache_init", 550, tmp___0->pid);
    }
    return (-12);
  } else {
  }
  {
  init_timer_key(& dev->delay_timer, 0U, "((&dev->delay_timer))", & __key___0);
  dev->delay_timer.function = & delay_time_func;
  dev->delay_timer.data = (unsigned long )dev;
  i = 0;
  }
  goto ldv_35563;
  ldv_35562:
  {
  INIT_LIST_HEAD(& cache->ent[i].head);
  spinlock_check(& cache->ent[i].lock);
  __raw_spin_lock_init(& cache->ent[i].lock.__annonCompField19.rlock, "&(&cache->ent[i].lock)->rlock",
                       & __key___1);
  ent = (struct mlx5_cache_ent *)(& cache->ent + (unsigned long )i);
  INIT_LIST_HEAD(& ent->head);
  spinlock_check(& ent->lock);
  __raw_spin_lock_init(& ent->lock.__annonCompField19.rlock, "&(&ent->lock)->rlock",
                       & __key___2);
  ent->order = (u32 )(i + 2);
  ent->dev = dev;
  }
  if (((dev->mdev.profile)->mask & 2ULL) != 0ULL) {
    limit = (dev->mdev.profile)->mr_cache[i].limit;
  } else {
    limit = 0;
  }
  {
  __init_work(& ent->work, 0);
  __constr_expr_0.counter = 137438953408L;
  ent->work.data = __constr_expr_0;
  lockdep_init_map(& ent->work.lockdep_map, "(&ent->work)", & __key___3, 0);
  INIT_LIST_HEAD(& ent->work.entry);
  ent->work.func = & cache_work_func;
  __init_work(& ent->dwork.work, 0);
  __constr_expr_1.counter = 137438953408L;
  ent->dwork.work.data = __constr_expr_1;
  lockdep_init_map(& ent->dwork.work.lockdep_map, "(&(&ent->dwork)->work)", & __key___4,
                   0);
  INIT_LIST_HEAD(& ent->dwork.work.entry);
  ent->dwork.work.func = & delayed_cache_work_func;
  init_timer_key(& ent->dwork.timer, 2U, "(&(&ent->dwork)->timer)", & __key___5);
  ent->dwork.timer.function = & delayed_work_timer_fn;
  ent->dwork.timer.data = (unsigned long )(& ent->dwork);
  ent->limit = (u32 )limit;
  queue_work(cache->wq, & ent->work);
  i = i + 1;
  }
  ldv_35563: ;
  if (i <= 15) {
    goto ldv_35562;
  } else {
  }
  {
  err = mlx5_mr_cache_debugfs_init(dev);
  }
  if (err != 0) {
    {
    tmp___1 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): cache debugfs failure\n", (char *)(& dev->ib_dev.name),
           "mlx5_mr_cache_init", 578, tmp___1->pid);
    }
  } else {
  }
  return (0);
}
}
int mlx5_mr_cache_cleanup(struct mlx5_ib_dev *dev )
{
  int i ;
  {
  {
  dev->cache.stopped = 1;
  flush_workqueue(dev->cache.wq);
  mlx5_mr_cache_debugfs_cleanup(dev);
  i = 0;
  }
  goto ldv_35570;
  ldv_35569:
  {
  clean_keys(dev, i);
  i = i + 1;
  }
  ldv_35570: ;
  if (i <= 15) {
    goto ldv_35569;
  } else {
  }
  {
  destroy_workqueue(dev->cache.wq);
  ldv_del_timer_sync_70(& dev->delay_timer);
  }
  return (0);
}
}
struct ib_mr *mlx5_ib_get_dma_mr(struct ib_pd *pd , int acc )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_core_dev *mdev ;
  struct mlx5_create_mkey_mbox_in *in ;
  struct mlx5_mkey_seg *seg ;
  struct mlx5_ib_mr *mr ;
  int err ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct mlx5_ib_pd *tmp___3 ;
  __u32 tmp___4 ;
  void *tmp___5 ;
  {
  {
  tmp = to_mdev(pd->device);
  dev = tmp;
  mdev = & dev->mdev;
  tmp___0 = kzalloc(264UL, 208U);
  mr = (struct mlx5_ib_mr *)tmp___0;
  }
  if ((unsigned long )mr == (unsigned long )((struct mlx5_ib_mr *)0)) {
    {
    tmp___1 = ERR_PTR(-12L);
    }
    return ((struct ib_mr *)tmp___1);
  } else {
  }
  {
  tmp___2 = kzalloc(272UL, 208U);
  in = (struct mlx5_create_mkey_mbox_in *)tmp___2;
  }
  if ((unsigned long )in == (unsigned long )((struct mlx5_create_mkey_mbox_in *)0)) {
    err = -12;
    goto err_free;
  } else {
  }
  {
  seg = & in->seg;
  seg->flags = convert_access(acc);
  tmp___3 = to_mpd(pd);
  tmp___4 = __fswab32(tmp___3->pdn | 2147483648U);
  seg->flags_pd = tmp___4;
  seg->qpn_mkey7_0 = 16777215U;
  seg->start_addr = 0ULL;
  err = mlx5_core_create_mkey(mdev, & mr->mmr, in, 272, (void (*)(int , void * ))0,
                              (void *)0, (struct mlx5_create_mkey_mbox_out *)0);
  }
  if (err != 0) {
    goto err_in;
  } else {
  }
  {
  kfree((void const *)in);
  mr->ibmr.lkey = mr->mmr.key;
  mr->ibmr.rkey = mr->mmr.key;
  mr->umem = (struct ib_umem *)0;
  }
  return (& mr->ibmr);
  err_in:
  {
  kfree((void const *)in);
  }
  err_free:
  {
  kfree((void const *)mr);
  tmp___5 = ERR_PTR((long )err);
  }
  return ((struct ib_mr *)tmp___5);
}
}
static int get_octo_len(u64 addr , u64 len , int page_size )
{
  u64 offset ;
  int npages ;
  int tmp___66 ;
  {
  {
  offset = addr & (u64 )(page_size + -1);
  tmp___66 = __ilog2_u32((u32 )page_size);
  npages = (int )(((((len + offset) + (unsigned long long )page_size) - 1ULL) & - ((unsigned long long )page_size)) >> tmp___66);
  }
  return ((npages + 1) / 2);
}
}
static int use_umr(int order )
{
  {
  return (order <= 17);
}
}
static void prep_umr_reg_wqe(struct ib_pd *pd , struct ib_send_wr *wr , struct ib_sge *sg ,
                             u64 dma , int n , u32 key , int page_shift , u64 virt_addr ,
                             u64 len , int access_flags )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct ib_mr *mr ;
  {
  {
  tmp = to_mdev(pd->device);
  dev = tmp;
  mr = dev->umrc.mr;
  sg->addr = dma;
  sg->length = ((u32 )((unsigned long )n) * 8U + 63U) & 4294967232U;
  sg->lkey = mr->lkey;
  wr->next = (struct ib_send_wr *)0;
  wr->send_flags = 0;
  wr->sg_list = sg;
  }
  if (n != 0) {
    wr->num_sge = 1;
  } else {
    wr->num_sge = 0;
  }
  wr->opcode = 240;
  wr->wr.fast_reg.page_list_len = (unsigned int )n;
  wr->wr.fast_reg.page_shift = (unsigned int )page_shift;
  wr->wr.fast_reg.rkey = key;
  wr->wr.fast_reg.iova_start = virt_addr;
  wr->wr.fast_reg.length = (u32 )len;
  wr->wr.fast_reg.access_flags = access_flags;
  wr->wr.fast_reg.page_list = (struct ib_fast_reg_page_list *)pd;
  return;
}
}
static void prep_umr_unreg_wqe(struct mlx5_ib_dev *dev , struct ib_send_wr *wr , u32 key )
{
  {
  wr->send_flags = 67108864;
  wr->opcode = 240;
  wr->wr.fast_reg.rkey = key;
  return;
}
}
void mlx5_umr_cq_handler(struct ib_cq *cq , void *cq_context )
{
  struct mlx5_ib_mr *mr ;
  struct ib_wc wc ;
  int err ;
  {
  ldv_35621:
  {
  err = ib_poll_cq(cq, 1, & wc);
  }
  if (err < 0) {
    {
    printk("\fpoll cq error %d\n", err);
    }
    return;
  } else {
  }
  if (err == 0) {
    goto ldv_35620;
  } else {
  }
  {
  mr = (struct mlx5_ib_mr *)wc.wr_id;
  mr->status = wc.status;
  complete(& mr->done);
  }
  goto ldv_35621;
  ldv_35620:
  {
  ib_req_notify_cq(cq, 2);
  }
  return;
}
}
static struct mlx5_ib_mr *reg_umr(struct ib_pd *pd , struct ib_umem *umem , u64 virt_addr ,
                                  u64 len , int npages , int page_shift , int order ,
                                  int access_flags )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct device *ddev ;
  struct umr_common *umrc ;
  struct ib_send_wr wr ;
  struct ib_send_wr *bad ;
  struct mlx5_ib_mr *mr ;
  struct ib_sge sg ;
  int size ;
  int err ;
  int i ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  __be64 *tmp___4 ;
  __be64 *tmp___5 ;
  int tmp___6 ;
  struct task_struct *tmp___7 ;
  struct task_struct *tmp___8 ;
  void *tmp___9 ;
  {
  {
  tmp = to_mdev(pd->device);
  dev = tmp;
  ddev = dev->ib_dev.dma_device;
  umrc = & dev->umrc;
  size = (int )((unsigned int )npages * 8U);
  i = 0;
  }
  goto ldv_35645;
  ldv_35644:
  {
  mr = alloc_cached_mr(dev, order);
  }
  if ((unsigned long )mr != (unsigned long )((struct mlx5_ib_mr *)0)) {
    goto ldv_35642;
  } else {
  }
  {
  tmp___0 = order2idx(dev, order);
  err = add_keys(dev, tmp___0, 1);
  }
  if (err != 0 && err != -11) {
    {
    tmp___1 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): add_keys failed, err %d\n", (char *)(& dev->ib_dev.name),
           "reg_umr", 743, tmp___1->pid, err);
    }
    goto ldv_35642;
  } else {
  }
  i = i + 1;
  ldv_35645: ;
  if (i <= 0) {
    goto ldv_35644;
  } else {
  }
  ldv_35642: ;
  if ((unsigned long )mr == (unsigned long )((struct mlx5_ib_mr *)0)) {
    {
    tmp___2 = ERR_PTR(-11L);
    }
    return ((struct mlx5_ib_mr *)tmp___2);
  } else {
  }
  {
  tmp___3 = kmalloc((size_t )(size + 2047), 208U);
  mr->pas = (__be64 *)tmp___3;
  }
  if ((unsigned long )mr->pas == (unsigned long )((__be64 *)0ULL)) {
    err = -12;
    goto error;
  } else {
  }
  {
  tmp___4 = mr_align(mr->pas, 2048);
  mlx5_ib_populate_pas(dev, umem, page_shift, tmp___4, 1);
  tmp___5 = mr_align(mr->pas, 2048);
  mr->dma = dma_map_single_attrs(ddev, (void *)tmp___5, (size_t )size, 1, (struct dma_attrs *)0);
  tmp___6 = dma_mapping_error(ddev, mr->dma);
  }
  if (tmp___6 != 0) {
    {
    kfree((void const *)mr->pas);
    err = -12;
    }
    goto error;
  } else {
  }
  {
  memset((void *)(& wr), 0, 96UL);
  wr.wr_id = (unsigned long long )mr;
  prep_umr_reg_wqe(pd, & wr, & sg, mr->dma, npages, mr->mmr.key, page_shift, virt_addr,
                   len, access_flags);
  down(& umrc->sem);
  init_completion(& mr->done);
  err = ib_post_send(umrc->qp, & wr, & bad);
  }
  if (err != 0) {
    {
    tmp___7 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): post send failed, err %d\n", (char *)(& dev->ib_dev.name),
           "reg_umr", 780, tmp___7->pid, err);
    up(& umrc->sem);
    }
    goto error;
  } else {
  }
  {
  wait_for_completion(& mr->done);
  up(& umrc->sem);
  dma_unmap_single_attrs(ddev, mr->dma, (size_t )size, 1, (struct dma_attrs *)0);
  kfree((void const *)mr->pas);
  }
  if ((unsigned int )mr->status != 0U) {
    {
    tmp___8 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): reg umr failed\n", (char *)(& dev->ib_dev.name),
           "reg_umr", 791, tmp___8->pid);
    err = -14;
    }
    goto error;
  } else {
  }
  return (mr);
  error:
  {
  free_cached_mr(dev, mr);
  tmp___9 = ERR_PTR((long )err);
  }
  return ((struct mlx5_ib_mr *)tmp___9);
}
}
static struct mlx5_ib_mr *reg_create(struct ib_pd *pd , u64 virt_addr , u64 length ,
                                     struct ib_umem *umem , int npages , int page_shift ,
                                     int access_flags )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_create_mkey_mbox_in *in ;
  struct mlx5_ib_mr *mr ;
  int inlen ;
  int err ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  u8 tmp___3 ;
  struct mlx5_ib_pd *tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  __u64 tmp___7 ;
  int tmp___8 ;
  __u32 tmp___9 ;
  int tmp___10 ;
  __u32 tmp___11 ;
  struct task_struct *tmp___12 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___13 ;
  long tmp___14 ;
  void *tmp___15 ;
  {
  {
  tmp = to_mdev(pd->device);
  dev = tmp;
  tmp___0 = kzalloc(264UL, 208U);
  mr = (struct mlx5_ib_mr *)tmp___0;
  }
  if ((unsigned long )mr == (unsigned long )((struct mlx5_ib_mr *)0)) {
    {
    tmp___1 = ERR_PTR(-12L);
    }
    return ((struct mlx5_ib_mr *)tmp___1);
  } else {
  }
  {
  inlen = (int )((unsigned int )((unsigned long )((npages + 1) / 2) + 17UL) * 16U);
  tmp___2 = mlx5_vzalloc___2((unsigned long )inlen);
  in = (struct mlx5_create_mkey_mbox_in *)tmp___2;
  }
  if ((unsigned long )in == (unsigned long )((struct mlx5_create_mkey_mbox_in *)0)) {
    err = -12;
    goto err_1;
  } else {
  }
  {
  mlx5_ib_populate_pas(dev, umem, page_shift, (__be64 *)(& in->pas), 0);
  tmp___3 = convert_access(access_flags);
  in->seg.flags = (u8 )((unsigned int )tmp___3 | 1U);
  tmp___4 = to_mpd(pd);
  tmp___5 = __fswab32(tmp___4->pdn);
  in->seg.flags_pd = tmp___5;
  tmp___6 = __fswab64(virt_addr);
  in->seg.start_addr = tmp___6;
  tmp___7 = __fswab64(length);
  in->seg.len = tmp___7;
  in->seg.bsfs_octo_size = 0U;
  tmp___8 = get_octo_len(virt_addr, length, 1 << page_shift);
  tmp___9 = __fswab32((__u32 )tmp___8);
  in->seg.xlt_oct_size = tmp___9;
  in->seg.log2_page_size = (u8 )page_shift;
  in->seg.qpn_mkey7_0 = 16777215U;
  tmp___10 = get_octo_len(virt_addr, length, 1 << page_shift);
  tmp___11 = __fswab32((__u32 )tmp___10);
  in->xlat_oct_act_size = tmp___11;
  err = mlx5_core_create_mkey(& dev->mdev, & mr->mmr, in, inlen, (void (*)(int ,
                                                                           void * ))0,
                              (void *)0, (struct mlx5_create_mkey_mbox_out *)0);
  }
  if (err != 0) {
    {
    tmp___12 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): create mkey failed\n", (char *)(& dev->ib_dev.name),
           "reg_create", 840, tmp___12->pid);
    }
    goto err_2;
  } else {
  }
  {
  mr->umem = umem;
  mlx5_vfree((void const *)in);
  descriptor.modname = "mlx5_ib";
  descriptor.function = "reg_create";
  descriptor.filename = "drivers/infiniband/hw/mlx5/mr.c";
  descriptor.format = "%s:%s:%d:(pid %d): mkey = 0x%x\n";
  descriptor.lineno = 846U;
  descriptor.flags = 0U;
  tmp___14 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___14 != 0L) {
    {
    tmp___13 = get_current___2();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): mkey = 0x%x\n", (char *)(& dev->ib_dev.name),
                       "reg_create", 846, tmp___13->pid, mr->mmr.key);
    }
  } else {
  }
  return (mr);
  err_2:
  {
  mlx5_vfree((void const *)in);
  }
  err_1:
  {
  kfree((void const *)mr);
  tmp___15 = ERR_PTR((long )err);
  }
  return ((struct mlx5_ib_mr *)tmp___15);
}
}
struct ib_mr *mlx5_ib_reg_user_mr(struct ib_pd *pd , u64 start , u64 length , u64 virt_addr ,
                                  int access_flags , struct ib_udata *udata )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_mr *mr ;
  struct ib_umem *umem ;
  int page_shift ;
  int npages ;
  int ncont ;
  int order ;
  int err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  struct task_struct *tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___3 ;
  struct task_struct *tmp___14 ;
  long tmp___15 ;
  void *tmp___16 ;
  {
  {
  tmp = to_mdev(pd->device);
  dev = tmp;
  mr = (struct mlx5_ib_mr *)0;
  descriptor.modname = "mlx5_ib";
  descriptor.function = "mlx5_ib_reg_user_mr";
  descriptor.filename = "drivers/infiniband/hw/mlx5/mr.c";
  descriptor.format = "%s:%s:%d:(pid %d): start 0x%llx, virt_addr 0x%llx, length 0x%llx\n";
  descriptor.lineno = 873U;
  descriptor.flags = 0U;
  tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = get_current___2();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): start 0x%llx, virt_addr 0x%llx, length 0x%llx\n",
                       (char *)(& dev->ib_dev.name), "mlx5_ib_reg_user_mr", 873, tmp___0->pid,
                       start, virt_addr, length);
    }
  } else {
  }
  {
  umem = ib_umem_get((pd->uobject)->context, (unsigned long )start, (size_t )length,
                     access_flags, 0);
  tmp___4 = IS_ERR((void const *)umem);
  }
  if (tmp___4 != 0L) {
    {
    descriptor___0.modname = "mlx5_ib";
    descriptor___0.function = "mlx5_ib_reg_user_mr";
    descriptor___0.filename = "drivers/infiniband/hw/mlx5/mr.c";
    descriptor___0.format = "%s:%s:%d:(pid %d): umem get failed\n";
    descriptor___0.lineno = 877U;
    descriptor___0.flags = 0U;
    tmp___3 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      tmp___2 = get_current___2();
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d:(pid %d): umem get failed\n",
                         (char *)(& dev->ib_dev.name), "mlx5_ib_reg_user_mr", 877,
                         tmp___2->pid);
      }
    } else {
    }
    return ((struct ib_mr *)umem);
  } else {
  }
  {
  mlx5_ib_cont_pages(umem, start, & npages, & page_shift, & ncont, & order);
  }
  if (npages == 0) {
    {
    tmp___5 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): avoid zero region\n", (char *)(& dev->ib_dev.name),
           "mlx5_ib_reg_user_mr", 883, tmp___5->pid);
    err = -22;
    }
    goto error;
  } else {
  }
  {
  descriptor___1.modname = "mlx5_ib";
  descriptor___1.function = "mlx5_ib_reg_user_mr";
  descriptor___1.filename = "drivers/infiniband/hw/mlx5/mr.c";
  descriptor___1.format = "%s:%s:%d:(pid %d): npages %d, ncont %d, order %d, page_shift %d\n";
  descriptor___1.lineno = 889U;
  descriptor___1.flags = 0U;
  tmp___7 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___6 = get_current___2();
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d:(pid %d): npages %d, ncont %d, order %d, page_shift %d\n",
                       (char *)(& dev->ib_dev.name), "mlx5_ib_reg_user_mr", 889, tmp___6->pid,
                       npages, ncont, order, page_shift);
    }
  } else {
  }
  {
  tmp___11 = use_umr(order);
  }
  if (tmp___11 != 0) {
    {
    mr = reg_umr(pd, umem, virt_addr, length, ncont, page_shift, order, access_flags);
    tmp___10 = PTR_ERR((void const *)mr);
    }
    if (tmp___10 == -11L) {
      {
      descriptor___2.modname = "mlx5_ib";
      descriptor___2.function = "mlx5_ib_reg_user_mr";
      descriptor___2.filename = "drivers/infiniband/hw/mlx5/mr.c";
      descriptor___2.format = "%s:%s:%d:(pid %d): cache empty for order %d";
      descriptor___2.lineno = 895U;
      descriptor___2.flags = 0U;
      tmp___9 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___9 != 0L) {
        {
        tmp___8 = get_current___2();
        __dynamic_pr_debug(& descriptor___2, "%s:%s:%d:(pid %d): cache empty for order %d",
                           (char *)(& dev->ib_dev.name), "mlx5_ib_reg_user_mr", 895,
                           tmp___8->pid, order);
        }
      } else {
      }
      mr = (struct mlx5_ib_mr *)0;
    } else {
    }
  } else {
  }
  if ((unsigned long )mr == (unsigned long )((struct mlx5_ib_mr *)0)) {
    {
    mr = reg_create(pd, virt_addr, length, umem, ncont, page_shift, access_flags);
    }
  } else {
  }
  {
  tmp___13 = IS_ERR((void const *)mr);
  }
  if (tmp___13 != 0L) {
    {
    tmp___12 = PTR_ERR((void const *)mr);
    err = (int )tmp___12;
    }
    goto error;
  } else {
  }
  {
  descriptor___3.modname = "mlx5_ib";
  descriptor___3.function = "mlx5_ib_reg_user_mr";
  descriptor___3.filename = "drivers/infiniband/hw/mlx5/mr.c";
  descriptor___3.format = "%s:%s:%d:(pid %d): mkey 0x%x\n";
  descriptor___3.lineno = 909U;
  descriptor___3.flags = 0U;
  tmp___15 = __builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___15 != 0L) {
    {
    tmp___14 = get_current___2();
    __dynamic_pr_debug(& descriptor___3, "%s:%s:%d:(pid %d): mkey 0x%x\n", (char *)(& dev->ib_dev.name),
                       "mlx5_ib_reg_user_mr", 909, tmp___14->pid, mr->mmr.key);
    }
  } else {
  }
  {
  mr->umem = umem;
  mr->npages = npages;
  ldv_spin_lock_71(& dev->mr_lock);
  dev->mdev.priv.reg_pages = dev->mdev.priv.reg_pages + npages;
  ldv_spin_unlock_72(& dev->mr_lock);
  mr->ibmr.lkey = mr->mmr.key;
  mr->ibmr.rkey = mr->mmr.key;
  }
  return (& mr->ibmr);
  error:
  {
  ib_umem_release(umem);
  tmp___16 = ERR_PTR((long )err);
  }
  return ((struct ib_mr *)tmp___16);
}
}
static int unreg_umr(struct mlx5_ib_dev *dev , struct mlx5_ib_mr *mr )
{
  struct umr_common *umrc ;
  struct ib_send_wr wr ;
  struct ib_send_wr *bad ;
  int err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  {
  {
  umrc = & dev->umrc;
  memset((void *)(& wr), 0, 96UL);
  wr.wr_id = (unsigned long long )mr;
  prep_umr_unreg_wqe(dev, & wr, mr->mmr.key);
  down(& umrc->sem);
  init_completion(& mr->done);
  err = ib_post_send(umrc->qp, & wr, & bad);
  }
  if (err != 0) {
    {
    up(& umrc->sem);
    descriptor.modname = "mlx5_ib";
    descriptor.function = "unreg_umr";
    descriptor.filename = "drivers/infiniband/hw/mlx5/mr.c";
    descriptor.format = "%s:%s:%d:(pid %d): err %d\n";
    descriptor.lineno = 941U;
    descriptor.flags = 0U;
    tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      tmp = get_current___2();
      __dynamic_pr_debug(& descriptor, "%s:%s:%d:(pid %d): err %d\n", (char *)(& dev->ib_dev.name),
                         "unreg_umr", 941, tmp->pid, err);
      }
    } else {
    }
    goto error;
  } else {
  }
  {
  wait_for_completion(& mr->done);
  up(& umrc->sem);
  }
  if ((unsigned int )mr->status != 0U) {
    {
    tmp___1 = get_current___2();
    printk("\f%s:%s:%d:(pid %d): unreg umr failed\n", (char *)(& dev->ib_dev.name),
           "unreg_umr", 947, tmp___1->pid);
    err = -14;
    }
    goto error;
  } else {
  }
  return (0);
  error: ;
  return (err);
}
}
int mlx5_ib_dereg_mr(struct ib_mr *ibmr )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_ib_mr *mr ;
  struct mlx5_ib_mr *tmp___0 ;
  struct ib_umem *umem ;
  int npages ;
  int umred ;
  int err ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  {
  {
  tmp = to_mdev(ibmr->device);
  dev = tmp;
  tmp___0 = to_mmr(ibmr);
  mr = tmp___0;
  umem = mr->umem;
  npages = mr->npages;
  umred = mr->umred;
  }
  if (umred == 0) {
    {
    err = mlx5_core_destroy_mkey(& dev->mdev, & mr->mmr);
    }
    if (err != 0) {
      {
      tmp___1 = get_current___2();
      printk("\f%s:%s:%d:(pid %d): failed to destroy mkey 0x%x (%d)\n", (char *)(& dev->ib_dev.name),
             "mlx5_ib_dereg_mr", 970, tmp___1->pid, mr->mmr.key, err);
      }
      return (err);
    } else {
    }
  } else {
    {
    err = unreg_umr(dev, mr);
    }
    if (err != 0) {
      {
      tmp___2 = get_current___2();
      printk("\f%s:%s:%d:(pid %d): failed unregister\n", (char *)(& dev->ib_dev.name),
             "mlx5_ib_dereg_mr", 976, tmp___2->pid);
      }
      return (err);
    } else {
    }
    {
    free_cached_mr(dev, mr);
    }
  }
  if ((unsigned long )umem != (unsigned long )((struct ib_umem *)0)) {
    {
    ib_umem_release(umem);
    ldv_spin_lock_71(& dev->mr_lock);
    dev->mdev.priv.reg_pages = dev->mdev.priv.reg_pages - npages;
    ldv_spin_unlock_72(& dev->mr_lock);
    }
  } else {
  }
  if (umred == 0) {
    {
    kfree((void const *)mr);
    }
  } else {
  }
  return (0);
}
}
struct ib_mr *mlx5_ib_alloc_fast_reg_mr(struct ib_pd *pd , int max_page_list_len )
{
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp ;
  struct mlx5_create_mkey_mbox_in *in ;
  struct mlx5_ib_mr *mr ;
  int err ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  __u32 tmp___3 ;
  struct mlx5_ib_pd *tmp___4 ;
  __u32 tmp___5 ;
  void *tmp___6 ;
  {
  {
  tmp = to_mdev(pd->device);
  dev = tmp;
  tmp___0 = kzalloc(264UL, 208U);
  mr = (struct mlx5_ib_mr *)tmp___0;
  }
  if ((unsigned long )mr == (unsigned long )((struct mlx5_ib_mr *)0)) {
    {
    tmp___1 = ERR_PTR(-12L);
    }
    return ((struct ib_mr *)tmp___1);
  } else {
  }
  {
  tmp___2 = kzalloc(272UL, 208U);
  in = (struct mlx5_create_mkey_mbox_in *)tmp___2;
  }
  if ((unsigned long )in == (unsigned long )((struct mlx5_create_mkey_mbox_in *)0)) {
    err = -12;
    goto err_free;
  } else {
  }
  {
  in->seg.status = 64U;
  tmp___3 = __fswab32((__u32 )((max_page_list_len + 1) / 2));
  in->seg.xlt_oct_size = tmp___3;
  in->seg.qpn_mkey7_0 = 16777215U;
  in->seg.flags = 129U;
  tmp___4 = to_mpd(pd);
  tmp___5 = __fswab32(tmp___4->pdn);
  in->seg.flags_pd = tmp___5;
  in->seg.log2_page_size = 12U;
  err = mlx5_core_create_mkey(& dev->mdev, & mr->mmr, in, 272, (void (*)(int , void * ))0,
                              (void *)0, (struct mlx5_create_mkey_mbox_out *)0);
  kfree((void const *)in);
  }
  if (err != 0) {
    goto err_free;
  } else {
  }
  mr->ibmr.lkey = mr->mmr.key;
  mr->ibmr.rkey = mr->mmr.key;
  mr->umem = (struct ib_umem *)0;
  return (& mr->ibmr);
  err_free:
  {
  kfree((void const *)mr);
  tmp___6 = ERR_PTR((long )err);
  }
  return ((struct ib_mr *)tmp___6);
}
}
struct ib_fast_reg_page_list *mlx5_ib_alloc_fast_reg_page_list(struct ib_device *ibdev ,
                                                               int page_list_len )
{
  struct mlx5_ib_fast_reg_page_list *mfrpl ;
  int size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  int __ret_warn_on ;
  long tmp___3 ;
  void *tmp___4 ;
  {
  {
  size = (int )((unsigned int )page_list_len * 8U);
  tmp = kmalloc(40UL, 208U);
  mfrpl = (struct mlx5_ib_fast_reg_page_list *)tmp;
  }
  if ((unsigned long )mfrpl == (unsigned long )((struct mlx5_ib_fast_reg_page_list *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct ib_fast_reg_page_list *)tmp___0);
  } else {
  }
  {
  tmp___1 = kmalloc((size_t )size, 208U);
  mfrpl->ibfrpl.page_list = (u64 *)tmp___1;
  }
  if ((unsigned long )mfrpl->ibfrpl.page_list == (unsigned long )((u64 *)0ULL)) {
    goto err_free;
  } else {
  }
  {
  tmp___2 = dma_alloc_attrs(ibdev->dma_device, (size_t )size, & mfrpl->map, 208U,
                            (struct dma_attrs *)0);
  mfrpl->mapped_page_list = (__be64 *)tmp___2;
  }
  if ((unsigned long )mfrpl->mapped_page_list == (unsigned long )((__be64 *)0ULL)) {
    goto err_free;
  } else {
  }
  {
  __ret_warn_on = (mfrpl->map & 63ULL) != 0ULL;
  tmp___3 = __builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___3 != 0L) {
    {
    warn_slowpath_null("drivers/infiniband/hw/mlx5/mr.c", 1059);
    }
  } else {
  }
  {
  __builtin_expect(__ret_warn_on != 0, 0L);
  }
  return (& mfrpl->ibfrpl);
  err_free:
  {
  kfree((void const *)mfrpl->ibfrpl.page_list);
  kfree((void const *)mfrpl);
  tmp___4 = ERR_PTR(-12L);
  }
  return ((struct ib_fast_reg_page_list *)tmp___4);
}
}
void mlx5_ib_free_fast_reg_page_list(struct ib_fast_reg_page_list *page_list )
{
  struct mlx5_ib_fast_reg_page_list *mfrpl ;
  struct mlx5_ib_fast_reg_page_list *tmp ;
  struct mlx5_ib_dev *dev ;
  struct mlx5_ib_dev *tmp___0 ;
  int size ;
  {
  {
  tmp = to_mfrpl(page_list);
  mfrpl = tmp;
  tmp___0 = to_mdev(page_list->device);
  dev = tmp___0;
  size = (int )(page_list->max_page_list_len * 8U);
  dma_free_attrs(& (dev->mdev.pdev)->dev, (size_t )size, (void *)mfrpl->mapped_page_list,
                 mfrpl->map, (struct dma_attrs *)0);
  kfree((void const *)mfrpl->ibfrpl.page_list);
  kfree((void const *)mfrpl);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_2_5(ssize_t (*arg0)(struct file * , char * ,
                                                                size_t , loff_t * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_character_driver_scenario_callback_3_5(ssize_t (*arg0)(struct file * , char * ,
                                                                size_t , loff_t * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
int ldv_character_driver_scenario_probe_2_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
int ldv_character_driver_scenario_probe_3_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_write_2_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 ) ;
void ldv_character_driver_scenario_write_3_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 ) ;
void ldv_dispatch_instance_register_8_3(struct timer_list *arg0 ) ;
extern int ldv_emg_del_timer_sync(struct timer_list * ) ;
int ldv_emg_mod_timer(struct timer_list *arg0 , unsigned long arg1 ) ;
pthread_t ldv_thread_2 ;
pthread_t ldv_thread_3 ;
void *ldv_character_driver_scenario_2(void *arg0 )
{
  ssize_t (*ldv_2_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  struct file_operations *ldv_2_container_file_operations ;
  char *ldv_2_ldv_param_4_1_default ;
  long long *ldv_2_ldv_param_4_3_default ;
  char *ldv_2_ldv_param_5_1_default ;
  long long *ldv_2_ldv_param_5_3_default ;
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
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  {
  {
  tmp = external_allocated_data();
  ldv_2_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp;
  tmp___0 = external_allocated_data();
  ldv_2_container_file_operations = (struct file_operations *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_2_ldv_param_4_1_default = (char *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_2_ldv_param_4_3_default = (long long *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_2_ldv_param_5_1_default = (char *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_2_ldv_param_5_3_default = (long long *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_2_resource_file = (struct file *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_2_resource_inode = (struct inode *)tmp___6;
  ldv_2_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___7 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_container_file_operations = (struct file_operations *)tmp___7;
  tmp___8 = ldv_xmalloc(520UL);
  ldv_2_resource_file = (struct file *)tmp___8;
  tmp___9 = ldv_xmalloc(1032UL);
  ldv_2_resource_inode = (struct inode *)tmp___9;
  tmp___10 = ldv_undef_int();
  ldv_2_size_cnt_write_size = (size_t )tmp___10;
  }
  goto ldv_main_2;
  return ((void *)0);
  ldv_main_2:
  {
  tmp___12 = ldv_undef_int();
  }
  if (tmp___12 != 0) {
    {
    ldv_2_ret_default = ldv_character_driver_scenario_probe_2_13(ldv_2_container_file_operations->open,
                                                                 ldv_2_resource_inode,
                                                                 ldv_2_resource_file);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___11 = ldv_undef_int();
    }
    if (tmp___11 != 0) {
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
  tmp___13 = ldv_undef_int();
  }
  {
  if (tmp___13 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___13 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___13 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___14 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_5_1_default = (char *)tmp___14;
  tmp___15 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_5_3_default = (long long *)tmp___15;
  ldv_character_driver_scenario_callback_2_5(ldv_2_callback_read, ldv_2_resource_file,
                                             ldv_2_ldv_param_5_1_default, ldv_2_size_cnt_write_size,
                                             ldv_2_ldv_param_5_3_default);
  ldv_free((void *)ldv_2_ldv_param_5_1_default);
  ldv_free((void *)ldv_2_ldv_param_5_3_default);
  }
  goto ldv_call_2;
  case_2:
  {
  tmp___16 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___16;
  tmp___17 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___17;
  __VERIFIER_assume(ldv_2_size_cnt_write_size <= 2147479552UL);
  ldv_character_driver_scenario_write_2_4((ssize_t (*)(struct file * , char * , size_t ,
                                                       loff_t * ))ldv_2_container_file_operations->write,
                                          ldv_2_resource_file, ldv_2_ldv_param_4_1_default,
                                          ldv_2_size_cnt_write_size, ldv_2_ldv_param_4_3_default);
  ldv_free((void *)ldv_2_ldv_param_4_1_default);
  ldv_free((void *)ldv_2_ldv_param_4_3_default);
  }
  goto ldv_call_2;
  case_3: ;
  goto ldv_main_2;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
}
}
void *ldv_character_driver_scenario_3(void *arg0 )
{
  ssize_t (*ldv_3_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  struct file_operations *ldv_3_container_file_operations ;
  char *ldv_3_ldv_param_4_1_default ;
  long long *ldv_3_ldv_param_4_3_default ;
  char *ldv_3_ldv_param_5_1_default ;
  long long *ldv_3_ldv_param_5_3_default ;
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
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  {
  {
  tmp = external_allocated_data();
  ldv_3_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp;
  tmp___0 = external_allocated_data();
  ldv_3_container_file_operations = (struct file_operations *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_3_ldv_param_4_1_default = (char *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_3_ldv_param_4_3_default = (long long *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_3_ldv_param_5_1_default = (char *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_3_ldv_param_5_3_default = (long long *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_3_resource_file = (struct file *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_3_resource_inode = (struct inode *)tmp___6;
  ldv_3_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___7 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_container_file_operations = (struct file_operations *)tmp___7;
  tmp___8 = ldv_xmalloc(520UL);
  ldv_3_resource_file = (struct file *)tmp___8;
  tmp___9 = ldv_xmalloc(1032UL);
  ldv_3_resource_inode = (struct inode *)tmp___9;
  tmp___10 = ldv_undef_int();
  ldv_3_size_cnt_write_size = (size_t )tmp___10;
  }
  goto ldv_main_3;
  return ((void *)0);
  ldv_main_3:
  {
  tmp___12 = ldv_undef_int();
  }
  if (tmp___12 != 0) {
    {
    ldv_3_ret_default = ldv_character_driver_scenario_probe_3_13(ldv_3_container_file_operations->open,
                                                                 ldv_3_resource_inode,
                                                                 ldv_3_resource_file);
    ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
    tmp___11 = ldv_undef_int();
    }
    if (tmp___11 != 0) {
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
  tmp___13 = ldv_undef_int();
  }
  {
  if (tmp___13 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___13 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___13 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___14 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_ldv_param_5_1_default = (char *)tmp___14;
  tmp___15 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_ldv_param_5_3_default = (long long *)tmp___15;
  ldv_character_driver_scenario_callback_3_5(ldv_3_callback_read, ldv_3_resource_file,
                                             ldv_3_ldv_param_5_1_default, ldv_3_size_cnt_write_size,
                                             ldv_3_ldv_param_5_3_default);
  ldv_free((void *)ldv_3_ldv_param_5_1_default);
  ldv_free((void *)ldv_3_ldv_param_5_3_default);
  }
  goto ldv_call_3;
  case_2:
  {
  tmp___16 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_ldv_param_4_1_default = (char *)tmp___16;
  tmp___17 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_ldv_param_4_3_default = (long long *)tmp___17;
  __VERIFIER_assume(ldv_3_size_cnt_write_size <= 2147479552UL);
  ldv_character_driver_scenario_write_3_4((ssize_t (*)(struct file * , char * , size_t ,
                                                       loff_t * ))ldv_3_container_file_operations->write,
                                          ldv_3_resource_file, ldv_3_ldv_param_4_1_default,
                                          ldv_3_size_cnt_write_size, ldv_3_ldv_param_4_3_default);
  ldv_free((void *)ldv_3_ldv_param_4_1_default);
  ldv_free((void *)ldv_3_ldv_param_4_3_default);
  }
  goto ldv_call_3;
  case_3: ;
  goto ldv_main_3;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
}
}
void ldv_character_driver_scenario_callback_2_5(ssize_t (*arg0)(struct file * , char * ,
                                                                size_t , loff_t * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  limit_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_3_5(ssize_t (*arg0)(struct file * , char * ,
                                                                size_t , loff_t * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  size_read(arg1, arg2, arg3, arg4);
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
  tmp = simple_open(arg1, arg2);
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
  tmp = simple_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_character_driver_scenario_write_2_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 )
{
  {
  {
  limit_write(arg1, (char const *)arg2, arg3, arg4);
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
  size_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dispatch_instance_register_8_3(struct timer_list *arg0 )
{
  int ret ;
  struct ldv_struct_timer_scenario_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_timer_scenario_5 *)tmp;
  cf_arg_5->arg0 = arg0;
  ret = pthread_create(& ldv_thread_5, (pthread_attr_t const *)0, & ldv_timer_scenario_5,
                       (void *)cf_arg_5);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
int ldv_emg_mod_timer(struct timer_list *arg0 , unsigned long arg1 )
{
  struct timer_list *ldv_8_timer_list_timer_list ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_8_timer_list_timer_list = (struct timer_list *)tmp;
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_8_timer_list_timer_list = arg0;
    ldv_dispatch_instance_register_8_3(ldv_8_timer_list_timer_list);
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
static void ldv___ldv_spin_lock_49___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_cache_ent();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_50___0(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_cache_ent();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static int ldv_mod_timer_51(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_mod_timer(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
static int ldv_mod_timer_52(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_mod_timer(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
static void ldv___ldv_spin_lock_53___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_mkey_lock_of_mlx5_priv();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_54___0(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_mkey_lock_of_mlx5_priv();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_55(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_cache_ent();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_57(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_mlx5_cache_ent();
  spin_lock_irq(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_58(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_mlx5_cache_ent();
  spin_unlock_irq(lock);
  }
  return;
}
}
static int ldv_del_timer_sync_70(struct timer_list *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_del_timer_sync(ldv_func_arg1);
  }
  return (tmp);
}
}
__inline static void ldv_spin_lock_71(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_mr_lock_of_mlx5_ib_dev();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_72(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_mr_lock_of_mlx5_ib_dev();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
struct ib_ah *create_ib_ah(struct ib_ah_attr *ah_attr , struct mlx5_ib_ah *ah ) ;
struct ib_ah *create_ib_ah(struct ib_ah_attr *ah_attr , struct mlx5_ib_ah *ah )
{
  __u32 tmp ;
  __u16 tmp___0 ;
  {
  if ((int )ah_attr->ah_flags & 1) {
    {
    memcpy((void *)(& ah->av.rgid), (void const *)(& ah_attr->grh.dgid), 16UL);
    tmp = __fswab32((ah_attr->grh.flow_label | (u32 )((int )ah_attr->grh.sgid_index << 20)) | 1073741824U);
    ah->av.grh_gid_fl = tmp;
    ah->av.hop_limit = ah_attr->grh.hop_limit;
    ah->av.tclass = ah_attr->grh.traffic_class;
    }
  } else {
  }
  {
  tmp___0 = __fswab16((int )ah_attr->dlid);
  ah->av.rlid = tmp___0;
  ah->av.fl_mlid = (unsigned int )ah_attr->src_path_bits & 127U;
  ah->av.stat_rate_sl = (u8 )((int )((signed char )((int )ah_attr->static_rate << 4)) | ((int )((signed char )ah_attr->sl) & 15));
  }
  return (& ah->ibah);
}
}
struct ib_ah *mlx5_ib_create_ah(struct ib_pd *pd , struct ib_ah_attr *ah_attr )
{
  struct mlx5_ib_ah *ah ;
  void *tmp ;
  void *tmp___0 ;
  struct ib_ah *tmp___1 ;
  {
  {
  tmp = kzalloc(72UL, 32U);
  ah = (struct mlx5_ib_ah *)tmp;
  }
  if ((unsigned long )ah == (unsigned long )((struct mlx5_ib_ah *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct ib_ah *)tmp___0);
  } else {
  }
  {
  tmp___1 = create_ib_ah(ah_attr, ah);
  }
  return (tmp___1);
}
}
int mlx5_ib_query_ah(struct ib_ah *ibah , struct ib_ah_attr *ah_attr )
{
  struct mlx5_ib_ah *ah ;
  struct mlx5_ib_ah *tmp ;
  u32 tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  {
  {
  tmp = to_mah(ibah);
  ah = tmp;
  memset((void *)ah_attr, 0, 40UL);
  tmp___1 = __fswab32(ah->av.grh_gid_fl);
  tmp___0 = tmp___1;
  }
  if ((tmp___0 & 1073741824U) != 0U) {
    {
    ah_attr->ah_flags = 1U;
    ah_attr->grh.sgid_index = (u8 )(tmp___0 >> 20);
    ah_attr->grh.flow_label = tmp___0 & 1048575U;
    memcpy((void *)(& ah_attr->grh.dgid), (void const *)(& ah->av.rgid), 16UL);
    ah_attr->grh.hop_limit = ah->av.hop_limit;
    ah_attr->grh.traffic_class = ah->av.tclass;
    }
  } else {
  }
  {
  tmp___2 = __fswab16((int )ah->av.rlid);
  ah_attr->dlid = tmp___2;
  ah_attr->static_rate = (u8 )((int )ah->av.stat_rate_sl >> 4);
  ah_attr->sl = (unsigned int )ah->av.stat_rate_sl & 15U;
  }
  return (0);
}
}
int mlx5_ib_destroy_ah(struct ib_ah *ah )
{
  struct mlx5_ib_ah *tmp ;
  {
  {
  tmp = to_mah(ah);
  kfree((void const *)tmp);
  }
  return (0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int mlx5_core_mad_ifc(struct mlx5_core_dev * , void * , void * , u16 , int ) ;
int mlx5_MAD_IFC(struct mlx5_ib_dev *dev , int ignore_mkey , int ignore_bkey , int port ,
                 struct ib_wc *in_wc , struct ib_grh *in_grh , void *in_mad , void *response_mad )
{
  u8 op_modifier ;
  int tmp ;
  {
  op_modifier = 0U;
  if (ignore_mkey != 0 || (unsigned long )in_wc == (unsigned long )((struct ib_wc *)0)) {
    op_modifier = (u8 )((unsigned int )op_modifier | 1U);
  } else {
  }
  if (ignore_bkey != 0 || (unsigned long )in_wc == (unsigned long )((struct ib_wc *)0)) {
    op_modifier = (u8 )((unsigned int )op_modifier | 2U);
  } else {
  }
  {
  tmp = mlx5_core_mad_ifc(& dev->mdev, in_mad, response_mad, (int )op_modifier, port);
  }
  return (tmp);
}
}
int mlx5_ib_process_mad(struct ib_device *ibdev , int mad_flags , u8 port_num , struct ib_wc *in_wc ,
                        struct ib_grh *in_grh , struct ib_mad *in_mad , struct ib_mad *out_mad )
{
  u16 slid ;
  int err ;
  struct mlx5_ib_dev *tmp ;
  {
  slid = (unsigned long )in_wc != (unsigned long )((struct ib_wc *)0) ? in_wc->slid : 65535U;
  if ((unsigned int )in_mad->mad_hdr.method == 5U && (unsigned int )slid == 0U) {
    return (5);
  } else {
  }
  if ((unsigned int )in_mad->mad_hdr.mgmt_class == 1U || (unsigned int )in_mad->mad_hdr.mgmt_class == 129U) {
    if ((unsigned int )in_mad->mad_hdr.method - 1U > 1U && (unsigned int )in_mad->mad_hdr.method != 7U) {
      return (1);
    } else {
    }
    if ((unsigned int )in_mad->mad_hdr.attr_id == 8192U) {
      return (1);
    } else {
    }
  } else
  if ((((unsigned int )in_mad->mad_hdr.mgmt_class == 4U || (unsigned int )in_mad->mad_hdr.mgmt_class == 9U) || (unsigned int )in_mad->mad_hdr.mgmt_class == 10U) || (unsigned int )in_mad->mad_hdr.mgmt_class == 33U) {
    if ((unsigned int )in_mad->mad_hdr.method - 1U > 1U) {
      return (1);
    } else {
    }
  } else {
    return (1);
  }
  {
  tmp = to_mdev(ibdev);
  err = mlx5_MAD_IFC(tmp, mad_flags & 1, mad_flags & 2, (int )port_num, in_wc, in_grh,
                     (void *)in_mad, (void *)out_mad);
  }
  if (err != 0) {
    return (0);
  } else {
  }
  if ((unsigned int )in_mad->mad_hdr.mgmt_class == 129U) {
    out_mad->mad_hdr.status = (__be16 )((unsigned int )out_mad->mad_hdr.status | 128U);
  } else {
  }
  if ((unsigned int )in_mad->mad_hdr.method == 7U) {
    return (5);
  } else {
  }
  return (3);
}
}
int mlx5_query_ext_port_caps(struct mlx5_ib_dev *dev , u8 port )
{
  struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  u16 packet_error ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  {
  {
  in_mad = (struct ib_smp *)0;
  out_mad = (struct ib_smp *)0;
  err = -12;
  tmp = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp;
  tmp___0 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___0;
  }
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  {
  init_query_mad(in_mad);
  in_mad->attr_id = 37119U;
  tmp___1 = __fswab32((__u32 )port);
  in_mad->attr_mod = tmp___1;
  err = mlx5_MAD_IFC(dev, 1, 1, 1, (struct ib_wc *)0, (struct ib_grh *)0, (void *)in_mad,
                     (void *)out_mad);
  tmp___2 = __fswab16((int )out_mad->status);
  packet_error = tmp___2;
  dev->mdev.caps.ext_port_cap[(int )port + -1] = (u8 )(err == 0 && (unsigned int )packet_error == 0U);
  }
  out:
  {
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  }
  return (err);
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
pthread_mutex_t pmutex_cap_mask_mutex_of_mlx5_ib_dev ;
void ldv_mutex_lock_cap_mask_mutex_of_mlx5_ib_dev(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_cap_mask_mutex_of_mlx5_ib_dev);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_cap_mask_mutex_of_mlx5_ib_dev(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_cap_mask_mutex_of_mlx5_ib_dev);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_cap_mask_mutex_of_mlx5_ib_dev(struct mutex *lock )
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
int ldv_mutex_trylock_cap_mask_mutex_of_mlx5_ib_dev(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_cap_mask_mutex_of_mlx5_ib_dev);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_cap_mask_mutex_of_mlx5_ib_dev(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_cap_mask_mutex_of_mlx5_ib_dev);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_cap_mask_mutex_of_mlx5_ib_dev(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_cap_mask_mutex_of_mlx5_ib_dev);
  }
  return;
}
}
pthread_mutex_t pmutex_db_page_mutex_of_mlx5_ib_ucontext ;
void ldv_mutex_lock_db_page_mutex_of_mlx5_ib_ucontext(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_db_page_mutex_of_mlx5_ib_ucontext);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_db_page_mutex_of_mlx5_ib_ucontext(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_db_page_mutex_of_mlx5_ib_ucontext);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_db_page_mutex_of_mlx5_ib_ucontext(struct mutex *lock )
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
int ldv_mutex_trylock_db_page_mutex_of_mlx5_ib_ucontext(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_db_page_mutex_of_mlx5_ib_ucontext);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_db_page_mutex_of_mlx5_ib_ucontext(atomic_t *cnt ,
                                                                    struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_db_page_mutex_of_mlx5_ib_ucontext);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_db_page_mutex_of_mlx5_ib_ucontext(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_db_page_mutex_of_mlx5_ib_ucontext);
  }
  return;
}
}
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
pthread_mutex_t pmutex_lock_of_mlx5_uuar_info ;
void ldv_mutex_lock_lock_of_mlx5_uuar_info(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_lock_of_mlx5_uuar_info);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_mlx5_uuar_info(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_lock_of_mlx5_uuar_info);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_mlx5_uuar_info(struct mutex *lock )
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
int ldv_mutex_trylock_lock_of_mlx5_uuar_info(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_lock_of_mlx5_uuar_info);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_mlx5_uuar_info(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_lock_of_mlx5_uuar_info);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_mlx5_uuar_info(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_lock_of_mlx5_uuar_info);
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
pthread_mutex_t pmutex_mutex_of_mlx5_ib_qp ;
void ldv_mutex_lock_mutex_of_mlx5_ib_qp(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_mlx5_ib_qp);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_mlx5_ib_qp(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_mutex_of_mlx5_ib_qp);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_mlx5_ib_qp(struct mutex *lock )
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
int ldv_mutex_trylock_mutex_of_mlx5_ib_qp(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_mutex_of_mlx5_ib_qp);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_mlx5_ib_qp(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_mutex_of_mlx5_ib_qp);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_mlx5_ib_qp(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_mlx5_ib_qp);
  }
  return;
}
}
pthread_mutex_t pmutex_mutex_of_mlx5_ib_srq ;
void ldv_mutex_lock_mutex_of_mlx5_ib_srq(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_mlx5_ib_srq);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_mlx5_ib_srq(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_mutex_of_mlx5_ib_srq);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_mlx5_ib_srq(struct mutex *lock )
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
int ldv_mutex_trylock_mutex_of_mlx5_ib_srq(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_mutex_of_mlx5_ib_srq);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_mlx5_ib_srq(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_mutex_of_mlx5_ib_srq);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_mlx5_ib_srq(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_mlx5_ib_srq);
  }
  return;
}
}
pthread_mutex_t pmutex_resize_mutex_of_mlx5_ib_cq ;
void ldv_mutex_lock_resize_mutex_of_mlx5_ib_cq(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_resize_mutex_of_mlx5_ib_cq);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_resize_mutex_of_mlx5_ib_cq(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_resize_mutex_of_mlx5_ib_cq);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_resize_mutex_of_mlx5_ib_cq(struct mutex *lock )
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
int ldv_mutex_trylock_resize_mutex_of_mlx5_ib_cq(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_resize_mutex_of_mlx5_ib_cq);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_resize_mutex_of_mlx5_ib_cq(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_resize_mutex_of_mlx5_ib_cq);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_resize_mutex_of_mlx5_ib_cq(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_resize_mutex_of_mlx5_ib_cq);
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
pthread_mutex_t smutex_lock_of_mlx5_bf ;
void ldv_spin_lock_lock_of_mlx5_bf(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_mlx5_bf);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_mlx5_bf(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_mlx5_bf);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_mlx5_bf(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_mlx5_bf);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_mlx5_bf(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_mlx5_bf(void)
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
int ldv_spin_can_lock_lock_of_mlx5_bf(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_mlx5_bf();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_mlx5_bf(void)
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
int ldv_atomic_dec_and_lock_lock_of_mlx5_bf(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_mlx5_bf();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock_of_mlx5_cache_ent ;
void ldv_spin_lock_lock_of_mlx5_cache_ent(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_mlx5_cache_ent);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_mlx5_cache_ent(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_mlx5_cache_ent);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_mlx5_cache_ent(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_mlx5_cache_ent);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_mlx5_cache_ent(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_mlx5_cache_ent(void)
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
int ldv_spin_can_lock_lock_of_mlx5_cache_ent(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_mlx5_cache_ent();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_mlx5_cache_ent(void)
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
int ldv_atomic_dec_and_lock_lock_of_mlx5_cache_ent(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_mlx5_cache_ent();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock_of_mlx5_eq_table ;
void ldv_spin_lock_lock_of_mlx5_eq_table(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_mlx5_eq_table);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_mlx5_eq_table(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_mlx5_eq_table);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_mlx5_eq_table(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_mlx5_eq_table);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_mlx5_eq_table(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_mlx5_eq_table(void)
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
int ldv_spin_can_lock_lock_of_mlx5_eq_table(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_mlx5_eq_table();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_mlx5_eq_table(void)
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
int ldv_atomic_dec_and_lock_lock_of_mlx5_eq_table(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_mlx5_eq_table();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock_of_mlx5_ib_cq ;
void ldv_spin_lock_lock_of_mlx5_ib_cq(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_mlx5_ib_cq);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_mlx5_ib_cq(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_mlx5_ib_cq);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_mlx5_ib_cq(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_mlx5_ib_cq);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_mlx5_ib_cq(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_mlx5_ib_cq(void)
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
int ldv_spin_can_lock_lock_of_mlx5_ib_cq(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_mlx5_ib_cq();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_mlx5_ib_cq(void)
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
int ldv_atomic_dec_and_lock_lock_of_mlx5_ib_cq(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_mlx5_ib_cq();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock_of_mlx5_ib_srq ;
void ldv_spin_lock_lock_of_mlx5_ib_srq(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_mlx5_ib_srq);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_mlx5_ib_srq(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_mlx5_ib_srq);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_mlx5_ib_srq(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_mlx5_ib_srq);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_mlx5_ib_srq(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_mlx5_ib_srq(void)
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
int ldv_spin_can_lock_lock_of_mlx5_ib_srq(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_mlx5_ib_srq();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_mlx5_ib_srq(void)
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
int ldv_atomic_dec_and_lock_lock_of_mlx5_ib_srq(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_mlx5_ib_srq();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock_of_mlx5_ib_wq ;
void ldv_spin_lock_lock_of_mlx5_ib_wq(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_mlx5_ib_wq);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_mlx5_ib_wq(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_mlx5_ib_wq);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_mlx5_ib_wq(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_mlx5_ib_wq);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_mlx5_ib_wq(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_mlx5_ib_wq(void)
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
int ldv_spin_can_lock_lock_of_mlx5_ib_wq(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_mlx5_ib_wq();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_mlx5_ib_wq(void)
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
int ldv_atomic_dec_and_lock_lock_of_mlx5_ib_wq(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_mlx5_ib_wq();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_mkey_lock_of_mlx5_priv ;
void ldv_spin_lock_mkey_lock_of_mlx5_priv(void)
{
  {
  {
  pthread_mutex_lock(& smutex_mkey_lock_of_mlx5_priv);
  }
  return;
}
}
void ldv_spin_unlock_mkey_lock_of_mlx5_priv(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_mkey_lock_of_mlx5_priv);
  }
  return;
}
}
int ldv_spin_trylock_mkey_lock_of_mlx5_priv(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_mkey_lock_of_mlx5_priv);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_mkey_lock_of_mlx5_priv(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_mkey_lock_of_mlx5_priv(void)
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
int ldv_spin_can_lock_mkey_lock_of_mlx5_priv(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_mkey_lock_of_mlx5_priv();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_mkey_lock_of_mlx5_priv(void)
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
int ldv_atomic_dec_and_lock_mkey_lock_of_mlx5_priv(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_mkey_lock_of_mlx5_priv();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_mr_lock_of_mlx5_ib_dev ;
void ldv_spin_lock_mr_lock_of_mlx5_ib_dev(void)
{
  {
  {
  pthread_mutex_lock(& smutex_mr_lock_of_mlx5_ib_dev);
  }
  return;
}
}
void ldv_spin_unlock_mr_lock_of_mlx5_ib_dev(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_mr_lock_of_mlx5_ib_dev);
  }
  return;
}
}
int ldv_spin_trylock_mr_lock_of_mlx5_ib_dev(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_mr_lock_of_mlx5_ib_dev);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_mr_lock_of_mlx5_ib_dev(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_mr_lock_of_mlx5_ib_dev(void)
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
int ldv_spin_can_lock_mr_lock_of_mlx5_ib_dev(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_mr_lock_of_mlx5_ib_dev();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_mr_lock_of_mlx5_ib_dev(void)
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
int ldv_atomic_dec_and_lock_mr_lock_of_mlx5_ib_dev(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_mr_lock_of_mlx5_ib_dev();
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
