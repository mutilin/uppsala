struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
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
typedef __u32 __wsum;
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
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
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
struct net_device;
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
struct __anonstruct_seqlock_t_35 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
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
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_40 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_40 nodemask_t;
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
struct ctl_table;
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
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
struct of_device_id;
struct acpi_device_id;
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
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_133 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_133 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
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
struct __anonstruct____missing_field_name_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_135 {
   struct __anonstruct____missing_field_name_136 __annonCompField34 ;
   struct __anonstruct____missing_field_name_137 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_135 __annonCompField36 ;
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
union __anonunion____missing_field_name_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_144 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_143 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_144 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_141 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_142 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_139 {
   union __anonunion____missing_field_name_140 __annonCompField38 ;
   union __anonunion____missing_field_name_141 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_145 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_146 __annonCompField44 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_139 __annonCompField43 ;
   union __anonunion____missing_field_name_145 __annonCompField45 ;
   union __anonunion____missing_field_name_147 __annonCompField46 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
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
   union __anonunion_shared_148 shared ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_151 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_151 sync_serial_settings;
struct __anonstruct_te1_settings_152 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_152 te1_settings;
struct __anonstruct_raw_hdlc_proto_153 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_153 raw_hdlc_proto;
struct __anonstruct_fr_proto_154 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_154 fr_proto;
struct __anonstruct_fr_proto_pvc_155 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_155 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_156 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_156 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_157 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_157 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_158 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_158 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_159 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_160 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_159 ifr_ifrn ;
   union __anonunion_ifr_ifru_160 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_163 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_162 {
   struct __anonstruct____missing_field_name_163 __annonCompField47 ;
};
struct lockref {
   union __anonunion____missing_field_name_162 __annonCompField48 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_165 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_164 {
   struct __anonstruct____missing_field_name_165 __annonCompField49 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_164 __annonCompField50 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_166 {
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
   union __anonunion_d_u_166 d_u ;
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
struct cgroup_subsys_state;
struct export_operations;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
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
struct __anonstruct_kprojid_t_168 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_168 kprojid_t;
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
union __anonunion____missing_field_name_169 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_169 __annonCompField51 ;
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
union __anonunion_arg_171 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_170 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_171 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_170 read_descriptor_t;
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
union __anonunion____missing_field_name_172 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_173 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
union __anonunion____missing_field_name_174 {
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
   union __anonunion____missing_field_name_172 __annonCompField52 ;
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
   union __anonunion____missing_field_name_173 __annonCompField53 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_174 __annonCompField54 ;
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
union __anonunion_f_u_175 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_175 f_u ;
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
struct net;
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
struct __anonstruct_afs_177 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_176 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_177 afs ;
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
   union __anonunion_fl_u_176 fl_u ;
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
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_178 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_178 sigset_t;
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
struct __anonstruct__kill_180 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_181 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_183 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_184 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_185 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_186 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_179 {
   int _pad[28U] ;
   struct __anonstruct__kill_180 _kill ;
   struct __anonstruct__timer_181 _timer ;
   struct __anonstruct__rt_182 _rt ;
   struct __anonstruct__sigchld_183 _sigchld ;
   struct __anonstruct__sigfault_184 _sigfault ;
   struct __anonstruct__sigpoll_185 _sigpoll ;
   struct __anonstruct__sigsys_186 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_179 _sifields ;
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
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct____missing_field_name_190 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_189 {
   struct __anonstruct____missing_field_name_190 __annonCompField55 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_189 __annonCompField56 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
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
union __anonunion____missing_field_name_191 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_192 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_194 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_193 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_194 __annonCompField59 ;
};
union __anonunion_type_data_195 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_197 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_196 {
   union __anonunion_payload_197 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_191 __annonCompField57 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_192 __annonCompField58 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_193 __annonCompField60 ;
   union __anonunion_type_data_195 type_data ;
   union __anonunion____missing_field_name_196 __annonCompField61 ;
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
struct uts_namespace;
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
struct mem_cgroup;
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
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
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
struct __anonstruct____missing_field_name_214 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_215 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_213 {
   struct __anonstruct____missing_field_name_214 __annonCompField63 ;
   struct __anonstruct____missing_field_name_215 __annonCompField64 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_213 __annonCompField65 ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
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
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct____missing_field_name_219 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_218 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_219 __annonCompField67 ;
};
union __anonunion____missing_field_name_220 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_221 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_218 __annonCompField68 ;
   __u32 priority ;
   __u8 local_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_rxhash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   union __anonunion____missing_field_name_220 __annonCompField69 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_221 __annonCompField70 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[97U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports sysctl_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   kgid_t sysctl_ping_group_range[2U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   spinlock_t xfrm_policy_sk_bundle_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   unsigned long flags ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup_name {
   struct callback_head callback_head ;
   char name[] ;
};
struct cgroup {
   unsigned long flags ;
   int id ;
   int nr_css ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   u64 serial_nr ;
   struct cgroup_name *name ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct list_head cset_links ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct cgroup_subsys_state dummy_css ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
   struct simple_xattrs xattrs ;
};
struct cgroupfs_root {
   struct super_block *sb ;
   unsigned long subsys_mask ;
   int hierarchy_id ;
   struct cgroup top_cgroup ;
   int number_of_cgroups ;
   struct list_head root_list ;
   unsigned long flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cgrp_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup_subsys_state * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup_subsys_state * , unsigned int ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int subsys_id ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
   __u32 linkstate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
};
enum ldv_28342 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28343 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_235 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_236 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_237 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_235 adj_list ;
   struct __anonstruct_all_adj_list_236 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   enum ldv_28342 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28343 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_237 __annonCompField74 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
typedef unsigned long kernel_ulong_t;
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
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
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
union __anonunion____missing_field_name_247 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_247 __annonCompField76 ;
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
struct capi_register_params {
   __u32 level3cnt ;
   __u32 datablkcnt ;
   __u32 datablklen ;
};
typedef struct capi_register_params capi_register_params;
struct capi_version {
   __u32 majorversion ;
   __u32 minorversion ;
   __u32 majormanuversion ;
   __u32 minormanuversion ;
};
typedef struct capi_version capi_version;
struct capi_profile {
   __u16 ncontroller ;
   __u16 nbchannel ;
   __u32 goptions ;
   __u32 support1 ;
   __u32 support2 ;
   __u32 support3 ;
   __u32 reserved[6U] ;
   __u32 manu[5U] ;
};
typedef struct capi_profile capi_profile;
struct capiloaddatapart {
   int user ;
   int len ;
   unsigned char *data ;
};
typedef struct capiloaddatapart capiloaddatapart;
struct capiloaddata {
   capiloaddatapart firmware ;
   capiloaddatapart configuration ;
};
typedef struct capiloaddata capiloaddata;
struct capi_ctr {
   struct module *owner ;
   void *driverdata ;
   char name[32U] ;
   char *driver_name ;
   int (*load_firmware)(struct capi_ctr * , capiloaddata * ) ;
   void (*reset_ctr)(struct capi_ctr * ) ;
   void (*register_appl)(struct capi_ctr * , u16 , capi_register_params * ) ;
   void (*release_appl)(struct capi_ctr * , u16 ) ;
   u16 (*send_message)(struct capi_ctr * , struct sk_buff * ) ;
   char *(*procinfo)(struct capi_ctr * ) ;
   struct file_operations const *proc_fops ;
   u8 manu[64U] ;
   capi_version version ;
   capi_profile profile ;
   u8 serial[8U] ;
   unsigned long nrecvctlpkt ;
   unsigned long nrecvdatapkt ;
   unsigned long nsentctlpkt ;
   unsigned long nsentdatapkt ;
   int cnr ;
   unsigned short state ;
   int blocked ;
   int traceflag ;
   wait_queue_head_t state_wait_queue ;
   struct proc_dir_entry *procent ;
   char procfn[128U] ;
};
struct HYSDN_CARD;
struct hycapictrl_info {
   char cardname[32U] ;
   spinlock_t lock ;
   int versionlen ;
   char versionbuf[1024U] ;
   char *version[8U] ;
   char infobuf[128U] ;
   struct HYSDN_CARD *card ;
   struct capi_ctr capi_ctrl ;
   struct sk_buff *skbs[20U] ;
   int in_idx ;
   int out_idx ;
   int sk_count ;
   struct sk_buff *tx_skb ;
   struct list_head ncci_head ;
};
struct HYSDN_CARD {
   int myid ;
   unsigned char bus ;
   unsigned char devfn ;
   unsigned short subsysid ;
   unsigned char brdtype ;
   unsigned int bchans ;
   unsigned int faxchans ;
   unsigned char mac_addr[6U] ;
   unsigned int irq ;
   unsigned int iobase ;
   unsigned long plxbase ;
   unsigned long membase ;
   unsigned long memend ;
   void *dpram ;
   int state ;
   struct HYSDN_CARD *next ;
   void *proclog ;
   void *procconf ;
   unsigned char err_log_state ;
   unsigned long debug_flags ;
   void (*set_errlog_state)(struct HYSDN_CARD * , int ) ;
   struct work_struct irq_queue ;
   unsigned char volatile irq_enabled ;
   unsigned char volatile hw_lock ;
   void *boot ;
   int (*writebootimg)(struct HYSDN_CARD * , unsigned char * , unsigned long ) ;
   int (*writebootseq)(struct HYSDN_CARD * , unsigned char * , int ) ;
   int (*waitpofready)(struct HYSDN_CARD * ) ;
   int (*testram)(struct HYSDN_CARD * ) ;
   unsigned char async_data[256U] ;
   unsigned short volatile async_len ;
   unsigned short volatile async_channel ;
   int volatile async_busy ;
   int volatile net_tx_busy ;
   void *netif ;
   void (*stopcard)(struct HYSDN_CARD * ) ;
   void (*releasehardware)(struct HYSDN_CARD * ) ;
   spinlock_t hysdn_lock ;
   struct hycapictrl_info *hyctrlinfo ;
};
typedef struct HYSDN_CARD hysdn_card;
struct conf_writedata {
   hysdn_card *card ;
   int buf_size ;
   int needed_size ;
   int state ;
   unsigned char conf_line[255U] ;
   unsigned short channel ;
   unsigned char *pof_buffer ;
};
struct __va_list_tag;
typedef struct __va_list_tag __va_list_tag;
typedef __builtin_va_list __gnuc_va_list[1U];
typedef __gnuc_va_list va_list[1U];
enum hrtimer_restart;
struct ErrLogEntry_tag {
   unsigned long ulErrType ;
   unsigned long ulErrSubtype ;
   unsigned char ucTextSize ;
   unsigned char ucText[55U] ;
};
typedef struct ErrLogEntry_tag tErrLogEntry;
struct log_data {
   struct log_data *next ;
   unsigned long usage_cnt ;
   void *proc_ctrl ;
   char log_start[2U] ;
};
struct procdata {
   struct proc_dir_entry *log ;
   char log_name[15U] ;
   struct log_data *log_head ;
   struct log_data *log_tail ;
   int if_used ;
   int volatile del_lock ;
   unsigned char logtmp[120U] ;
   wait_queue_head_t rd_queue ;
};
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
union pthread_attr_t {
   char __size[56U] ;
   long __align ;
};
typedef union pthread_attr_t pthread_attr_t;
enum hrtimer_restart;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct DpramBootSpooler_tag {
   unsigned char Len ;
   unsigned char volatile RdPtr ;
   unsigned char WrPtr ;
   unsigned char Data[32U] ;
};
typedef struct DpramBootSpooler_tag tDpramBootSpooler;
struct ErgDpram_tag {
   unsigned char ToHyBuf[3584U] ;
   unsigned char ToPcBuf[3584U] ;
   unsigned char bSoftUart[432U] ;
   unsigned char volatile ErrLogMsg[64U] ;
   unsigned short volatile ToHyChannel ;
   unsigned short volatile ToHySize ;
   unsigned char volatile ToHyFlag ;
   unsigned char volatile ToPcFlag ;
   unsigned short volatile ToPcChannel ;
   unsigned short volatile ToPcSize ;
   unsigned char bRes1DBA[6U] ;
   unsigned char bRestOfEntryTbl[256U] ;
   unsigned long TrapTable[62U] ;
   unsigned char bRes1FF8[3U] ;
   unsigned char ToPcIntMetro ;
   unsigned char volatile ToHyNoDpramErrLog ;
   unsigned char bRes1FFD ;
   unsigned char ToPcInt ;
   unsigned char ToHyInt ;
};
typedef struct ErgDpram_tag tErgDpram;
struct ldv_struct_free_irq_10 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_scenario_5 {
   int arg0 ;
   irqreturn_t (*arg1)(int , void * ) ;
   irqreturn_t (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
typedef unsigned char u_char;
enum hrtimer_restart;
struct PofFileHdr_tag {
   unsigned long Magic ;
   unsigned long N_PofRecs ;
};
typedef struct PofFileHdr_tag tPofFileHdr;
struct PofRecHdr_tag {
   unsigned short PofRecId ;
   unsigned long PofRecDataLen ;
};
typedef struct PofRecHdr_tag tPofRecHdr;
struct PofTimeStamp_tag {
   unsigned long UnixTime ;
   unsigned char DateTimeText[40U] ;
};
typedef struct PofTimeStamp_tag tPofTimeStamp;
union __anonunion_buf_246 {
   unsigned char BootBuf[4096U] ;
   tPofRecHdr PofRecHdr ;
   tPofFileHdr PofFileHdr ;
   tPofTimeStamp PofTime ;
};
struct boot_data {
   unsigned short Cryptor ;
   unsigned short Nrecs ;
   unsigned char pof_state ;
   unsigned char is_crypted ;
   int BufSize ;
   int last_error ;
   unsigned short pof_recid ;
   unsigned long pof_reclen ;
   unsigned long pof_recoffset ;
   union __anonunion_buf_246 buf ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct ipv4_devconf {
   void *sysctl ;
   int data[28U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   struct ip_mc_list **mc_hash ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_prefixlen ;
   __u32 ifa_flags ;
   char ifa_label[16U] ;
   __u32 ifa_valid_lft ;
   __u32 ifa_preferred_lft ;
   unsigned long ifa_cstamp ;
   unsigned long ifa_tstamp ;
};
struct net_local {
   struct net_device *dev ;
   spinlock_t lock ;
   struct sk_buff *skbs[20U] ;
   int in_idx ;
   int out_idx ;
   int sk_count ;
};
enum hrtimer_restart;
struct pci_dev;
struct pci_bus;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
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
struct pci_driver;
union __anonunion____missing_field_name_241 {
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
   union __anonunion____missing_field_name_241 __annonCompField75 ;
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
struct ldv_struct_insmod_8 {
   int signal_pending ;
};
struct ldv_struct_pci_scenario_7 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_random_allocationless_scenario_6 {
   struct net_device *arg0 ;
   int signal_pending ;
};
enum hrtimer_restart;
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
typedef struct hycapictrl_info hycapictrl_info;
struct _hycapi_appl {
   unsigned int ctrl_mask ;
   capi_register_params rp ;
   struct sk_buff *listen_req[32U] ;
};
typedef struct _hycapi_appl hycapi_appl;
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
long __builtin_expect(long exp , long c ) ;
static void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_hysdn_conf_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_hysdn_conf_mutex(struct mutex *lock ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern size_t strlen(char const * ) ;
int ldv_filter_err_code(int ret_val ) ;
extern void __VERIFIER_assume(int ) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
void *ldv_xmalloc_unknown_size(size_t size ) ;
static void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_71(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
extern loff_t no_llseek(struct file * , loff_t , int ) ;
extern int nonseekable_open(struct inode * , struct file * ) ;
extern ssize_t simple_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
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
struct log_data *pd_log_head ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
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
extern struct proc_dir_entry *proc_mkdir(char const * , struct proc_dir_entry * ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
extern void *PDE_DATA(struct inode const * ) ;
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern struct net init_net ;
hysdn_card *card_root ;
int hysdn_procconf_init(void) ;
void hysdn_procconf_release(void) ;
int hysdn_proclog_init(hysdn_card *card ) ;
void hysdn_proclog_release(hysdn_card *card ) ;
void hysdn_addlog(hysdn_card *card , char *fmt , ...) ;
int pof_write_close(hysdn_card *card ) ;
int pof_write_open(hysdn_card *card , unsigned char **bufp ) ;
int pof_write_buffer(hysdn_card *card , int datlen ) ;
int hysdn_tx_cfgline(hysdn_card *card , unsigned char *line , unsigned short chan ) ;
char *hysdn_net_getname(hysdn_card *card ) ;
static struct mutex hysdn_conf_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "hysdn_conf_mutex.wait_lock",
                                                           0, 0UL}}}}, {& hysdn_conf_mutex.wait_list,
                                                                        & hysdn_conf_mutex.wait_list},
    0, 0, (void *)(& hysdn_conf_mutex), {0, {0, 0}, "hysdn_conf_mutex", 0, 0UL}};
static int process_line(struct conf_writedata *cnf )
{
  unsigned char *cp ;
  int i ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  {
  cp = (unsigned char *)(& cnf->conf_line);
  if (((cnf->card)->debug_flags & 256UL) != 0UL) {
    {
    hysdn_addlog(cnf->card, (char *)"conf line: %s", cp);
    }
  } else {
  }
  if ((unsigned int )*cp == 45U) {
    cp = cp + 1;
    tmp = cp;
    cp = cp + 1;
    if ((unsigned int )*tmp != 99U) {
      return (0);
    } else {
    }
    i = 0;
    goto ldv_44419;
    ldv_44418:
    tmp___0 = cp;
    cp = cp + 1;
    i = (i * 10 + (int )*tmp___0) + -48;
    ldv_44419: ;
    if ((unsigned int )*cp - 48U <= 9U) {
      goto ldv_44418;
    } else {
    }
    if (i > 65535) {
      if (((cnf->card)->debug_flags & 1024UL) != 0UL) {
        {
        hysdn_addlog(cnf->card, (char *)"conf channel invalid  %d", i);
        }
      } else {
      }
      return (-1010);
    } else {
    }
    cnf->channel = (unsigned short )i;
    return (0);
  } else {
  }
  if ((unsigned int )*cp == 42U) {
    if (((cnf->card)->debug_flags & 512UL) != 0UL) {
      {
      hysdn_addlog(cnf->card, (char *)"conf chan=%d %s", (int )cnf->channel, cp);
      }
    } else {
    }
    {
    tmp___1 = hysdn_tx_cfgline(cnf->card, (unsigned char *)(& cnf->conf_line + 1UL),
                               (int )cnf->channel);
    }
    return (tmp___1);
  } else {
  }
  return (0);
}
}
static ssize_t hysdn_conf_write(struct file *file , char const *buf , size_t count ,
                                loff_t *off )
{
  struct conf_writedata *cnf ;
  int i ;
  unsigned char ch ;
  unsigned char *cp ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned char *tmp___3 ;
  {
  if (count == 0UL) {
    return (0L);
  } else {
  }
  cnf = (struct conf_writedata *)file->private_data;
  if ((unsigned long )cnf == (unsigned long )((struct conf_writedata *)0)) {
    return (-14L);
  } else {
  }
  if (cnf->state == 0) {
    {
    tmp = copy_from_user((void *)(& ch), (void const *)buf, 1UL);
    }
    if (tmp != 0UL) {
      return (-14L);
    } else {
    }
    if ((unsigned int )ch == 26U) {
      {
      tmp___0 = pof_write_open(cnf->card, & cnf->pof_buffer);
      cnf->needed_size = tmp___0;
      }
      if (tmp___0 <= 0) {
        return ((ssize_t )cnf->needed_size);
      } else {
      }
      cnf->buf_size = 0;
      cnf->state = 2;
    } else {
      cnf->buf_size = 0;
      cnf->state = 1;
      if ((cnf->card)->state != 3) {
        return (-1008L);
      } else {
      }
      cnf->conf_line[254] = 0U;
      cnf->channel = 4098U;
    }
  } else {
  }
  if (cnf->state == 2) {
    i = cnf->needed_size - cnf->buf_size;
    if (i <= 0) {
      return (-22L);
    } else {
    }
    if ((size_t )i < count) {
      count = (size_t )i;
    } else {
    }
    {
    tmp___1 = copy_from_user((void *)(cnf->pof_buffer + (unsigned long )cnf->buf_size),
                             (void const *)buf, count);
    }
    if (tmp___1 != 0UL) {
      return (-14L);
    } else {
    }
    cnf->buf_size = (int )((unsigned int )cnf->buf_size + (unsigned int )count);
    if (cnf->needed_size == cnf->buf_size) {
      {
      cnf->needed_size = pof_write_buffer(cnf->card, cnf->buf_size);
      }
      if (cnf->needed_size <= 0) {
        (cnf->card)->state = 2;
        return ((ssize_t )cnf->needed_size);
      } else {
      }
      cnf->buf_size = 0;
    } else {
    }
  } else {
    if ((cnf->card)->state != 3) {
      if (((cnf->card)->debug_flags & 1024UL) != 0UL) {
        {
        hysdn_addlog(cnf->card, (char *)"cnf write denied -> not booted");
        }
      } else {
      }
      return (-1008L);
    } else {
    }
    i = 254 - cnf->buf_size;
    if (i > 0) {
      if (count > (size_t )i) {
        count = (size_t )i;
      } else {
      }
      {
      tmp___2 = copy_from_user((void *)(& cnf->conf_line + (unsigned long )cnf->buf_size),
                               (void const *)buf, count);
      }
      if (tmp___2 != 0UL) {
        return (-14L);
      } else {
      }
      i = (int )count;
      cp = (unsigned char *)(& cnf->conf_line + (unsigned long )cnf->buf_size);
      goto ldv_44433;
      ldv_44432: ;
      if ((unsigned int )*cp <= 31U && (unsigned int )*cp != 9U) {
        goto ldv_44431;
      } else {
      }
      cp = cp + 1;
      i = i - 1;
      ldv_44433: ;
      if (i != 0) {
        goto ldv_44432;
      } else {
      }
      ldv_44431: ;
      if (i != 0) {
        tmp___3 = cp;
        cp = cp + 1;
        *tmp___3 = 0U;
        count = count - (size_t )(i + -1);
        goto ldv_44435;
        ldv_44434:
        i = i - 1;
        count = count + 1UL;
        cp = cp + 1;
        ldv_44435: ;
        if ((i != 0 && (unsigned int )*cp <= 31U) && (unsigned int )*cp != 9U) {
          goto ldv_44434;
        } else {
        }
        {
        cnf->buf_size = 0;
        i = process_line(cnf);
        }
        if (i < 0) {
          count = (size_t )i;
        } else {
        }
      } else {
        cnf->buf_size = (int )((unsigned int )cnf->buf_size + (unsigned int )count);
        if (cnf->buf_size > 253) {
          if (((cnf->card)->debug_flags & 1024UL) != 0UL) {
            {
            hysdn_addlog(cnf->card, (char *)"cnf line too long %d chars pos %d", cnf->buf_size,
                         count);
            }
          } else {
          }
          return (-1009L);
        } else {
        }
      }
    } else {
      if (((cnf->card)->debug_flags & 1024UL) != 0UL) {
        {
        hysdn_addlog(cnf->card, (char *)"cnf line too long");
        }
      } else {
      }
      return (-1009L);
    }
  }
  return ((ssize_t )count);
}
}
static ssize_t hysdn_conf_read(struct file *file , char *buf , size_t count , loff_t *off )
{
  char *cp ;
  size_t tmp ;
  ssize_t tmp___0 ;
  {
  if ((file->f_mode & 1U) == 0U) {
    return (-1L);
  } else {
  }
  cp = (char *)file->private_data;
  if ((unsigned long )cp == (unsigned long )((char *)0)) {
    return (-14L);
  } else {
  }
  {
  tmp = strlen((char const *)cp);
  tmp___0 = simple_read_from_buffer((void *)buf, count, off, (void const *)cp, tmp);
  }
  return (tmp___0);
}
}
static int hysdn_conf_open(struct inode *ino , struct file *filep )
{
  hysdn_card *card ;
  struct conf_writedata *cnf ;
  char *cp ;
  char *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  char *tmp___3 ;
  char *tmp___4 ;
  char *tmp___5 ;
  char *tmp___6 ;
  char *tmp___7 ;
  int tmp___8 ;
  {
  {
  ldv_mutex_lock_67(& hysdn_conf_mutex);
  tmp___0 = PDE_DATA((struct inode const *)ino);
  card = (hysdn_card *)tmp___0;
  }
  if ((card->debug_flags & 3145728UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"config open for uid=%d gid=%d mode=0x%x", (filep->f_cred)->fsuid,
                 (filep->f_cred)->fsgid, filep->f_mode);
    }
  } else {
  }
  if ((filep->f_mode & 3U) == 2U) {
    {
    tmp___1 = kmalloc(288UL, 208U);
    cnf = (struct conf_writedata *)tmp___1;
    }
    if ((unsigned long )cnf == (unsigned long )((struct conf_writedata *)0)) {
      {
      ldv_mutex_unlock_68(& hysdn_conf_mutex);
      }
      return (-14);
    } else {
    }
    cnf->card = card;
    cnf->buf_size = 0;
    cnf->state = 0;
    filep->private_data = (void *)cnf;
  } else
  if ((filep->f_mode & 3U) == 1U) {
    {
    tmp___2 = kmalloc(162UL, 208U);
    tmp = (char *)tmp___2;
    }
    if ((unsigned long )tmp == (unsigned long )((char *)0)) {
      {
      ldv_mutex_unlock_69(& hysdn_conf_mutex);
      }
      return (-14);
    } else {
    }
    {
    filep->private_data = (void *)tmp;
    sprintf(tmp, "id bus slot type irq iobase dp-mem     b-chans fax-chans state device");
    cp = tmp;
    }
    goto ldv_44453;
    ldv_44452:
    cp = cp + 1;
    ldv_44453: ;
    if ((int )((signed char )*cp) != 0) {
      goto ldv_44452;
    } else {
    }
    goto ldv_44456;
    ldv_44455:
    tmp___3 = cp;
    cp = cp + 1;
    *tmp___3 = 32;
    ldv_44456: ;
    if (((long )cp - (long )tmp) % 81L != 80L) {
      goto ldv_44455;
    } else {
    }
    {
    tmp___4 = cp;
    cp = cp + 1;
    *tmp___4 = 10;
    tmp___5 = hysdn_net_getname(card);
    sprintf(cp, "%d  %3d %4d %4d %3d 0x%04x 0x%08lx %7d %9d %3d   %s", card->myid,
            (int )card->bus, ((int )card->devfn >> 3) & 31, (int )card->brdtype, card->irq,
            card->iobase, card->membase, card->bchans, card->faxchans, card->state,
            tmp___5);
    }
    goto ldv_44459;
    ldv_44458:
    cp = cp + 1;
    ldv_44459: ;
    if ((int )((signed char )*cp) != 0) {
      goto ldv_44458;
    } else {
    }
    goto ldv_44462;
    ldv_44461:
    tmp___6 = cp;
    cp = cp + 1;
    *tmp___6 = 32;
    ldv_44462: ;
    if (((long )cp - (long )tmp) % 81L != 80L) {
      goto ldv_44461;
    } else {
    }
    tmp___7 = cp;
    cp = cp + 1;
    *tmp___7 = 10;
    *cp = 0;
  } else {
    {
    ldv_mutex_unlock_70(& hysdn_conf_mutex);
    }
    return (-1);
  }
  {
  ldv_mutex_unlock_71(& hysdn_conf_mutex);
  tmp___8 = nonseekable_open(ino, filep);
  }
  return (tmp___8);
}
}
static int hysdn_conf_close(struct inode *ino , struct file *filep )
{
  hysdn_card *card ;
  struct conf_writedata *cnf ;
  int retval ;
  void *tmp ;
  {
  {
  retval = 0;
  ldv_mutex_lock_72(& hysdn_conf_mutex);
  tmp = PDE_DATA((struct inode const *)ino);
  card = (hysdn_card *)tmp;
  }
  if ((card->debug_flags & 3145728UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"config close for uid=%d gid=%d mode=0x%x", (filep->f_cred)->fsuid,
                 (filep->f_cred)->fsgid, filep->f_mode);
    }
  } else {
  }
  if ((filep->f_mode & 3U) == 2U) {
    if ((unsigned long )filep->private_data != (unsigned long )((void *)0)) {
      cnf = (struct conf_writedata *)filep->private_data;
      if (cnf->state == 2) {
        {
        retval = pof_write_close(cnf->card);
        }
      } else {
      }
      {
      kfree((void const *)filep->private_data);
      }
    } else {
    }
  } else
  if ((filep->f_mode & 3U) == 1U) {
    {
    kfree((void const *)filep->private_data);
    }
  } else {
  }
  {
  ldv_mutex_unlock_73(& hysdn_conf_mutex);
  }
  return (retval);
}
}
static struct file_operations const conf_fops =
     {& __this_module, & no_llseek, & hysdn_conf_read, & hysdn_conf_write, 0, 0, 0,
    0, 0, 0, 0, & hysdn_conf_open, 0, & hysdn_conf_close, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0};
struct proc_dir_entry *hysdn_proc_entry = (struct proc_dir_entry *)0;
int hysdn_procconf_init(void)
{
  hysdn_card *card ;
  unsigned char conf_name[20U] ;
  void *tmp ;
  struct proc_dir_entry *tmp___0 ;
  {
  {
  hysdn_proc_entry = proc_mkdir("hysdn", init_net.proc_net);
  }
  if ((unsigned long )hysdn_proc_entry == (unsigned long )((struct proc_dir_entry *)0)) {
    {
    printk("\vHYSDN: unable to create hysdn subdir\n");
    }
    return (-1);
  } else {
  }
  card = card_root;
  goto ldv_44479;
  ldv_44478:
  {
  sprintf((char *)(& conf_name), "%s%d", (char *)"cardconf", card->myid);
  tmp___0 = proc_create_data((char const *)(& conf_name), 33188, hysdn_proc_entry,
                             & conf_fops, (void *)card);
  tmp = (void *)tmp___0;
  card->procconf = tmp;
  }
  if ((unsigned long )tmp != (unsigned long )((void *)0)) {
    {
    hysdn_proclog_init(card);
    }
  } else {
  }
  card = card->next;
  ldv_44479: ;
  if ((unsigned long )card != (unsigned long )((hysdn_card *)0)) {
    goto ldv_44478;
  } else {
  }
  {
  printk("\rHYSDN: procfs initialised\n");
  }
  return (0);
}
}
void hysdn_procconf_release(void)
{
  hysdn_card *card ;
  unsigned char conf_name[20U] ;
  {
  card = card_root;
  goto ldv_44487;
  ldv_44486:
  {
  sprintf((char *)(& conf_name), "%s%d", (char *)"cardconf", card->myid);
  }
  if ((unsigned long )card->procconf != (unsigned long )((void *)0)) {
    {
    remove_proc_entry((char const *)(& conf_name), hysdn_proc_entry);
    }
  } else {
  }
  {
  hysdn_proclog_release(card);
  card = card->next;
  }
  ldv_44487: ;
  if ((unsigned long )card != (unsigned long )((hysdn_card *)0)) {
    goto ldv_44486;
  } else {
  }
  {
  remove_proc_entry("hysdn", init_net.proc_net);
  }
  return;
}
}
void *ldv_character_driver_scenario_2(void *arg0 ) ;
void ldv_character_driver_scenario_callback_2_22(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 ) ;
void ldv_character_driver_scenario_callback_2_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 ) ;
int ldv_character_driver_scenario_probe_2_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_write_2_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 ) ;
pthread_t ldv_thread_2 ;
void *ldv_character_driver_scenario_2(void *arg0 )
{
  loff_t (*ldv_2_callback_llseek)(struct file * , loff_t , int ) ;
  gfp_t (*ldv_2_callback_poll)(struct file * , poll_table * ) ;
  ssize_t (*ldv_2_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  struct file_operations *ldv_2_container_file_operations ;
  char *ldv_2_ldv_param_20_1_default ;
  long long *ldv_2_ldv_param_20_3_default ;
  char *ldv_2_ldv_param_22_1_default ;
  long long *ldv_2_ldv_param_22_3_default ;
  char *ldv_2_ldv_param_25_1_default ;
  long long *ldv_2_ldv_param_25_3_default ;
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
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  void *tmp___23 ;
  int tmp___24 ;
  {
  {
  tmp = external_allocated_data();
  ldv_2_callback_llseek = (loff_t (*)(struct file * , loff_t , int ))tmp;
  tmp___0 = external_allocated_data();
  ldv_2_callback_poll = (gfp_t (*)(struct file * , poll_table * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_2_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp___1;
  tmp___2 = external_allocated_data();
  ldv_2_container_file_operations = (struct file_operations *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_2_ldv_param_20_1_default = (char *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_2_ldv_param_20_3_default = (long long *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_2_ldv_param_22_1_default = (char *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_2_ldv_param_22_3_default = (long long *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_2_ldv_param_25_1_default = (char *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_2_ldv_param_25_3_default = (long long *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_2_ldv_param_4_1_default = (char *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_2_ldv_param_4_3_default = (long long *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_2_resource_file = (struct file *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_2_resource_inode = (struct inode *)tmp___12;
  ldv_2_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___13 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_container_file_operations = (struct file_operations *)tmp___13;
  tmp___14 = ldv_xmalloc(520UL);
  ldv_2_resource_file = (struct file *)tmp___14;
  tmp___15 = ldv_xmalloc(1032UL);
  ldv_2_resource_inode = (struct inode *)tmp___15;
  tmp___16 = ldv_undef_int();
  ldv_2_size_cnt_write_size = (size_t )tmp___16;
  }
  goto ldv_main_2;
  return ((void *)0);
  ldv_main_2:
  {
  tmp___18 = ldv_undef_int();
  }
  if (tmp___18 != 0) {
    {
    ldv_2_ret_default = ldv_character_driver_scenario_probe_2_13(ldv_2_container_file_operations->open,
                                                                 ldv_2_resource_inode,
                                                                 ldv_2_resource_file);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___17 = ldv_undef_int();
    }
    if (tmp___17 != 0) {
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
  tmp___19 = ldv_undef_int();
  }
  {
  if (tmp___19 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___19 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___19 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___20 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___20;
  tmp___21 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___21;
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
  tmp___24 = ldv_undef_int();
  }
  if (tmp___24 != 0) {
    {
    tmp___22 = ldv_xmalloc_unknown_size(0UL);
    ldv_2_ldv_param_22_1_default = (char *)tmp___22;
    tmp___23 = ldv_xmalloc_unknown_size(0UL);
    ldv_2_ldv_param_22_3_default = (long long *)tmp___23;
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
  goto ldv_44588;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  ldv_44588: ;
  goto ldv_call_2;
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
  hysdn_conf_read(arg1, arg2, arg3, arg4);
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
  tmp = hysdn_conf_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_character_driver_scenario_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 )
{
  {
  {
  hysdn_conf_close(arg1, arg2);
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
  hysdn_conf_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
static void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_hysdn_conf_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_hysdn_conf_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_hysdn_conf_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_hysdn_conf_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_71(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_hysdn_conf_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_72(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_hysdn_conf_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_hysdn_conf_mutex(ldv_func_arg1);
  }
  return;
}
}
void __builtin_va_end(__builtin_va_list ) ;
void __builtin_va_start(__builtin_va_list ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_hysdn_log_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_hysdn_log_mutex(struct mutex *lock ) ;
extern int kstrtoul_from_user(char const * , size_t , unsigned int , unsigned long * ) ;
extern int vsprintf(char * , char const * , __va_list_tag * ) ;
extern char *strcpy(char * , char const * ) ;
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_67(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_70(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_hysdn_lock_of_HYSDN_CARD(void) ;
void ldv_spin_unlock_hysdn_lock_of_HYSDN_CARD(void) ;
static void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_73___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 ) ;
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
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void interruptible_sleep_on(wait_queue_head_t * ) ;
__inline static struct inode *file_inode(struct file *f )
{
  {
  return (f->f_inode);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_to_user_overflow(void) ;
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
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if ((unsigned long )p != (unsigned long )((poll_table *)0) && ((unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0))) {
    {
    (*(p->_qproc))(filp, wait_address, p);
    }
  } else {
  }
  return;
}
}
void hysdn_card_errlog(hysdn_card *card , tErrLogEntry *logp , int maxsize ) ;
static struct mutex hysdn_log_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "hysdn_log_mutex.wait_lock",
                                                           0, 0UL}}}}, {& hysdn_log_mutex.wait_list,
                                                                        & hysdn_log_mutex.wait_list},
    0, 0, (void *)(& hysdn_log_mutex), {0, {0, 0}, "hysdn_log_mutex", 0, 0UL}};
static void put_log_buffer(hysdn_card *card , char *cp ) ;
void hysdn_card_errlog(hysdn_card *card , tErrLogEntry *logp , int maxsize )
{
  char buf[95U] ;
  {
  {
  sprintf((char *)(& buf), "LOG 0x%08lX 0x%08lX : %s\n", logp->ulErrType, logp->ulErrSubtype,
          (unsigned char *)(& logp->ucText));
  put_log_buffer(card, (char *)(& buf));
  }
  return;
}
}
void hysdn_addlog(hysdn_card *card , char *fmt , ...)
{
  struct procdata *pd ;
  char *cp ;
  va_list args ;
  int tmp ;
  int tmp___0 ;
  char *tmp___1 ;
  {
  pd = (struct procdata *)card->proclog;
  if ((unsigned long )pd == (unsigned long )((struct procdata *)0)) {
    return;
  } else {
  }
  {
  cp = (char *)(& pd->logtmp);
  tmp = sprintf(cp, "HYSDN: card %d ", card->myid);
  cp = cp + (unsigned long )tmp;
  __builtin_va_start((__va_list_tag *)(& args));
  tmp___0 = vsprintf(cp, (char const *)fmt, (__va_list_tag *)(& args));
  cp = cp + (unsigned long )tmp___0;
  __builtin_va_end((__va_list_tag *)(& args));
  tmp___1 = cp;
  cp = cp + 1;
  *tmp___1 = 10;
  *cp = 0;
  }
  if ((card->debug_flags & 2147483648UL) != 0UL) {
    {
    printk("\016%s", (unsigned char *)(& pd->logtmp));
    }
  } else {
    {
    put_log_buffer(card, (char *)(& pd->logtmp));
    }
  }
  return;
}
}
static void put_log_buffer(hysdn_card *card , char *cp )
{
  struct log_data *ib ;
  struct procdata *pd ;
  int i ;
  unsigned long flags ;
  size_t tmp ;
  void *tmp___0 ;
  int volatile tmp___1 ;
  {
  pd = (struct procdata *)card->proclog;
  if ((unsigned long )pd == (unsigned long )((struct procdata *)0)) {
    return;
  } else {
  }
  if ((unsigned long )cp == (unsigned long )((char *)0)) {
    return;
  } else {
  }
  if ((int )((signed char )*cp) == 0) {
    return;
  } else {
  }
  if (pd->if_used <= 0) {
    return;
  } else {
  }
  {
  tmp = strlen((char const *)cp);
  tmp___0 = kmalloc(tmp + 32UL, 32U);
  ib = (struct log_data *)tmp___0;
  }
  if ((unsigned long )ib == (unsigned long )((struct log_data *)0)) {
    return;
  } else {
  }
  {
  strcpy((char *)(& ib->log_start), (char const *)cp);
  ib->next = (struct log_data *)0;
  ib->proc_ctrl = (void *)pd;
  ldv___ldv_spin_lock_67(& card->hysdn_lock);
  ib->usage_cnt = (unsigned long )pd->if_used;
  }
  if ((unsigned long )pd->log_head == (unsigned long )((struct log_data *)0)) {
    pd->log_head = ib;
  } else {
    (pd->log_tail)->next = ib;
  }
  {
  pd->log_tail = ib;
  tmp___1 = pd->del_lock;
  pd->del_lock = pd->del_lock + (int volatile )1;
  i = tmp___1;
  }
  if (i == 0) {
    goto ldv_44462;
    ldv_44461: ;
    if ((pd->log_head)->usage_cnt == 0UL && ((pd->log_head)->next)->usage_cnt == 0UL) {
      {
      ib = pd->log_head;
      pd->log_head = (pd->log_head)->next;
      pd_log_head = ib;
      ldv_assert("", pd_log_head == ib);
      kfree((void const *)ib);
      }
    } else {
      goto ldv_44460;
    }
    ldv_44462: ;
    if ((unsigned long )(pd->log_head)->next != (unsigned long )((struct log_data *)0)) {
      goto ldv_44461;
    } else {
    }
    ldv_44460: ;
  } else {
  }
  {
  pd->del_lock = pd->del_lock - (int volatile )1;
  ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
  __wake_up(& pd->rd_queue, 1U, 1, (void *)0);
  }
  return;
}
}
static ssize_t hysdn_log_write(struct file *file , char const *buf , size_t count ,
                               loff_t *off )
{
  int rc ;
  hysdn_card *card ;
  {
  {
  card = (hysdn_card *)file->private_data;
  rc = kstrtoul_from_user(buf, count, 0U, & card->debug_flags);
  }
  if (rc < 0) {
    return ((ssize_t )rc);
  } else {
  }
  {
  hysdn_addlog(card, (char *)"debug set to 0x%lx", card->debug_flags);
  }
  return ((ssize_t )count);
}
}
static ssize_t hysdn_log_read(struct file *file , char *buf , size_t count , loff_t *off )
{
  struct log_data *inf ;
  int len ;
  hysdn_card *card ;
  struct inode *tmp ;
  void *tmp___0 ;
  struct procdata *pd ;
  unsigned long tmp___1 ;
  size_t tmp___2 ;
  {
  {
  tmp = file_inode(file);
  tmp___0 = PDE_DATA((struct inode const *)tmp);
  card = (hysdn_card *)tmp___0;
  }
  if ((unsigned long )*((struct log_data **)file->private_data) == (unsigned long )((struct log_data *)0)) {
    pd = (struct procdata *)card->proclog;
    if ((file->f_flags & 2048U) != 0U) {
      return (-11L);
    } else {
    }
    {
    interruptible_sleep_on(& pd->rd_queue);
    }
  } else {
  }
  inf = *((struct log_data **)file->private_data);
  if ((unsigned long )inf == (unsigned long )((struct log_data *)0)) {
    return (0L);
  } else {
  }
  {
  inf->usage_cnt = inf->usage_cnt - 1UL;
  file->private_data = (void *)(& inf->next);
  tmp___2 = strlen((char const *)(& inf->log_start));
  len = (int )tmp___2;
  }
  if ((size_t )len <= count) {
    {
    tmp___1 = copy_to_user((void *)buf, (void const *)(& inf->log_start), (unsigned long )len);
    }
    if (tmp___1 != 0UL) {
      return (-14L);
    } else {
    }
    *off = *off + (loff_t )len;
    return ((ssize_t )len);
  } else {
  }
  return (0L);
}
}
static int hysdn_log_open(struct inode *ino , struct file *filep )
{
  hysdn_card *card ;
  void *tmp ;
  struct procdata *pd ;
  unsigned long flags ;
  int tmp___0 ;
  {
  {
  tmp = PDE_DATA((struct inode const *)ino);
  card = (hysdn_card *)tmp;
  ldv_mutex_lock_69(& hysdn_log_mutex);
  }
  if ((filep->f_mode & 3U) == 2U) {
    filep->private_data = (void *)card;
  } else
  if ((filep->f_mode & 3U) == 1U) {
    {
    pd = (struct procdata *)card->proclog;
    ldv___ldv_spin_lock_70(& card->hysdn_lock);
    pd->if_used = pd->if_used + 1;
    }
    if ((unsigned long )pd->log_head != (unsigned long )((struct log_data *)0)) {
      filep->private_data = (void *)(& (pd->log_tail)->next);
    } else {
      filep->private_data = (void *)(& pd->log_head);
    }
    {
    ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
    }
  } else {
    {
    ldv_mutex_unlock_72(& hysdn_log_mutex);
    }
    return (-1);
  }
  {
  ldv_mutex_unlock_73___0(& hysdn_log_mutex);
  tmp___0 = nonseekable_open(ino, filep);
  }
  return (tmp___0);
}
}
static int hysdn_log_close(struct inode *ino , struct file *filep )
{
  struct log_data *inf ;
  struct procdata *pd ;
  hysdn_card *card ;
  int retval ;
  struct inode *tmp ;
  void *tmp___0 ;
  {
  {
  retval = 0;
  ldv_mutex_lock_74(& hysdn_log_mutex);
  }
  if ((filep->f_mode & 3U) == 2U) {
    retval = 0;
  } else {
    inf = *((struct log_data **)filep->private_data);
    if ((unsigned long )inf != (unsigned long )((struct log_data *)0)) {
      pd = (struct procdata *)inf->proc_ctrl;
    } else {
      {
      tmp = file_inode(filep);
      tmp___0 = PDE_DATA((struct inode const *)tmp);
      card = (hysdn_card *)tmp___0;
      pd = (struct procdata *)card->proclog;
      }
    }
    if ((unsigned long )pd != (unsigned long )((struct procdata *)0)) {
      pd->if_used = pd->if_used - 1;
    } else {
    }
    goto ldv_44497;
    ldv_44496:
    inf->usage_cnt = inf->usage_cnt - 1UL;
    inf = inf->next;
    ldv_44497: ;
    if ((unsigned long )inf != (unsigned long )((struct log_data *)0)) {
      goto ldv_44496;
    } else {
    }
    if ((unsigned long )pd != (unsigned long )((struct procdata *)0)) {
      if (pd->if_used <= 0) {
        goto ldv_44500;
        ldv_44499:
        {
        inf = pd->log_head;
        pd->log_head = (pd->log_head)->next;
        kfree((void const *)inf);
        }
        ldv_44500: ;
        if ((unsigned long )pd->log_head != (unsigned long )((struct log_data *)0)) {
          goto ldv_44499;
        } else {
        }
      } else {
      }
    } else {
    }
  }
  {
  ldv_mutex_unlock_75(& hysdn_log_mutex);
  }
  return (retval);
}
}
static unsigned int hysdn_log_poll(struct file *file , poll_table *wait )
{
  unsigned int mask ;
  hysdn_card *card ;
  struct inode *tmp ;
  void *tmp___0 ;
  struct procdata *pd ;
  {
  {
  mask = 0U;
  tmp = file_inode(file);
  tmp___0 = PDE_DATA((struct inode const *)tmp);
  card = (hysdn_card *)tmp___0;
  pd = (struct procdata *)card->proclog;
  }
  if ((file->f_mode & 3U) == 2U) {
    return (mask);
  } else {
  }
  {
  poll_wait(file, & pd->rd_queue, wait);
  }
  if ((unsigned long )*((struct log_data **)file->private_data) != (unsigned long )((struct log_data *)0)) {
    mask = mask | 65U;
  } else {
  }
  return (mask);
}
}
static struct file_operations const log_fops =
     {& __this_module, & no_llseek, & hysdn_log_read, & hysdn_log_write, 0, 0, 0, & hysdn_log_poll,
    0, 0, 0, & hysdn_log_open, 0, & hysdn_log_close, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
int hysdn_proclog_init(hysdn_card *card )
{
  struct procdata *pd ;
  struct lock_class_key __key ;
  void *tmp ;
  {
  {
  tmp = kzalloc(256UL, 208U);
  pd = (struct procdata *)tmp;
  }
  if ((unsigned long )pd != (unsigned long )((struct procdata *)0)) {
    {
    sprintf((char *)(& pd->log_name), "%s%d", (char *)"cardlog", card->myid);
    pd->log = proc_create_data((char const *)(& pd->log_name), 33188, hysdn_proc_entry,
                               & log_fops, (void *)card);
    __init_waitqueue_head(& pd->rd_queue, "&(pd->rd_queue)", & __key);
    card->proclog = (void *)pd;
    }
  } else {
  }
  return (0);
}
}
void hysdn_proclog_release(hysdn_card *card )
{
  struct procdata *pd ;
  {
  pd = (struct procdata *)card->proclog;
  if ((unsigned long )pd != (unsigned long )((struct procdata *)0)) {
    if ((unsigned long )pd->log != (unsigned long )((struct proc_dir_entry *)0)) {
      {
      remove_proc_entry((char const *)(& pd->log_name), hysdn_proc_entry);
      }
    } else {
    }
    {
    kfree((void const *)pd);
    card->proclog = (void *)0;
    }
  } else {
  }
  return;
}
}
void *ldv_character_driver_scenario_4(void *arg0 ) ;
void ldv_character_driver_scenario_callback_4_22(gfp_t (*arg0)(struct file * , poll_table * ) ,
                                                 struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_character_driver_scenario_callback_4_25(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 ) ;
void ldv_character_driver_scenario_callback_4_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 ) ;
int ldv_character_driver_scenario_probe_4_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_write_4_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 ) ;
pthread_t ldv_thread_4 ;
void *ldv_character_driver_scenario_4(void *arg0 )
{
  loff_t (*ldv_4_callback_llseek)(struct file * , loff_t , int ) ;
  gfp_t (*ldv_4_callback_poll)(struct file * , poll_table * ) ;
  ssize_t (*ldv_4_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  struct file_operations *ldv_4_container_file_operations ;
  char *ldv_4_ldv_param_20_1_default ;
  long long *ldv_4_ldv_param_20_3_default ;
  struct poll_table_struct *ldv_4_ldv_param_22_1_default ;
  long long *ldv_4_ldv_param_22_3_default ;
  char *ldv_4_ldv_param_25_1_default ;
  long long *ldv_4_ldv_param_25_3_default ;
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
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  int tmp___22 ;
  void *tmp___23 ;
  void *tmp___24 ;
  void *tmp___25 ;
  {
  {
  tmp = external_allocated_data();
  ldv_4_callback_llseek = (loff_t (*)(struct file * , loff_t , int ))tmp;
  tmp___0 = external_allocated_data();
  ldv_4_callback_poll = (gfp_t (*)(struct file * , poll_table * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_4_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp___1;
  tmp___2 = external_allocated_data();
  ldv_4_container_file_operations = (struct file_operations *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_4_ldv_param_20_1_default = (char *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_4_ldv_param_20_3_default = (long long *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_4_ldv_param_22_1_default = (struct poll_table_struct *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_4_ldv_param_22_3_default = (long long *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_4_ldv_param_25_1_default = (char *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_4_ldv_param_25_3_default = (long long *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_4_ldv_param_4_1_default = (char *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_4_ldv_param_4_3_default = (long long *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_4_resource_file = (struct file *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_4_resource_inode = (struct inode *)tmp___12;
  ldv_4_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___13 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_container_file_operations = (struct file_operations *)tmp___13;
  tmp___14 = ldv_xmalloc(520UL);
  ldv_4_resource_file = (struct file *)tmp___14;
  tmp___15 = ldv_xmalloc(1032UL);
  ldv_4_resource_inode = (struct inode *)tmp___15;
  tmp___16 = ldv_undef_int();
  ldv_4_size_cnt_write_size = (size_t )tmp___16;
  }
  goto ldv_main_4;
  return ((void *)0);
  ldv_main_4:
  {
  tmp___18 = ldv_undef_int();
  }
  if (tmp___18 != 0) {
    {
    ldv_4_ret_default = ldv_character_driver_scenario_probe_4_13(ldv_4_container_file_operations->open,
                                                                 ldv_4_resource_inode,
                                                                 ldv_4_resource_file);
    ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
    tmp___17 = ldv_undef_int();
    }
    if (tmp___17 != 0) {
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
  tmp___19 = ldv_undef_int();
  }
  {
  if (tmp___19 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___19 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___19 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___20 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_4_1_default = (char *)tmp___20;
  tmp___21 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_4_3_default = (long long *)tmp___21;
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
  tmp___22 = ldv_undef_int();
  }
  {
  if (tmp___22 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___22 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___22 == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  tmp___23 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_25_1_default = (char *)tmp___23;
  tmp___24 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_25_3_default = (long long *)tmp___24;
  ldv_character_driver_scenario_callback_4_25(ldv_4_callback_read, ldv_4_resource_file,
                                              ldv_4_ldv_param_25_1_default, ldv_4_size_cnt_write_size,
                                              ldv_4_ldv_param_25_3_default);
  ldv_free((void *)ldv_4_ldv_param_25_1_default);
  ldv_free((void *)ldv_4_ldv_param_25_3_default);
  }
  goto ldv_44633;
  case_2___0:
  {
  tmp___25 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_22_1_default = (struct poll_table_struct *)tmp___25;
  ldv_character_driver_scenario_callback_4_22(ldv_4_callback_poll, ldv_4_resource_file,
                                              ldv_4_ldv_param_22_1_default);
  ldv_free((void *)ldv_4_ldv_param_22_1_default);
  }
  goto ldv_44633;
  case_3___0:
  {
  ldv_character_driver_scenario_callback_4_5(ldv_4_callback_llseek, ldv_4_resource_file,
                                             ldv_4_ldv_param_5_1_default, ldv_4_ldv_param_5_2_default);
  }
  goto ldv_44633;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break___0: ;
  }
  ldv_44633: ;
  goto ldv_44637;
  switch_default___0:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  ldv_44637: ;
  goto ldv_call_4;
  return ((void *)0);
}
}
void ldv_character_driver_scenario_callback_2_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 )
{
  {
  {
  no_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_4_22(gfp_t (*arg0)(struct file * , poll_table * ) ,
                                                 struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  hysdn_log_poll(arg1, arg2);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_4_25(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 )
{
  {
  {
  hysdn_log_read(arg1, arg2, arg3, arg4);
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
  no_llseek(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_character_driver_scenario_probe_4_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = hysdn_log_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_character_driver_scenario_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 )
{
  {
  {
  hysdn_log_close(arg1, arg2);
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
  hysdn_log_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
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
static void ldv___ldv_spin_lock_67(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_hysdn_lock_of_HYSDN_CARD();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_hysdn_lock_of_HYSDN_CARD();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_hysdn_log_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_70(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_hysdn_lock_of_HYSDN_CARD();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_hysdn_log_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_73___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_hysdn_log_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_hysdn_log_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_hysdn_log_mutex(ldv_func_arg1);
  }
  return;
}
}
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
static void ldv___ldv_spin_lock_67___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_70___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_73(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_75(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_78(spinlock_t *ldv_func_arg1 ) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
int ldv_undef_int_negative(void) ;
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
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
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
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work(system_wq, work);
  }
  return (tmp);
}
}
extern struct resource ioport_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  {
  tmp = ioremap_nocache(offset, size);
  }
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
extern unsigned long msleep_interruptible(unsigned int ) ;
__inline static int ldv_request_irq_81(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
static void ldv_free_irq_80(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
int ergo_inithardware(hysdn_card *card ) ;
int EvalSysrTokData(hysdn_card *card , unsigned char *cp , int len ) ;
int hysdn_sched_tx(hysdn_card *card , unsigned char *buf , unsigned short volatile *len ,
                   unsigned short volatile *chan , unsigned short maxlen ) ;
int hysdn_sched_rx(hysdn_card *card , unsigned char *buf , unsigned short len , unsigned short chan ) ;
unsigned int hynet_enable ;
int hysdn_net_create(hysdn_card *card ) ;
int hysdn_net_release(hysdn_card *card ) ;
int hycapi_capi_create(hysdn_card *card ) ;
int hycapi_capi_stop(hysdn_card *card ) ;
static irqreturn_t ergo_interrupt(int intno , void *dev_id )
{
  hysdn_card *card ;
  tErgDpram *dpr ;
  unsigned long flags ;
  unsigned char volatile b ;
  unsigned char tmp ;
  {
  card = (hysdn_card *)dev_id;
  if ((unsigned long )card == (unsigned long )((hysdn_card *)0)) {
    return (0);
  } else {
  }
  if ((unsigned int )((unsigned char )card->irq_enabled) == 0U) {
    return (0);
  } else {
  }
  {
  ldv___ldv_spin_lock_67___0(& card->hysdn_lock);
  tmp = inb((int )(card->iobase + 76U));
  }
  if (((int )tmp & 4) == 0) {
    {
    ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
    }
    return (0);
  } else {
  }
  dpr = (tErgDpram *)card->dpram;
  b = dpr->ToPcInt;
  b = (unsigned char volatile )((int )((unsigned char )b) | (int )dpr->ToPcIntMetro);
  b = (unsigned char volatile )((int )((unsigned char )b) | (int )dpr->ToHyInt);
  if ((unsigned int )((unsigned char )card->hw_lock) == 0U) {
    {
    schedule_work(& card->irq_queue);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
  }
  return (1);
}
}
static void ergo_irq_bh(struct work_struct *ugli_api )
{
  hysdn_card *card ;
  struct work_struct const *__mptr ;
  tErgDpram *dpr ;
  int again ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct work_struct const *)ugli_api;
  card = (hysdn_card *)(__mptr + 0xffffffffffffff80UL);
  if (card->state != 3) {
    return;
  } else {
  }
  {
  dpr = (tErgDpram *)card->dpram;
  ldv___ldv_spin_lock_70___0(& card->hysdn_lock);
  }
  if ((unsigned int )((unsigned char )card->hw_lock) != 0U) {
    {
    ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
    }
    return;
  } else {
  }
  card->hw_lock = 1U;
  ldv_43726:
  again = 0;
  if ((unsigned int )((unsigned char )dpr->ToHyFlag) == 0U) {
    {
    tmp = hysdn_sched_tx(card, (unsigned char *)(& dpr->ToHyBuf), & dpr->ToHySize,
                         & dpr->ToHyChannel, 3584);
    }
    if (tmp != 0) {
      dpr->ToHyFlag = 1U;
      again = 1;
    } else {
    }
  } else {
  }
  if ((unsigned int )((unsigned char )dpr->ToPcFlag) != 0U) {
    {
    tmp___0 = hysdn_sched_rx(card, (unsigned char *)(& dpr->ToPcBuf), (int )dpr->ToPcSize,
                             (int )dpr->ToPcChannel);
    }
    if (tmp___0 != 0) {
      dpr->ToPcFlag = 0U;
      again = 1;
    } else {
    }
  } else {
  }
  if (again != 0) {
    dpr->ToHyInt = 1U;
    dpr->ToPcInt = 1U;
  } else {
    card->hw_lock = 0U;
  }
  if (again != 0) {
    goto ldv_43726;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
  }
  return;
}
}
static void ergo_stopcard(hysdn_card *card )
{
  unsigned long flags ;
  unsigned char val ;
  {
  {
  hysdn_net_release(card);
  hycapi_capi_stop(card);
  ldv___ldv_spin_lock_73(& card->hysdn_lock);
  val = inb((int )(card->iobase + 76U));
  val = (unsigned int )val & 190U;
  outb((int )val, (int )(card->iobase + 76U));
  card->irq_enabled = 0U;
  outb(4, (int )(card->iobase + 81U));
  card->state = 0;
  card->err_log_state = 0U;
  ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
  }
  return;
}
}
static void ergo_set_errlog_state(hysdn_card *card , int on )
{
  unsigned long flags ;
  {
  if (card->state != 3) {
    card->err_log_state = 0U;
    return;
  } else {
  }
  {
  ldv___ldv_spin_lock_75(& card->hysdn_lock);
  }
  if (((unsigned int )card->err_log_state == 0U && on == 0) || ((unsigned int )card->err_log_state == 1U && on != 0)) {
    {
    ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
    }
    return;
  } else {
  }
  if (on != 0) {
    card->err_log_state = 2U;
  } else {
    card->err_log_state = 3U;
  }
  {
  ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
  schedule_work(& card->irq_queue);
  }
  return;
}
}
static char const TestText[36U] =
  { 'T', 'h', 'i', 's',
        ' ', 'M', 'e', 's',
        's', 'a', 'g', 'e',
        ' ', 'i', 's', ' ',
        'f', 'i', 'l', 'l',
        'e', 'r', ',', ' ',
        'w', 'h', 'y', ' ',
        'r', 'e', 'a', 'd',
        ' ', 'i', 't', '\000'};
static int ergo_testram(hysdn_card *card )
{
  tErgDpram *dpr ;
  int tmp ;
  int tmp___0 ;
  {
  {
  dpr = (tErgDpram *)card->dpram;
  memset((void *)(& dpr->TrapTable), 0, 496UL);
  dpr->ToHyInt = 1U;
  memcpy((void *)(& dpr->ToHyBuf + 3548U), (void const *)(& TestText), 36UL);
  tmp = memcmp((void const *)(& dpr->ToHyBuf + 3548U), (void const *)(& TestText),
               36UL);
  }
  if (tmp != 0) {
    return (-1);
  } else {
  }
  {
  memcpy((void *)(& dpr->ToPcBuf + 3548U), (void const *)(& TestText), 36UL);
  tmp___0 = memcmp((void const *)(& dpr->ToPcBuf + 3548U), (void const *)(& TestText),
                   36UL);
  }
  if (tmp___0 != 0) {
    return (-1);
  } else {
  }
  return (0);
}
}
static int ergo_writebootimg(struct HYSDN_CARD *card , unsigned char *buf , unsigned long offs )
{
  unsigned char *dst ;
  tErgDpram *dpram ;
  int cnt ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  {
  cnt = 1024;
  if ((card->debug_flags & 128UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"ERGO: write bootldr offs=0x%lx ", offs);
    }
  } else {
  }
  dst = (unsigned char *)card->dpram;
  dst = dst + (offs + 4096UL);
  goto ldv_43752;
  ldv_43751:
  tmp = dst;
  dst = dst + 1;
  *tmp = *(buf + 1UL);
  tmp___0 = dst;
  dst = dst + 1;
  *tmp___0 = *buf;
  dst = dst + 2UL;
  buf = buf + 2UL;
  ldv_43752:
  tmp___1 = cnt;
  cnt = cnt - 1;
  if (tmp___1 != 0) {
    goto ldv_43751;
  } else {
  }
  if (offs != 0UL) {
    {
    memset(card->dpram, 0, 4096UL);
    dpram = (tErgDpram *)card->dpram;
    dpram->ToHyNoDpramErrLog = 255U;
    }
    goto ldv_43755;
    ldv_43754: ;
    ldv_43755: ;
    if ((unsigned int )((unsigned char )dpram->ToHyNoDpramErrLog) == 0U) {
      goto ldv_43754;
    } else {
    }
    {
    outb(12, (int )(card->iobase + 81U));
    msleep_interruptible(20U);
    }
    if ((unsigned int )((tDpramBootSpooler *)card->dpram)->Len != 32U) {
      if ((card->debug_flags & 128UL) != 0UL) {
        {
        hysdn_addlog(card, (char *)"ERGO: write bootldr no answer");
        }
      } else {
      }
      return (-1005);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int ergo_writebootseq(struct HYSDN_CARD *card , unsigned char *buf , int len )
{
  tDpramBootSpooler *sp ;
  unsigned char *dst ;
  unsigned char buflen ;
  int nr_write ;
  unsigned char tmp_rdptr ;
  unsigned char wr_mirror ;
  int i ;
  unsigned char *tmp ;
  int tmp___0 ;
  {
  sp = (tDpramBootSpooler *)card->dpram;
  if ((card->debug_flags & 128UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"ERGO: write boot seq len=%d ", len);
    }
  } else {
  }
  dst = (unsigned char *)(& sp->Data);
  buflen = sp->Len;
  wr_mirror = sp->WrPtr;
  i = 4096;
  goto ldv_43771;
  ldv_43775: ;
  ldv_43769:
  tmp_rdptr = sp->RdPtr;
  i = i - 1;
  if (i != 0 && (int )tmp_rdptr != (int )((unsigned char )sp->RdPtr)) {
    goto ldv_43769;
  } else {
  }
  if (i == 0) {
    if ((card->debug_flags & 128UL) != 0UL) {
      {
      hysdn_addlog(card, (char *)"ERGO: write boot seq timeout");
      }
    } else {
    }
    return (-1006);
  } else {
  }
  nr_write = ((int )tmp_rdptr - (int )wr_mirror) + -1;
  if (nr_write < 0) {
    nr_write = nr_write + (int )buflen;
  } else {
  }
  if (nr_write == 0) {
    goto ldv_43771;
  } else {
  }
  if (nr_write > len) {
    nr_write = len;
  } else {
  }
  i = 4096;
  len = len - nr_write;
  goto ldv_43773;
  ldv_43772:
  tmp = buf;
  buf = buf + 1;
  *(dst + (unsigned long )wr_mirror) = *tmp;
  wr_mirror = (unsigned char )((int )wr_mirror + 1);
  if ((int )wr_mirror >= (int )buflen) {
    wr_mirror = 0U;
  } else {
  }
  sp->WrPtr = wr_mirror;
  ldv_43773:
  tmp___0 = nr_write;
  nr_write = nr_write - 1;
  if (tmp___0 != 0) {
    goto ldv_43772;
  } else {
  }
  ldv_43771: ;
  if (len != 0) {
    goto ldv_43775;
  } else {
  }
  return (0);
}
}
static int ergo_waitpofready(struct HYSDN_CARD *card )
{
  tErgDpram *dpr ;
  int timecnt ;
  unsigned long flags ;
  int msg_size ;
  int i ;
  int tmp ;
  unsigned char tmp___0 ;
  int tmp___1 ;
  {
  dpr = (tErgDpram *)card->dpram;
  timecnt = 200;
  if ((card->debug_flags & 128UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"ERGO: waiting for pof ready");
    }
  } else {
  }
  goto ldv_43787;
  ldv_43786: ;
  if ((unsigned int )((unsigned char )dpr->ToPcFlag) != 0U) {
    if ((((unsigned int )((unsigned short )dpr->ToPcChannel) != 1U || (unsigned int )((unsigned short )dpr->ToPcSize) <= 3U) || (unsigned int )((unsigned short )dpr->ToPcSize) > 259U) || *((unsigned long *)(& dpr->ToPcBuf)) != 1381194067UL) {
      goto ldv_43785;
    } else {
    }
    msg_size = (int )dpr->ToPcSize + -4;
    if (msg_size > 0) {
      {
      tmp = EvalSysrTokData(card, (unsigned char *)(& dpr->ToPcBuf + 4UL), msg_size);
      }
      if (tmp != 0) {
        goto ldv_43785;
      } else {
      }
    } else {
    }
    if ((card->debug_flags & 32UL) != 0UL) {
      {
      hysdn_addlog(card, (char *)"ERGO: pof boot success");
      }
    } else {
    }
    {
    ldv___ldv_spin_lock_78(& card->hysdn_lock);
    card->state = 3;
    tmp___0 = inb((int )(card->iobase + 76U));
    outb((int )((unsigned int )tmp___0 | 65U), (int )(card->iobase + 76U));
    card->irq_enabled = 1U;
    dpr->ToPcFlag = 0U;
    dpr->ToHyInt = 1U;
    dpr->ToPcInt = 1U;
    ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
    }
    if ((hynet_enable & (unsigned int )(1 << card->myid)) != 0U) {
      {
      i = hysdn_net_create(card);
      }
      if (i != 0) {
        {
        ergo_stopcard(card);
        card->state = 2;
        }
        return (i);
      } else {
      }
    } else {
    }
    {
    i = hycapi_capi_create(card);
    }
    if (i != 0) {
      {
      printk("\fHYSDN: failed to create capi-interface.\n");
      }
    } else {
    }
    return (0);
  } else {
  }
  {
  msleep_interruptible(50U);
  }
  ldv_43787:
  tmp___1 = timecnt;
  timecnt = timecnt - 1;
  if (tmp___1 != 0) {
    goto ldv_43786;
  } else {
  }
  ldv_43785: ;
  if ((card->debug_flags & 128UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"ERGO: pof boot ready timeout");
    }
  } else {
  }
  return (-1007);
}
}
static void ergo_releasehardware(hysdn_card *card )
{
  {
  {
  ergo_stopcard(card);
  ldv_free_irq_80(card->irq, (void *)card);
  __release_region(& ioport_resource, (resource_size_t )(card->iobase + 76U), 1ULL);
  __release_region(& ioport_resource, (resource_size_t )(card->iobase + 81U), 1ULL);
  iounmap((void volatile *)card->dpram);
  card->dpram = (void *)0;
  }
  return;
}
}
int ergo_inithardware(hysdn_card *card )
{
  struct resource *tmp ;
  struct resource *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  {
  tmp = __request_region(& ioport_resource, (resource_size_t )(card->iobase + 76U),
                         1ULL, "HYSDN", 0);
  }
  if ((unsigned long )tmp == (unsigned long )((struct resource *)0)) {
    return (-1);
  } else {
  }
  {
  tmp___0 = __request_region(& ioport_resource, (resource_size_t )(card->iobase + 81U),
                             1ULL, "HYSDN", 0);
  }
  if ((unsigned long )tmp___0 == (unsigned long )((struct resource *)0)) {
    {
    __release_region(& ioport_resource, (resource_size_t )(card->iobase + 76U), 1ULL);
    }
    return (-1);
  } else {
  }
  {
  card->memend = card->membase + 8191UL;
  tmp___1 = ioremap((resource_size_t )card->membase, 8192UL);
  card->dpram = tmp___1;
  }
  if ((unsigned long )tmp___1 == (unsigned long )((void *)0)) {
    {
    __release_region(& ioport_resource, (resource_size_t )(card->iobase + 76U), 1ULL);
    __release_region(& ioport_resource, (resource_size_t )(card->iobase + 81U), 1ULL);
    }
    return (-1);
  } else {
  }
  {
  ergo_stopcard(card);
  tmp___2 = ldv_request_irq_81(card->irq, & ergo_interrupt, 128UL, "HYSDN", (void *)card);
  }
  if (tmp___2 != 0) {
    {
    ergo_releasehardware(card);
    }
    return (-1);
  } else {
  }
  {
  card->stopcard = & ergo_stopcard;
  card->releasehardware = & ergo_releasehardware;
  card->testram = & ergo_testram;
  card->writebootimg = & ergo_writebootimg;
  card->writebootseq = & ergo_writebootseq;
  card->waitpofready = & ergo_waitpofready;
  card->set_errlog_state = & ergo_set_errlog_state;
  __init_work(& card->irq_queue, 0);
  __constr_expr_0.counter = 137438953408L;
  card->irq_queue.data = __constr_expr_0;
  lockdep_init_map(& card->irq_queue.lockdep_map, "(&card->irq_queue)", & __key, 0);
  INIT_LIST_HEAD(& card->irq_queue.entry);
  card->irq_queue.func = & ergo_irq_bh;
  spinlock_check(& card->hysdn_lock);
  __raw_spin_lock_init(& card->hysdn_lock.__annonCompField19.rlock, "&(&card->hysdn_lock)->rlock",
                       & __key___0);
  }
  return (0);
}
}
void ldv_dispatch_irq_deregister_10_1(int arg0 ) ;
void ldv_dispatch_irq_register_13_3(int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                    irqreturn_t (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_emg_free_irq(int arg0 , void *arg1 ) ;
int ldv_emg_request_irq(unsigned int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                        unsigned long arg2 , char *arg3 , void *arg4 ) ;
void *ldv_interrupt_scenario_5(void *arg0 ) ;
enum irqreturn ldv_interrupt_scenario_handler_5_5(irqreturn_t (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
pthread_t ldv_thread_5 ;
void ldv_dispatch_irq_deregister_10_1(int arg0 )
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_5, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_irq_register_13_3(int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                    irqreturn_t (*arg2)(int , void * ) , void *arg3 )
{
  int ret ;
  struct ldv_struct_interrupt_scenario_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_5 = (struct ldv_struct_interrupt_scenario_5 *)tmp;
  cf_arg_5->arg0 = arg0;
  cf_arg_5->arg1 = arg1;
  cf_arg_5->arg2 = arg2;
  cf_arg_5->arg3 = arg3;
  ret = pthread_create(& ldv_thread_5, (pthread_attr_t const *)0, & ldv_interrupt_scenario_5,
                       (void *)cf_arg_5);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_emg_free_irq(int arg0 , void *arg1 )
{
  int ldv_10_line_line ;
  {
  {
  ldv_10_line_line = arg0;
  ldv_dispatch_irq_deregister_10_1(ldv_10_line_line);
  }
  return;
  return;
}
}
int ldv_emg_request_irq(unsigned int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                        unsigned long arg2 , char *arg3 , void *arg4 )
{
  irqreturn_t (*ldv_13_callback_handler)(int , void * ) ;
  void *ldv_13_data_data ;
  int ldv_13_line_line ;
  irqreturn_t (*ldv_13_thread_thread)(int , void * ) ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = external_allocated_data();
  ldv_13_callback_handler = (irqreturn_t (*)(int , void * ))tmp;
  ldv_13_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_13_thread_thread = (irqreturn_t (*)(int , void * ))tmp___0;
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_13_line_line = (int )arg0;
    ldv_13_callback_handler = arg1;
    ldv_13_thread_thread = (irqreturn_t (*)(int , void * ))0;
    ldv_13_data_data = arg4;
    ldv_dispatch_irq_register_13_3(ldv_13_line_line, ldv_13_callback_handler, ldv_13_thread_thread,
                                   ldv_13_data_data);
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
void *ldv_interrupt_scenario_5(void *arg0 )
{
  irqreturn_t (*ldv_5_callback_handler)(int , void * ) ;
  void *ldv_5_data_data ;
  int ldv_5_line_line ;
  enum irqreturn ldv_5_ret_val_default ;
  irqreturn_t (*ldv_5_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_scenario_5 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  data = (struct ldv_struct_interrupt_scenario_5 *)arg0;
  tmp = external_allocated_data();
  ldv_5_callback_handler = (irqreturn_t (*)(int , void * ))tmp;
  ldv_5_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_5_thread_thread = (irqreturn_t (*)(int , void * ))tmp___0;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_scenario_5 *)0)) {
    {
    ldv_5_line_line = data->arg0;
    ldv_5_callback_handler = data->arg1;
    ldv_5_thread_thread = data->arg2;
    ldv_5_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_5_ret_val_default = ldv_interrupt_scenario_handler_5_5(ldv_5_callback_handler,
                                                             ldv_5_line_line, ldv_5_data_data);
  ldv_switch_to_process_context();
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume((unsigned int )ldv_5_ret_val_default == 2U);
    }
  } else {
    {
    __VERIFIER_assume((unsigned int )ldv_5_ret_val_default != 2U);
    }
  }
  return ((void *)0);
  return ((void *)0);
}
}
enum irqreturn ldv_interrupt_scenario_handler_5_5(irqreturn_t (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = ergo_interrupt(arg1, arg2);
  }
  return (tmp);
}
}
static void ldv___ldv_spin_lock_67___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_hysdn_lock_of_HYSDN_CARD();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_70___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_hysdn_lock_of_HYSDN_CARD();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_73(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_hysdn_lock_of_HYSDN_CARD();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_75(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_hysdn_lock_of_HYSDN_CARD();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_78(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_hysdn_lock_of_HYSDN_CARD();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_80(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  ldv_emg_free_irq((int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_81(unsigned int irq , irqreturn_t (*handler)(int ,
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
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
static void StartDecryption(struct boot_data *boot )
{
  {
  boot->Cryptor = 33189U;
  return;
}
}
static void DecryptBuf(struct boot_data *boot , int cnt )
{
  unsigned char *bufp ;
  unsigned char *tmp ;
  int tmp___0 ;
  {
  bufp = (unsigned char *)(& boot->buf.BootBuf);
  goto ldv_43614;
  ldv_43613:
  boot->Cryptor = (unsigned short )((int )((short )((int )boot->Cryptor >> 1)) ^ ((int )boot->Cryptor & 1 ? -32446 : 0));
  tmp = bufp;
  bufp = bufp + 1;
  *tmp = (int )*tmp ^ (int )((unsigned char )boot->Cryptor);
  ldv_43614:
  tmp___0 = cnt;
  cnt = cnt - 1;
  if (tmp___0 != 0) {
    goto ldv_43613;
  } else {
  }
  return;
}
}
static int pof_handle_data(hysdn_card *card , int datlen )
{
  struct boot_data *boot ;
  long l ;
  unsigned char *imgp ;
  int img_len ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  boot = (struct boot_data *)card->boot;
  {
  if ((int )boot->pof_recid == 16) {
    goto case_16;
  } else {
  }
  if ((int )boot->pof_recid == 4353) {
    goto case_4353;
  } else {
  }
  if ((int )boot->pof_recid == 4097) {
    goto case_4097;
  } else {
  }
  if ((int )boot->pof_recid == 4352) {
    goto case_4352;
  } else {
  }
  if ((int )boot->pof_recid == 4096) {
    goto case_4096;
  } else {
  }
  goto switch_default;
  case_16: ;
  if ((card->debug_flags & 32UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF created %s", (unsigned char *)(& boot->buf.PofTime.DateTimeText));
    }
  } else {
  }
  goto ldv_43625;
  case_4353:
  {
  DecryptBuf(boot, datlen);
  }
  case_4097: ;
  if ((card->debug_flags & 32UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF got %s len=%d offs=0x%lx", (unsigned int )boot->pof_recid == 4353U ? (char *)"CBOOTDATA" : (char *)"BOOTDTA",
                 datlen, boot->pof_recoffset);
    }
  } else {
  }
  if (boot->pof_reclen != 32768UL) {
    boot->last_error = 1004;
    return (boot->last_error);
  } else {
  }
  imgp = (unsigned char *)(& boot->buf.BootBuf);
  img_len = datlen;
  l = (long )(14336UL - (boot->pof_recoffset & 16383UL));
  if (l > 0L) {
    imgp = imgp + (unsigned long )l;
    img_len = (int )((unsigned int )img_len - (unsigned int )l);
  } else {
  }
  if (img_len > 0) {
    {
    tmp = (*(card->writebootimg))(card, imgp, boot->pof_recoffset > 16384UL ? 2UL : 0UL);
    boot->last_error = tmp;
    }
    if (tmp < 0) {
      return (boot->last_error);
    } else {
    }
  } else {
  }
  goto ldv_43625;
  case_4352:
  {
  DecryptBuf(boot, datlen);
  }
  case_4096: ;
  if ((card->debug_flags & 32UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF got %s len=%d offs=0x%lx", (unsigned int )boot->pof_recid == 4352U ? (char *)"CABSDATA" : (char *)"ABSDATA",
                 datlen, boot->pof_recoffset);
    }
  } else {
  }
  {
  tmp___0 = (*(card->writebootseq))(card, (unsigned char *)(& boot->buf.BootBuf),
                                    datlen);
  boot->last_error = tmp___0;
  }
  if (tmp___0 < 0) {
    return (boot->last_error);
  } else {
  }
  if (boot->pof_recoffset + (unsigned long )datlen >= boot->pof_reclen) {
    {
    tmp___1 = (*(card->waitpofready))(card);
    }
    return (tmp___1);
  } else {
  }
  goto ldv_43625;
  switch_default: ;
  if ((card->debug_flags & 32UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF got data(id=0x%lx) len=%d offs=0x%lx", (int )boot->pof_recid,
                 datlen, boot->pof_recoffset);
    }
  } else {
  }
  goto ldv_43625;
  switch_break: ;
  }
  ldv_43625: ;
  return (0);
}
}
int pof_write_buffer(hysdn_card *card , int datlen )
{
  struct boot_data *boot ;
  int tmp ;
  {
  boot = (struct boot_data *)card->boot;
  if ((unsigned long )boot == (unsigned long )((struct boot_data *)0)) {
    return (-14);
  } else {
  }
  if (boot->last_error < 0) {
    return (boot->last_error);
  } else {
  }
  if ((card->debug_flags & 64UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF write: got %d bytes ", datlen);
    }
  } else {
  }
  {
  if ((int )boot->pof_state == 0) {
    goto case_0;
  } else {
  }
  if ((int )boot->pof_state == 1) {
    goto case_1;
  } else {
  }
  if ((int )boot->pof_state == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((card->debug_flags & 64UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF write: checking file header");
    }
  } else {
  }
  if (datlen != 16) {
    boot->last_error = -1003;
    goto ldv_43637;
  } else {
  }
  if (boot->buf.PofFileHdr.Magic != 1179602970UL) {
    boot->last_error = -1001;
    goto ldv_43637;
  } else {
  }
  boot->Nrecs = (unsigned short )boot->buf.PofFileHdr.N_PofRecs;
  boot->pof_state = 1U;
  boot->last_error = 10;
  goto ldv_43637;
  case_1: ;
  if ((card->debug_flags & 64UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF write: checking tag header");
    }
  } else {
  }
  if (datlen != 10) {
    boot->last_error = -1003;
    goto ldv_43637;
  } else {
  }
  boot->pof_recid = boot->buf.PofRecHdr.PofRecId;
  boot->pof_reclen = boot->buf.PofRecHdr.PofRecDataLen;
  boot->pof_recoffset = 0UL;
  if ((card->debug_flags & 32UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF: got record id=0x%lx length=%ld ", (int )boot->pof_recid,
                 boot->pof_reclen);
    }
  } else {
  }
  boot->pof_state = 2U;
  if (boot->pof_reclen <= 4095UL) {
    boot->last_error = (int )boot->pof_reclen;
  } else {
    boot->last_error = 4096;
  }
  if (boot->last_error == 0) {
    boot->pof_state = 1U;
    boot->last_error = 10;
  } else {
  }
  goto ldv_43637;
  case_2: ;
  if ((card->debug_flags & 64UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF write: getting tag data");
    }
  } else {
  }
  if (datlen != boot->last_error) {
    boot->last_error = -1003;
    goto ldv_43637;
  } else {
  }
  {
  tmp = pof_handle_data(card, datlen);
  boot->last_error = tmp;
  }
  if (tmp < 0) {
    return (boot->last_error);
  } else {
  }
  boot->pof_recoffset = boot->pof_recoffset + (unsigned long )datlen;
  if (boot->pof_recoffset >= boot->pof_reclen) {
    boot->pof_state = 1U;
    boot->last_error = 10;
  } else
  if (boot->pof_reclen - boot->pof_recoffset <= 4095UL) {
    boot->last_error = (int )((unsigned int )boot->pof_reclen - (unsigned int )boot->pof_recoffset);
  } else {
    boot->last_error = 4096;
  }
  goto ldv_43637;
  switch_default:
  boot->last_error = -1003;
  goto ldv_43637;
  switch_break: ;
  }
  ldv_43637: ;
  return (boot->last_error);
}
}
int pof_write_open(hysdn_card *card , unsigned char **bufp )
{
  struct boot_data *boot ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )card->boot != (unsigned long )((void *)0)) {
    if ((card->debug_flags & 16UL) != 0UL) {
      {
      hysdn_addlog(card, (char *)"POF open: already opened for boot");
      }
    } else {
    }
    return (-1000);
  } else {
  }
  {
  tmp = kzalloc(4136UL, 208U);
  boot = (struct boot_data *)tmp;
  }
  if ((unsigned long )boot == (unsigned long )((struct boot_data *)0)) {
    if ((int )card->debug_flags & 1) {
      {
      hysdn_addlog(card, (char *)"POF open: unable to allocate mem");
      }
    } else {
    }
    return (-14);
  } else {
  }
  {
  card->boot = (void *)boot;
  card->state = 1;
  (*(card->stopcard))(card);
  tmp___0 = (*(card->testram))(card);
  }
  if (tmp___0 != 0) {
    if ((card->debug_flags & 16UL) != 0UL) {
      {
      hysdn_addlog(card, (char *)"POF open: DPRAM test failure");
      }
    } else {
    }
    boot->last_error = -1002;
    card->state = 2;
    return (boot->last_error);
  } else {
  }
  {
  boot->BufSize = 0;
  boot->pof_state = 0U;
  StartDecryption(boot);
  }
  if ((card->debug_flags & 16UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF open: success");
    }
  } else {
  }
  *bufp = (unsigned char *)(& boot->buf.BootBuf);
  return (16);
}
}
int pof_write_close(hysdn_card *card )
{
  struct boot_data *boot ;
  {
  boot = (struct boot_data *)card->boot;
  if ((unsigned long )boot == (unsigned long )((struct boot_data *)0)) {
    return (-14);
  } else {
  }
  {
  card->boot = (void *)0;
  kfree((void const *)boot);
  }
  if (card->state == 3) {
    {
    (*(card->set_errlog_state))(card, 1);
    }
  } else {
  }
  if ((card->debug_flags & 16UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"POF close: success");
    }
  } else {
  }
  return (0);
}
}
int EvalSysrTokData(hysdn_card *card , unsigned char *cp , int len )
{
  u_char *p ;
  u_char crc ;
  {
  if ((card->debug_flags & 32UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"SysReady Token data length %d", len);
    }
  } else {
  }
  if (len <= 1) {
    {
    hysdn_addlog(card, (char *)"SysReady Token Data to short");
    }
    return (1);
  } else {
  }
  p = cp;
  crc = 0U;
  goto ldv_43658;
  ldv_43657: ;
  if ((int )((signed char )crc) < 0) {
    crc = (unsigned int )((int )((u_char )((int )crc << 1U)) + (int )*p) + 1U;
  } else {
    crc = (int )((u_char )((int )crc << 1U)) + (int )*p;
  }
  p = p + 1;
  ldv_43658: ;
  if ((unsigned long )p < (unsigned long )(cp + ((unsigned long )len + 0xfffffffffffffffeUL))) {
    goto ldv_43657;
  } else {
  }
  crc = ~ ((int )crc);
  if ((int )crc != (int )*(cp + ((unsigned long )len + 0xffffffffffffffffUL))) {
    {
    hysdn_addlog(card, (char *)"SysReady Token Data invalid CRC");
    }
    return (1);
  } else {
  }
  len = len - 1;
  goto ldv_43666;
  ldv_43665: ;
  if ((unsigned int )*cp == 0U) {
    return (0);
  } else {
  }
  if (len < (int )*(cp + 1UL) + 2) {
    {
    hysdn_addlog(card, (char *)"token 0x%x invalid length %d", (int )*cp, (int )*(cp + 1UL));
    }
    return (1);
  } else {
  }
  {
  if ((int )*cp == 1) {
    goto case_1;
  } else {
  }
  if ((int )*cp == 2) {
    goto case_2;
  } else {
  }
  if ((int )*cp == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  if ((unsigned int )*(cp + 1UL) != 1U) {
    return (1);
  } else {
  }
  card->bchans = (unsigned int )*(cp + 2UL);
  goto ldv_43661;
  case_2: ;
  if ((unsigned int )*(cp + 1UL) != 1U) {
    return (1);
  } else {
  }
  card->faxchans = (unsigned int )*(cp + 2UL);
  goto ldv_43661;
  case_3: ;
  if ((unsigned int )*(cp + 1UL) != 6U) {
    return (1);
  } else {
  }
  {
  memcpy((void *)(& card->mac_addr), (void const *)(cp + 2U), 6UL);
  }
  goto ldv_43661;
  switch_default:
  {
  hysdn_addlog(card, (char *)"unknown token 0x%02x length %d", (int )*cp, (int )*(cp + 1UL));
  }
  goto ldv_43661;
  switch_break: ;
  }
  ldv_43661:
  len = len + (-2 - (int )*(cp + 1UL));
  cp = cp + ((unsigned long )*(cp + 1UL) + 2UL);
  ldv_43666: ;
  if (len > 0) {
    goto ldv_43665;
  } else {
  }
  {
  hysdn_addlog(card, (char *)"no end token found");
  }
  return (1);
}
}
static void ldv___ldv_spin_lock_67___1(spinlock_t *ldv_func_arg1 ) ;
__inline static void ldv_spin_unlock_irqrestore_68(spinlock_t *lock , unsigned long flags ) ;
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  {
  {
  memcpy(to, (void const *)skb->data, (size_t )len);
  }
  return;
}
}
void hysdn_tx_netack(hysdn_card *card ) ;
struct sk_buff *hysdn_tx_netget(hysdn_card *card ) ;
void hysdn_rx_netpkt(hysdn_card *card , unsigned char *buf , unsigned short len ) ;
unsigned int hycapi_enable ;
void hycapi_rx_capipkt(hysdn_card *card , unsigned char *buf , unsigned short len ) ;
void hycapi_tx_capiack(hysdn_card *card ) ;
struct sk_buff *hycapi_tx_capiget(hysdn_card *card ) ;
int hysdn_sched_rx(hysdn_card *card , unsigned char *buf , unsigned short len , unsigned short chan )
{
  {
  {
  if ((int )chan == 4097) {
    goto case_4097;
  } else {
  }
  if ((int )chan == 5) {
    goto case_5;
  } else {
  }
  if ((int )chan == 100) {
    goto case_100;
  } else {
  }
  goto switch_default;
  case_4097: ;
  if ((hynet_enable & (unsigned int )(1 << card->myid)) != 0U) {
    {
    hysdn_rx_netpkt(card, buf, (int )len);
    }
  } else {
  }
  goto ldv_43596;
  case_5:
  {
  hysdn_card_errlog(card, (tErrLogEntry *)buf, (int )len);
  }
  if ((unsigned int )card->err_log_state == 1U) {
    card->err_log_state = 2U;
  } else {
  }
  goto ldv_43596;
  case_100: ;
  if ((hycapi_enable & (unsigned int )(1 << card->myid)) != 0U) {
    {
    hycapi_rx_capipkt(card, buf, (int )len);
    }
  } else {
  }
  goto ldv_43596;
  switch_default:
  {
  printk("\016irq message channel %d len %d unhandled \n", (int )chan, (int )len);
  }
  goto ldv_43596;
  switch_break: ;
  }
  ldv_43596: ;
  return (1);
}
}
int hysdn_sched_tx(hysdn_card *card , unsigned char *buf , unsigned short volatile *len ,
                   unsigned short volatile *chan , unsigned short maxlen )
{
  struct sk_buff *skb ;
  {
  if ((int )card->net_tx_busy != 0) {
    {
    card->net_tx_busy = 0;
    hysdn_tx_netack(card);
    }
  } else {
  }
  if ((int )card->async_busy != 0) {
    if ((int )((unsigned short )card->async_len) <= (int )maxlen) {
      {
      memcpy((void *)buf, (void const *)(& card->async_data), (size_t )card->async_len);
      *len = card->async_len;
      *chan = card->async_channel;
      card->async_busy = 0;
      }
      return (1);
    } else {
    }
    card->async_busy = 0;
  } else {
  }
  if ((unsigned int )card->err_log_state == 2U && (unsigned int )maxlen > 9U) {
    {
    strcpy((char *)buf, "ERRLOG ON");
    *len = 10U;
    *chan = 5U;
    card->err_log_state = 1U;
    }
    return (1);
  } else {
  }
  if ((unsigned int )card->err_log_state == 3U && (unsigned int )maxlen > 10U) {
    {
    strcpy((char *)buf, "ERRLOG OFF");
    *len = 11U;
    *chan = 5U;
    card->err_log_state = 0U;
    }
    return (1);
  } else {
  }
  if ((hynet_enable & (unsigned int )(1 << card->myid)) != 0U) {
    {
    skb = hysdn_tx_netget(card);
    }
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      if (skb->len <= (unsigned int )maxlen) {
        {
        skb_copy_from_linear_data((struct sk_buff const *)skb, (void *)buf, skb->len);
        *len = (unsigned short volatile )skb->len;
        *chan = 4097U;
        card->net_tx_busy = 1;
        }
        return (1);
      } else {
        {
        hysdn_tx_netack(card);
        }
      }
    } else {
    }
  } else {
  }
  if ((hycapi_enable & (unsigned int )(1 << card->myid)) != 0U) {
    {
    skb = hycapi_tx_capiget(card);
    }
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      if (skb->len <= (unsigned int )maxlen) {
        {
        skb_copy_from_linear_data((struct sk_buff const *)skb, (void *)buf, skb->len);
        *len = (unsigned short volatile )skb->len;
        *chan = 100U;
        hycapi_tx_capiack(card);
        }
        return (1);
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
int hysdn_tx_cfgline(hysdn_card *card , unsigned char *line , unsigned short chan )
{
  int cnt ;
  unsigned long flags ;
  size_t tmp ;
  size_t tmp___0 ;
  {
  cnt = 50;
  if ((card->debug_flags & 4096UL) != 0UL) {
    {
    tmp = strlen((char const *)line);
    hysdn_addlog(card, (char *)"async tx-cfg chan=%d len=%d", (int )chan, tmp + 1UL);
    }
  } else {
  }
  goto ldv_43616;
  ldv_43615: ;
  if ((card->debug_flags & 4096UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"async tx-cfg delayed");
    }
  } else {
  }
  {
  msleep_interruptible(20U);
  cnt = cnt - 1;
  }
  if (cnt == 0) {
    return (-1011);
  } else {
  }
  ldv_43616: ;
  if ((int )card->async_busy != 0) {
    goto ldv_43615;
  } else {
  }
  {
  ldv___ldv_spin_lock_67___1(& card->hysdn_lock);
  strcpy((char *)(& card->async_data), (char const *)line);
  tmp___0 = strlen((char const *)line);
  card->async_len = (unsigned int )((unsigned short volatile )tmp___0) + 1U;
  card->async_channel = chan;
  card->async_busy = 1;
  schedule_work(& card->irq_queue);
  ldv_spin_unlock_irqrestore_68(& card->hysdn_lock, flags);
  }
  if ((card->debug_flags & 4096UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"async tx-cfg data queued");
    }
  } else {
  }
  cnt = cnt + 1;
  goto ldv_43619;
  ldv_43618: ;
  if ((card->debug_flags & 4096UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"async tx-cfg waiting for tx-ready");
    }
  } else {
  }
  {
  msleep_interruptible(20U);
  cnt = cnt - 1;
  }
  if (cnt == 0) {
    return (-1011);
  } else {
  }
  ldv_43619: ;
  if ((int )card->async_busy != 0) {
    goto ldv_43618;
  } else {
  }
  if ((card->debug_flags & 4096UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"async tx-cfg data send");
    }
  } else {
  }
  return (0);
}
}
static void ldv___ldv_spin_lock_67___1(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_hysdn_lock_of_HYSDN_CARD();
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
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
extern void warn_slowpath_null(char const * , int const ) ;
void ldv_spin_lock_lock_of_net_local(void) ;
void ldv_spin_unlock_lock_of_net_local(void) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_67(spinlock_t *lock ) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_68(spinlock_t *lock ) ;
extern unsigned long volatile jiffies ;
extern void consume_skb(struct sk_buff * ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb(dev, length, 32U);
  }
  return (tmp);
}
}
__inline static struct sk_buff *dev_alloc_skb(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = netdev_alloc_skb((struct net_device *)0, length);
  }
  return (tmp);
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)(dev->_tx + (unsigned long )index));
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)(dev + 3200U));
}
}
static void ldv_free_netdev_71(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_73(struct net_device *ldv_func_arg1 ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  }
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = __builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/netdevice.h", 2128);
    }
  } else {
  }
  {
  tmp___0 = __builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    }
    return;
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  }
  return;
}
}
extern int netif_rx(struct sk_buff * ) ;
static int ldv_register_netdev_70(struct net_device *ldv_func_arg1 ) ;
static void ldv_unregister_netdev_72(struct net_device *ldv_func_arg1 ) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_mac_addr(struct net_device * , void * ) ;
extern int eth_change_mtu(struct net_device * , int ) ;
extern int eth_validate_addr(struct net_device * ) ;
static struct net_device *ldv_alloc_etherdev_mqs_69(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 ) ;
unsigned int hynet_enable = 4294967295U;
static int net_open(struct net_device *dev )
{
  struct in_device *in_dev ;
  hysdn_card *card ;
  int i ;
  struct in_ifaddr *ifa ;
  {
  {
  card = (hysdn_card *)dev->__annonCompField74.ml_priv;
  netif_start_queue(dev);
  }
  if ((unsigned int )card->mac_addr[0] == 0U) {
    i = 0;
    goto ldv_45167;
    ldv_45166:
    *(dev->dev_addr + (unsigned long )i) = 252U;
    i = i + 1;
    ldv_45167: ;
    if (i <= 5) {
      goto ldv_45166;
    } else {
    }
    in_dev = dev->ip_ptr;
    if ((unsigned long )in_dev != (unsigned long )((struct in_device *)0)) {
      ifa = in_dev->ifa_list;
      if ((unsigned long )ifa != (unsigned long )((struct in_ifaddr *)0)) {
        {
        memcpy((void *)(dev->dev_addr + 2U), (void const *)(& ifa->ifa_local), 4UL);
        }
      } else {
      }
    } else {
    }
  } else {
    {
    memcpy((void *)dev->dev_addr, (void const *)(& card->mac_addr), 6UL);
    }
  }
  return (0);
}
}
static void flush_tx_buffers(struct net_local *nl )
{
  int tmp ;
  {
  goto ldv_45174;
  ldv_45173:
  {
  tmp = nl->out_idx;
  nl->out_idx = nl->out_idx + 1;
  consume_skb(nl->skbs[tmp]);
  }
  if (nl->out_idx > 19) {
    nl->out_idx = 0;
  } else {
  }
  nl->sk_count = nl->sk_count - 1;
  ldv_45174: ;
  if (nl->sk_count != 0) {
    goto ldv_45173;
  } else {
  }
  return;
}
}
static int net_close(struct net_device *dev )
{
  {
  {
  netif_stop_queue(dev);
  flush_tx_buffers((struct net_local *)dev);
  }
  return (0);
}
}
static netdev_tx_t net_send_packet(struct sk_buff *skb , struct net_device *dev )
{
  struct net_local *lp ;
  int tmp ;
  {
  {
  lp = (struct net_local *)dev;
  ldv_spin_lock_irq_67(& lp->lock);
  tmp = lp->in_idx;
  lp->in_idx = lp->in_idx + 1;
  lp->skbs[tmp] = skb;
  }
  if (lp->in_idx > 19) {
    lp->in_idx = 0;
  } else {
  }
  lp->sk_count = lp->sk_count + 1;
  dev->trans_start = jiffies;
  if (lp->sk_count > 19) {
    {
    netif_stop_queue(dev);
    }
  } else {
  }
  {
  ldv_spin_unlock_irq_68(& lp->lock);
  }
  if (lp->sk_count <= 3) {
    {
    schedule_work(& ((hysdn_card *)dev->__annonCompField74.ml_priv)->irq_queue);
    }
  } else {
  }
  return (0);
}
}
void hysdn_tx_netack(hysdn_card *card )
{
  struct net_local *lp ;
  int tmp ;
  int tmp___0 ;
  {
  lp = (struct net_local *)card->netif;
  if ((unsigned long )lp == (unsigned long )((struct net_local *)0)) {
    return;
  } else {
  }
  if (lp->sk_count == 0) {
    return;
  } else {
  }
  {
  (lp->dev)->stats.tx_packets = (lp->dev)->stats.tx_packets + 1UL;
  (lp->dev)->stats.tx_bytes = (lp->dev)->stats.tx_bytes + (unsigned long )(lp->skbs[lp->out_idx])->len;
  tmp = lp->out_idx;
  lp->out_idx = lp->out_idx + 1;
  consume_skb(lp->skbs[tmp]);
  }
  if (lp->out_idx > 19) {
    lp->out_idx = 0;
  } else {
  }
  tmp___0 = lp->sk_count;
  lp->sk_count = lp->sk_count - 1;
  if (tmp___0 == 20) {
    {
    netif_start_queue((struct net_device *)lp);
    }
  } else {
  }
  return;
}
}
void hysdn_rx_netpkt(hysdn_card *card , unsigned char *buf , unsigned short len )
{
  struct net_local *lp ;
  struct net_device *dev ;
  struct sk_buff *skb ;
  unsigned char *tmp ;
  {
  lp = (struct net_local *)card->netif;
  if ((unsigned long )lp == (unsigned long )((struct net_local *)0)) {
    return;
  } else {
  }
  {
  dev = lp->dev;
  dev->stats.rx_bytes = dev->stats.rx_bytes + (unsigned long )len;
  skb = dev_alloc_skb((unsigned int )len);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("\r%s: Memory squeeze, dropping packet.\n", (char *)(& dev->name));
    dev->stats.rx_dropped = dev->stats.rx_dropped + 1UL;
    }
    return;
  } else {
  }
  {
  tmp = skb_put(skb, (unsigned int )len);
  memcpy((void *)tmp, (void const *)buf, (size_t )len);
  skb->protocol = eth_type_trans(skb, dev);
  dev->stats.rx_packets = dev->stats.rx_packets + 1UL;
  netif_rx(skb);
  }
  return;
}
}
struct sk_buff *hysdn_tx_netget(hysdn_card *card )
{
  struct net_local *lp ;
  {
  lp = (struct net_local *)card->netif;
  if ((unsigned long )lp == (unsigned long )((struct net_local *)0)) {
    return ((struct sk_buff *)0);
  } else {
  }
  if (lp->sk_count == 0) {
    return ((struct sk_buff *)0);
  } else {
  }
  return (lp->skbs[lp->out_idx]);
}
}
static struct net_device_ops const hysdn_netdev_ops =
     {0, 0, & net_open, & net_close, & net_send_packet, 0, 0, 0, & eth_mac_addr, & eth_validate_addr,
    0, 0, & eth_change_mtu, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
int hysdn_net_create(hysdn_card *card )
{
  struct net_device *dev ;
  int i ;
  struct net_local *lp ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  if ((unsigned long )card == (unsigned long )((hysdn_card *)0)) {
    {
    printk("\fNo card-pt in hysdn_net_create!\n");
    }
    return (-12);
  } else {
  }
  {
  hysdn_net_release(card);
  dev = ldv_alloc_etherdev_mqs_69(256, 1U, 1U);
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    {
    printk("\fHYSDN: unable to allocate mem\n");
    }
    return (-12);
  } else {
  }
  {
  tmp = netdev_priv((struct net_device const *)dev);
  lp = (struct net_local *)tmp;
  lp->dev = dev;
  dev->netdev_ops = & hysdn_netdev_ops;
  spinlock_check(& ((struct net_local *)dev)->lock);
  __raw_spin_lock_init(& ((struct net_local *)dev)->lock.__annonCompField19.rlock,
                       "&(&((struct net_local *) dev)->lock)->rlock", & __key);
  dev->base_addr = (unsigned long )card->iobase;
  dev->irq = (int )card->irq;
  dev->netdev_ops = & hysdn_netdev_ops;
  i = ldv_register_netdev_70(dev);
  }
  if (i != 0) {
    {
    printk("\fHYSDN: unable to create network device\n");
    ldv_free_netdev_71(dev);
    }
    return (i);
  } else {
  }
  dev->__annonCompField74.ml_priv = (void *)card;
  card->netif = (void *)dev;
  if ((card->debug_flags & 65536UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"network device created");
    }
  } else {
  }
  return (0);
}
}
int hysdn_net_release(hysdn_card *card )
{
  struct net_device *dev ;
  {
  dev = (struct net_device *)card->netif;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (0);
  } else {
  }
  {
  card->netif = (void *)0;
  net_close(dev);
  flush_tx_buffers((struct net_local *)dev);
  ldv_unregister_netdev_72(dev);
  ldv_free_netdev_73(dev);
  }
  if ((card->debug_flags & 65536UL) != 0UL) {
    {
    hysdn_addlog(card, (char *)"network device deleted");
    }
  } else {
  }
  return (0);
}
}
char *hysdn_net_getname(hysdn_card *card )
{
  struct net_device *dev ;
  {
  dev = (struct net_device *)card->netif;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return ((char *)"-");
  } else {
  }
  return ((char *)(& dev->name));
}
}
extern struct net_device *ldv_emg_alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
extern void ldv_emg_free_netdev(struct net_device * ) ;
extern int ldv_emg_register_netdev(struct net_device * ) ;
extern void ldv_emg_unregister_netdev(struct net_device * ) ;
void ldv_random_allocationless_scenario_callback_6_11(netdev_tx_t (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                      struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_random_allocationless_scenario_callback_6_14(int (*arg0)(struct net_device * ) ,
                                                      struct net_device *arg1 ) ;
void ldv_random_allocationless_scenario_callback_6_3(int (*arg0)(struct net_device * ,
                                                                 int ) , struct net_device *arg1 ,
                                                     int arg2 ) ;
void ldv_random_allocationless_scenario_callback_6_8(int (*arg0)(struct net_device * ,
                                                                 void * ) , struct net_device *arg1 ,
                                                     void *arg2 ) ;
int ldv_register_netdev_open_12_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_14_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
void ldv_random_allocationless_scenario_callback_6_11(netdev_tx_t (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                      struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  net_send_packet(arg1, arg2);
  }
  return;
}
}
void ldv_random_allocationless_scenario_callback_6_14(int (*arg0)(struct net_device * ) ,
                                                      struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_random_allocationless_scenario_callback_6_3(int (*arg0)(struct net_device * ,
                                                                 int ) , struct net_device *arg1 ,
                                                     int arg2 )
{
  {
  {
  eth_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_random_allocationless_scenario_callback_6_8(int (*arg0)(struct net_device * ,
                                                                 void * ) , struct net_device *arg1 ,
                                                     void *arg2 )
{
  {
  {
  eth_mac_addr(arg1, arg2);
  }
  return;
}
}
int ldv_register_netdev_open_12_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = net_open(arg1);
  }
  return (tmp);
}
}
void ldv_unregister_netdev_stop_14_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  net_close(arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_67(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_net_local();
  spin_lock_irq(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_68(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_net_local();
  spin_unlock_irq(lock);
  }
  return;
}
}
static struct net_device *ldv_alloc_etherdev_mqs_69(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 )
{
  struct net_device *tmp ;
  {
  {
  tmp = ldv_emg_alloc_etherdev_mqs(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp);
}
}
static int ldv_register_netdev_70(struct net_device *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_register_netdev(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_free_netdev_71(struct net_device *ldv_func_arg1 )
{
  {
  {
  ldv_emg_free_netdev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_netdev_72(struct net_device *ldv_func_arg1 )
{
  {
  {
  ldv_emg_unregister_netdev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_73(struct net_device *ldv_func_arg1 )
{
  {
  {
  ldv_emg_free_netdev(ldv_func_arg1);
  }
  return;
}
}
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
void ldv_check_final_state(void) ;
static void *ldv_dev_get_drvdata_65(struct device const *dev ) ;
static int ldv_dev_set_drvdata_66(struct device *dev , void *data ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
static int ldv___pci_register_driver_67(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
static void ldv_pci_unregister_driver_68(struct pci_driver *ldv_func_arg1 ) ;
static void ldv_pci_unregister_driver_69(struct pci_driver *ldv_func_arg1 ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_65((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_66(& pdev->dev, data);
  }
  return;
}
}
int hycapi_capi_release(hysdn_card *card ) ;
int hycapi_init(void) ;
void hycapi_cleanup(void) ;
static struct pci_device_id hysdn_pci_tbl[5U] = { {4965U, 36944U, 4294967295U, 263U, 0U, 0U, 5UL},
        {4965U, 36944U, 4294967295U, 264U, 0U, 0U, 6UL},
        {4965U, 36944U, 4294967295U, 262U, 0U, 0U, 4UL},
        {4965U, 36944U, 4294967295U, 260U, 0U, 0U, 4UL}};
struct pci_device_id const __mod_pci_device_table ;
static int cardmax ;
hysdn_card *card_root = (hysdn_card *)0;
static hysdn_card *card_last = (hysdn_card *)0;
static int hysdn_pci_init_one(struct pci_dev *akt_pcidev , struct pci_device_id const *ent )
{
  hysdn_card *card ;
  int rc ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  rc = pci_enable_device(akt_pcidev);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  tmp = kzalloc(632UL, 208U);
  card = (hysdn_card *)tmp;
  }
  if ((unsigned long )card == (unsigned long )((hysdn_card *)0)) {
    {
    printk("\vHYSDN: unable to alloc device mem \n");
    rc = -12;
    }
    goto err_out;
  } else {
  }
  {
  card->myid = cardmax;
  card->bus = (akt_pcidev->bus)->number;
  card->devfn = (unsigned char )akt_pcidev->devfn;
  card->subsysid = akt_pcidev->subsystem_device;
  card->irq = akt_pcidev->irq;
  card->iobase = (unsigned int )akt_pcidev->resource[1].start;
  card->plxbase = (unsigned long )akt_pcidev->resource[0].start;
  card->membase = (unsigned long )akt_pcidev->resource[3].start;
  card->brdtype = 0U;
  card->debug_flags = 2147418127UL;
  card->faxchans = 0U;
  card->bchans = 2U;
  card->brdtype = (unsigned char )ent->driver_data;
  tmp___0 = ergo_inithardware(card);
  }
  if (tmp___0 != 0) {
    {
    printk("\fHYSDN: card at io 0x%04x already in use\n", card->iobase);
    rc = -16;
    }
    goto err_out_card;
  } else {
  }
  cardmax = cardmax + 1;
  card->next = (struct HYSDN_CARD *)0;
  if ((unsigned long )card_last != (unsigned long )((hysdn_card *)0)) {
    card_last->next = card;
  } else {
    card_root = card;
  }
  {
  card_last = card;
  pci_set_drvdata(akt_pcidev, (void *)card);
  }
  return (0);
  err_out_card:
  {
  kfree((void const *)card);
  }
  err_out:
  {
  pci_disable_device(akt_pcidev);
  }
  return (rc);
}
}
static void hysdn_pci_remove_one(struct pci_dev *akt_pcidev )
{
  hysdn_card *card ;
  void *tmp ;
  hysdn_card *tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(akt_pcidev);
  card = (hysdn_card *)tmp;
  pci_set_drvdata(akt_pcidev, (void *)0);
  }
  if ((unsigned long )card->stopcard != (unsigned long )((void (*)(struct HYSDN_CARD * ))0)) {
    {
    (*(card->stopcard))(card);
    }
  } else {
  }
  {
  hycapi_capi_release(card);
  }
  if ((unsigned long )card->releasehardware != (unsigned long )((void (*)(struct HYSDN_CARD * ))0)) {
    {
    (*(card->releasehardware))(card);
    }
  } else {
  }
  if ((unsigned long )card == (unsigned long )card_root) {
    card_root = card_root->next;
    if ((unsigned long )card_root == (unsigned long )((hysdn_card *)0)) {
      card_last = (hysdn_card *)0;
    } else {
    }
  } else {
    tmp___0 = card_root;
    goto ldv_44413;
    ldv_44412: ;
    if ((unsigned long )tmp___0->next == (unsigned long )card) {
      tmp___0->next = card->next;
    } else {
    }
    card_last = tmp___0;
    tmp___0 = tmp___0->next;
    ldv_44413: ;
    if ((unsigned long )tmp___0 != (unsigned long )((hysdn_card *)0)) {
      goto ldv_44412;
    } else {
    }
  }
  {
  kfree((void const *)card);
  pci_disable_device(akt_pcidev);
  }
  return;
}
}
static struct pci_driver hysdn_pci_driver =
     {{0, 0}, "hysdn", (struct pci_device_id const *)(& hysdn_pci_tbl), & hysdn_pci_init_one,
    & hysdn_pci_remove_one, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0,
                                                  0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U,
                                                                         0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                      {0, 0}}};
static int hysdn_have_procfs ;
static int hysdn_init(void)
{
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  {
  printk("\rHYSDN: module loaded\n");
  rc = ldv___pci_register_driver_67(& hysdn_pci_driver, & __this_module, "hysdn");
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  printk("\016HYSDN: %d card(s) found.\n", cardmax);
  tmp = hysdn_procconf_init();
  }
  if (tmp == 0) {
    hysdn_have_procfs = 1;
  } else {
  }
  if (cardmax > 0) {
    {
    tmp___0 = hycapi_init();
    }
    if (tmp___0 != 0) {
      {
      printk("\vHYCAPI: init failed\n");
      }
      if (hysdn_have_procfs != 0) {
        {
        hysdn_procconf_release();
        }
      } else {
      }
      {
      ldv_pci_unregister_driver_68(& hysdn_pci_driver);
      }
      return (-29);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void hysdn_exit(void)
{
  {
  if (hysdn_have_procfs != 0) {
    {
    hysdn_procconf_release();
    }
  } else {
  }
  {
  ldv_pci_unregister_driver_69(& hysdn_pci_driver);
  hycapi_cleanup();
  printk("\rHYSDN: module unloaded\n");
  }
  return;
}
}
void *ldv_character_driver_scenario_3(void *arg0 ) ;
void ldv_dispatch_default_deregister_7_8_3(void) ;
void ldv_dispatch_default_register_7_8_4(void) ;
void ldv_dispatch_deregister_15_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_insmod_deregister_17_2(void) ;
void ldv_dispatch_insmod_register_17_3(void) ;
void ldv_dispatch_register_16_3(struct pci_driver *arg0 ) ;
int ldv_emg___pci_register_driver(struct pci_driver *arg0 , struct module *arg1 ,
                                  char *arg2 ) ;
void ldv_emg_pci_unregister_driver(struct pci_driver *arg0 ) ;
void *ldv_insmod_8(void *arg0 ) ;
void ldv_insmod_hysdn_exit_8_2(void (*arg0)(void) ) ;
int ldv_insmod_hysdn_init_8_9(int (*arg0)(void) ) ;
void *ldv_main_17(void *arg0 ) ;
void *ldv_pci_scenario_7(void *arg0 ) ;
int ldv_pci_scenario_probe_7_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_scenario_release_7_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void *ldv_random_allocationless_scenario_6(void *arg0 ) ;
int main(void) ;
pthread_t ldv_thread_3 ;
pthread_t ldv_thread_6 ;
pthread_t ldv_thread_7 ;
pthread_t ldv_thread_8 ;
void ldv_dispatch_default_deregister_7_8_3(void)
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
  }
  return;
}
}
void ldv_dispatch_default_register_7_8_4(void)
{
  int ret ;
  struct ldv_struct_insmod_8 *cf_arg_2 ;
  struct ldv_struct_insmod_8 *cf_arg_3 ;
  struct ldv_struct_insmod_8 *cf_arg_4 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
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
  }
  return;
}
}
void ldv_dispatch_deregister_15_1(struct pci_driver *arg0 )
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
void ldv_dispatch_insmod_deregister_17_2(void)
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
void ldv_dispatch_insmod_register_17_3(void)
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
void ldv_dispatch_register_16_3(struct pci_driver *arg0 )
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
  struct pci_driver *ldv_16_pci_driver_pci_driver ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_16_pci_driver_pci_driver = (struct pci_driver *)tmp;
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_16_pci_driver_pci_driver = arg0;
    ldv_dispatch_register_16_3(ldv_16_pci_driver_pci_driver);
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
  struct pci_driver *ldv_15_pci_driver_pci_driver ;
  void *tmp ;
  {
  {
  tmp = external_allocated_data();
  ldv_15_pci_driver_pci_driver = (struct pci_driver *)tmp;
  ldv_15_pci_driver_pci_driver = arg0;
  ldv_dispatch_deregister_15_1(ldv_15_pci_driver_pci_driver);
  }
  return;
  return;
}
}
void *ldv_insmod_8(void *arg0 )
{
  void (*ldv_8_hysdn_exit_default)(void) ;
  int (*ldv_8_hysdn_init_default)(void) ;
  int ldv_8_reg_guard_7_default ;
  int ldv_8_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_8_hysdn_exit_default = (void (*)(void))tmp;
  tmp___0 = external_allocated_data();
  ldv_8_hysdn_init_default = (int (*)(void))tmp___0;
  ldv_free(arg0);
  ldv_8_ret_default = ldv_insmod_hysdn_init_8_9(ldv_8_hysdn_init_default);
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
    ldv_8_reg_guard_7_default = ldv_undef_int();
    }
    if (ldv_8_reg_guard_7_default != 0) {
      {
      ldv_dispatch_default_register_7_8_4();
      }
    } else {
    }
    if (ldv_8_reg_guard_7_default != 0) {
      {
      ldv_dispatch_default_deregister_7_8_3();
      }
    } else {
    }
    {
    ldv_insmod_hysdn_exit_8_2(ldv_8_hysdn_exit_default);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
void ldv_insmod_hysdn_exit_8_2(void (*arg0)(void) )
{
  {
  {
  hysdn_exit();
  }
  return;
}
}
int ldv_insmod_hysdn_init_8_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = hysdn_init();
  }
  return (tmp);
}
}
void *ldv_main_17(void *arg0 )
{
  {
  {
  ldv_initialize();
  ldv_dispatch_insmod_register_17_3();
  ldv_dispatch_insmod_deregister_17_2();
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
  tmp = hysdn_pci_init_one(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_scenario_release_7_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  hysdn_pci_remove_one(arg1);
  }
  return;
}
}
void *ldv_random_allocationless_scenario_6(void *arg0 )
{
  int (*ldv_6_callback_ndo_change_mtu)(struct net_device * , int ) ;
  int (*ldv_6_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
  netdev_tx_t (*ldv_6_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
  int (*ldv_6_callback_ndo_validate_addr)(struct net_device * ) ;
  struct net_device *ldv_6_container_net_device ;
  struct sk_buff *ldv_6_ldv_param_11_0_default ;
  int ldv_6_ldv_param_3_1_default ;
  void *ldv_6_ldv_param_8_1_default ;
  struct ldv_struct_random_allocationless_scenario_6 *data ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  {
  {
  data = (struct ldv_struct_random_allocationless_scenario_6 *)arg0;
  tmp = external_allocated_data();
  ldv_6_callback_ndo_change_mtu = (int (*)(struct net_device * , int ))tmp;
  tmp___0 = external_allocated_data();
  ldv_6_callback_ndo_set_mac_address = (int (*)(struct net_device * , void * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_6_callback_ndo_start_xmit = (netdev_tx_t (*)(struct sk_buff * , struct net_device * ))tmp___1;
  tmp___2 = external_allocated_data();
  ldv_6_callback_ndo_validate_addr = (int (*)(struct net_device * ))tmp___2;
  tmp___3 = external_allocated_data();
  ldv_6_container_net_device = (struct net_device *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_6_ldv_param_11_0_default = (struct sk_buff *)tmp___4;
  ldv_6_ldv_param_8_1_default = external_allocated_data();
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_random_allocationless_scenario_6 *)0)) {
    {
    ldv_6_container_net_device = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_6;
  return ((void *)0);
  ldv_call_6:
  {
  tmp___7 = ldv_undef_int();
  }
  if (tmp___7 != 0) {
    {
    tmp___5 = ldv_undef_int();
    }
    {
    if (tmp___5 == 1) {
      goto case_1;
    } else {
    }
    if (tmp___5 == 2) {
      goto case_2;
    } else {
    }
    if (tmp___5 == 3) {
      goto case_3;
    } else {
    }
    if (tmp___5 == 4) {
      goto case_4;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_random_allocationless_scenario_callback_6_14(ldv_6_callback_ndo_validate_addr,
                                                     ldv_6_container_net_device);
    }
    goto ldv_44662;
    case_2:
    {
    tmp___6 = ldv_xmalloc_unknown_size(0UL);
    ldv_6_ldv_param_11_0_default = (struct sk_buff *)tmp___6;
    ldv_random_allocationless_scenario_callback_6_11(ldv_6_callback_ndo_start_xmit,
                                                     ldv_6_ldv_param_11_0_default,
                                                     ldv_6_container_net_device);
    ldv_free((void *)ldv_6_ldv_param_11_0_default);
    }
    goto ldv_44662;
    case_3:
    {
    ldv_6_ldv_param_8_1_default = ldv_xmalloc_unknown_size(0UL);
    ldv_random_allocationless_scenario_callback_6_8(ldv_6_callback_ndo_set_mac_address,
                                                    ldv_6_container_net_device, ldv_6_ldv_param_8_1_default);
    ldv_free(ldv_6_ldv_param_8_1_default);
    }
    goto ldv_44662;
    case_4:
    {
    ldv_random_allocationless_scenario_callback_6_3(ldv_6_callback_ndo_change_mtu,
                                                    ldv_6_container_net_device, ldv_6_ldv_param_3_1_default);
    }
    goto ldv_44662;
    switch_default:
    {
    __VERIFIER_assume(0);
    }
    switch_break: ;
    }
    ldv_44662: ;
    goto ldv_call_6;
  } else {
    return ((void *)0);
  }
  return ((void *)0);
}
}
int main(void)
{
  {
  {
  ldv_main_17((void *)0);
  }
  return (0);
}
}
static void *ldv_dev_get_drvdata_65(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_66(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static int ldv___pci_register_driver_67(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
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
static void ldv_pci_unregister_driver_68(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  ldv_emg_pci_unregister_driver(ldv_func_arg1);
  }
  return;
}
}
static void ldv_pci_unregister_driver_69(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  ldv_emg_pci_unregister_driver(ldv_func_arg1);
  }
  return;
}
}
void ldv_spin_lock_lock_of_hycapictrl_info(void) ;
void ldv_spin_unlock_lock_of_hycapictrl_info(void) ;
__inline static void ldv_spin_lock_irq_67___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_67___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_68___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_68___0(spinlock_t *lock ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void kfree_skb(struct sk_buff * ) ;
extern struct sk_buff *__alloc_skb(unsigned int , gfp_t , int , int ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t priority )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __alloc_skb(size, priority, 0, -1);
  }
  return (tmp);
}
}
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static void skb_copy_to_linear_data_offset(struct sk_buff *skb , int const offset ,
                                                    void const *from , unsigned int const len )
{
  {
  {
  memcpy((void *)(skb->data + (unsigned long )offset), from, (size_t )len);
  }
  return;
}
}
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_any(skb, 1);
  }
  return;
}
}
__inline static void capimsg_setu16(void *m , int off , __u16 val )
{
  {
  *((__u8 *)(m + (unsigned long )off)) = (__u8 )val;
  *((__u8 *)(m + ((unsigned long )off + 1UL))) = (__u8 )((int )val >> 8);
  return;
}
}
extern int attach_capi_ctr(struct capi_ctr * ) ;
extern int detach_capi_ctr(struct capi_ctr * ) ;
extern void capi_ctr_ready(struct capi_ctr * ) ;
extern void capi_ctr_down(struct capi_ctr * ) ;
extern void capi_ctr_suspend_output(struct capi_ctr * ) ;
extern void capi_ctr_resume_output(struct capi_ctr * ) ;
extern void capi_ctr_handle_message(struct capi_ctr * , u16 , struct sk_buff * ) ;
extern void capilib_new_ncci(struct list_head * , u16 , u32 , u32 ) ;
extern void capilib_free_ncci(struct list_head * , u16 , u32 ) ;
extern void capilib_release_appl(struct list_head * , u16 ) ;
extern void capilib_release(struct list_head * ) ;
extern void capilib_data_b3_conf(struct list_head * , u16 , u32 , u16 ) ;
extern u16 capilib_data_b3_req(struct list_head * , u16 , u32 , u16 ) ;
static char hycapi_revision[21U] =
  { '$', 'R', 'e', 'v',
        'i', 's', 'i', 'o',
        'n', ':', ' ', '1',
        '.', '8', '.', '6',
        '.', '4', ' ', '$',
        '\000'};
unsigned int hycapi_enable = 4294967295U;
static hycapi_appl hycapi_applications[240U] ;
static u16 hycapi_send_message(struct capi_ctr *ctrl , struct sk_buff *skb ) ;
__inline static int _hycapi_appCheck(int app_id , int ctrl_no )
{
  {
  if (((unsigned int )ctrl_no - 1U > 31U || app_id <= 0) || app_id > 240) {
    {
    printk("\vHYCAPI: Invalid request app_id %d for controller %d", app_id, ctrl_no);
    }
    return (-1);
  } else {
  }
  return ((hycapi_applications[app_id + -1].ctrl_mask & (unsigned int )(1 << (ctrl_no + -1))) != 0U);
}
}
static void hycapi_reset_ctr(struct capi_ctr *ctrl )
{
  hycapictrl_info *cinfo ;
  {
  {
  cinfo = (hycapictrl_info *)ctrl->driverdata;
  capilib_release(& cinfo->ncci_head);
  capi_ctr_down(ctrl);
  }
  return;
}
}
static void hycapi_remove_ctr(struct capi_ctr *ctrl )
{
  int i ;
  hycapictrl_info *cinfo ;
  hysdn_card *card ;
  {
  cinfo = (hycapictrl_info *)0;
  card = (hysdn_card *)0;
  cinfo = (hycapictrl_info *)ctrl->driverdata;
  if ((unsigned long )cinfo == (unsigned long )((hycapictrl_info *)0)) {
    {
    printk("\vNo hycapictrl_info set!");
    }
    return;
  } else {
  }
  {
  card = cinfo->card;
  capi_ctr_suspend_output(ctrl);
  i = 0;
  }
  goto ldv_44432;
  ldv_44431: ;
  if ((unsigned long )hycapi_applications[i].listen_req[ctrl->cnr + -1] != (unsigned long )((struct sk_buff *)0)) {
    {
    kfree_skb(hycapi_applications[i].listen_req[ctrl->cnr + -1]);
    hycapi_applications[i].listen_req[ctrl->cnr + -1] = (struct sk_buff *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_44432: ;
  if (i <= 239) {
    goto ldv_44431;
  } else {
  }
  {
  detach_capi_ctr(ctrl);
  ctrl->driverdata = (void *)0;
  kfree((void const *)card->hyctrlinfo);
  card->hyctrlinfo = (struct hycapictrl_info *)0;
  }
  return;
}
}
static void hycapi_sendmsg_internal(struct capi_ctr *ctrl , struct sk_buff *skb )
{
  hycapictrl_info *cinfo ;
  hysdn_card *card ;
  int tmp ;
  {
  {
  cinfo = (hycapictrl_info *)ctrl->driverdata;
  card = cinfo->card;
  ldv_spin_lock_irq_67___0(& cinfo->lock);
  tmp = cinfo->in_idx;
  cinfo->in_idx = cinfo->in_idx + 1;
  cinfo->skbs[tmp] = skb;
  }
  if (cinfo->in_idx > 19) {
    cinfo->in_idx = 0;
  } else {
  }
  cinfo->sk_count = cinfo->sk_count + 1;
  if (cinfo->sk_count > 19) {
    {
    printk("\vHYSDN Card%d: CAPI-buffer overrun!\n", card->myid);
    capi_ctr_suspend_output(ctrl);
    }
  } else {
  }
  {
  cinfo->tx_skb = skb;
  ldv_spin_unlock_irq_68___0(& cinfo->lock);
  schedule_work(& card->irq_queue);
  }
  return;
}
}
static void hycapi_register_internal(struct capi_ctr *ctrl , __u16 appl , capi_register_params *rp )
{
  char ExtFeatureDefaults[51U] ;
  hycapictrl_info *cinfo ;
  hysdn_card *card ;
  struct sk_buff *skb ;
  __u16 len ;
  __u8 _command ;
  __u8 _subcommand ;
  __u16 MessageNumber ;
  __u16 MessageBufferSize ;
  int slen ;
  size_t tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  unsigned char *tmp___8 ;
  unsigned char *tmp___9 ;
  {
  {
  ExtFeatureDefaults[0] = '4';
  ExtFeatureDefaults[1] = '9';
  ExtFeatureDefaults[2] = ' ';
  ExtFeatureDefaults[3] = ' ';
  ExtFeatureDefaults[4] = '/';
  ExtFeatureDefaults[5] = '0';
  ExtFeatureDefaults[6] = '/';
  ExtFeatureDefaults[7] = '0';
  ExtFeatureDefaults[8] = '/';
  ExtFeatureDefaults[9] = '0';
  ExtFeatureDefaults[10] = '/';
  ExtFeatureDefaults[11] = '0';
  ExtFeatureDefaults[12] = ',';
  ExtFeatureDefaults[13] = '*';
  ExtFeatureDefaults[14] = '/';
  ExtFeatureDefaults[15] = '1';
  ExtFeatureDefaults[16] = ',';
  ExtFeatureDefaults[17] = '*';
  ExtFeatureDefaults[18] = '/';
  ExtFeatureDefaults[19] = '2';
  ExtFeatureDefaults[20] = ',';
  ExtFeatureDefaults[21] = '*';
  ExtFeatureDefaults[22] = '/';
  ExtFeatureDefaults[23] = '3';
  ExtFeatureDefaults[24] = ',';
  ExtFeatureDefaults[25] = '*';
  ExtFeatureDefaults[26] = '/';
  ExtFeatureDefaults[27] = '4';
  ExtFeatureDefaults[28] = ',';
  ExtFeatureDefaults[29] = '*';
  ExtFeatureDefaults[30] = '/';
  ExtFeatureDefaults[31] = '5';
  ExtFeatureDefaults[32] = ',';
  ExtFeatureDefaults[33] = '*';
  ExtFeatureDefaults[34] = '/';
  ExtFeatureDefaults[35] = '6';
  ExtFeatureDefaults[36] = ',';
  ExtFeatureDefaults[37] = '*';
  ExtFeatureDefaults[38] = '/';
  ExtFeatureDefaults[39] = '7';
  ExtFeatureDefaults[40] = ',';
  ExtFeatureDefaults[41] = '*';
  ExtFeatureDefaults[42] = '/';
  ExtFeatureDefaults[43] = '8';
  ExtFeatureDefaults[44] = ',';
  ExtFeatureDefaults[45] = '*';
  ExtFeatureDefaults[46] = '/';
  ExtFeatureDefaults[47] = '9';
  ExtFeatureDefaults[48] = ',';
  ExtFeatureDefaults[49] = '*';
  ExtFeatureDefaults[50] = '\000';
  cinfo = (hycapictrl_info *)ctrl->driverdata;
  card = cinfo->card;
  _command = 160U;
  _subcommand = 128U;
  MessageNumber = 0U;
  MessageBufferSize = 0U;
  tmp = strlen((char const *)(& ExtFeatureDefaults));
  slen = (int )tmp;
  MessageBufferSize = ((int )((__u16 )rp->level3cnt) * (int )((__u16 )rp->datablkcnt)) * (int )((__u16 )rp->datablklen);
  len = (unsigned int )((__u16 )slen) + 17U;
  skb = alloc_skb((unsigned int )len, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("\vHYSDN card%d: memory squeeze in hycapi_register_appl\n", card->myid);
    }
    return;
  } else {
  }
  {
  tmp___0 = skb_put(skb, 2U);
  memcpy((void *)tmp___0, (void const *)(& len), 2UL);
  tmp___1 = skb_put(skb, 2U);
  memcpy((void *)tmp___1, (void const *)(& appl), 2UL);
  tmp___2 = skb_put(skb, 1U);
  memcpy((void *)tmp___2, (void const *)(& _command), 1UL);
  tmp___3 = skb_put(skb, 1U);
  memcpy((void *)tmp___3, (void const *)(& _subcommand), 1UL);
  tmp___4 = skb_put(skb, 2U);
  memcpy((void *)tmp___4, (void const *)(& MessageNumber), 2UL);
  tmp___5 = skb_put(skb, 2U);
  memcpy((void *)tmp___5, (void const *)(& MessageBufferSize), 2UL);
  tmp___6 = skb_put(skb, 2U);
  memcpy((void *)tmp___6, (void const *)(& rp->level3cnt), 2UL);
  tmp___7 = skb_put(skb, 2U);
  memcpy((void *)tmp___7, (void const *)(& rp->datablkcnt), 2UL);
  tmp___8 = skb_put(skb, 2U);
  memcpy((void *)tmp___8, (void const *)(& rp->datablklen), 2UL);
  tmp___9 = skb_put(skb, (unsigned int )slen);
  memcpy((void *)tmp___9, (void const *)(& ExtFeatureDefaults), (size_t )slen);
  hycapi_applications[(int )appl + -1].ctrl_mask = hycapi_applications[(int )appl + -1].ctrl_mask | (unsigned int )(1 << (ctrl->cnr + -1));
  hycapi_send_message(ctrl, skb);
  }
  return;
}
}
static void hycapi_restart_internal(struct capi_ctr *ctrl )
{
  int i ;
  struct sk_buff *skb ;
  int tmp ;
  {
  i = 0;
  goto ldv_44461;
  ldv_44460:
  {
  tmp = _hycapi_appCheck(i + 1, ctrl->cnr);
  }
  if (tmp == 1) {
    {
    hycapi_register_internal(ctrl, (int )((unsigned int )((__u16 )i) + 1U), & hycapi_applications[i].rp);
    }
    if ((unsigned long )hycapi_applications[i].listen_req[ctrl->cnr + -1] != (unsigned long )((struct sk_buff *)0)) {
      {
      skb = skb_copy((struct sk_buff const *)hycapi_applications[i].listen_req[ctrl->cnr + -1],
                     32U);
      hycapi_sendmsg_internal(ctrl, skb);
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_44461: ;
  if (i <= 239) {
    goto ldv_44460;
  } else {
  }
  return;
}
}
static void hycapi_register_appl(struct capi_ctr *ctrl , __u16 appl , capi_register_params *rp )
{
  int MaxLogicalConnections ;
  int MaxBDataBlocks ;
  int MaxBDataLen ;
  hycapictrl_info *cinfo ;
  hysdn_card *card ;
  int chk ;
  int tmp ;
  {
  {
  MaxLogicalConnections = 0;
  MaxBDataBlocks = 0;
  MaxBDataLen = 0;
  cinfo = (hycapictrl_info *)ctrl->driverdata;
  card = cinfo->card;
  tmp = _hycapi_appCheck((int )appl, ctrl->cnr);
  chk = tmp;
  }
  if (chk < 0) {
    return;
  } else {
  }
  if (chk == 1) {
    {
    printk("\016HYSDN: apl %d already registered\n", (int )appl);
    }
    return;
  } else {
  }
  MaxBDataBlocks = (int )(8U < rp->datablkcnt ? 8U : rp->datablkcnt);
  rp->datablkcnt = (__u32 )MaxBDataBlocks;
  MaxBDataLen = (int )(1024U > rp->datablklen ? 1024U : rp->datablklen);
  rp->datablklen = (__u32 )MaxBDataLen;
  MaxLogicalConnections = (int )rp->level3cnt;
  if (MaxLogicalConnections < 0) {
    MaxLogicalConnections = (int )(card->bchans * (unsigned int )(- MaxLogicalConnections));
  } else {
  }
  if (MaxLogicalConnections == 0) {
    MaxLogicalConnections = (int )card->bchans;
  } else {
  }
  {
  rp->level3cnt = (__u32 )MaxLogicalConnections;
  memcpy((void *)(& hycapi_applications[(int )appl + -1].rp), (void const *)rp,
         12UL);
  }
  return;
}
}
static void hycapi_release_internal(struct capi_ctr *ctrl , __u16 appl )
{
  hycapictrl_info *cinfo ;
  hysdn_card *card ;
  struct sk_buff *skb ;
  __u16 len ;
  __u8 _command ;
  __u8 _subcommand ;
  __u16 MessageNumber ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  {
  {
  cinfo = (hycapictrl_info *)ctrl->driverdata;
  card = cinfo->card;
  _command = 161U;
  _subcommand = 128U;
  MessageNumber = 0U;
  capilib_release_appl(& cinfo->ncci_head, (int )appl);
  len = 8U;
  skb = alloc_skb((unsigned int )len, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("\vHYSDN card%d: memory squeeze in hycapi_register_appl\n", card->myid);
    }
    return;
  } else {
  }
  {
  tmp = skb_put(skb, 2U);
  memcpy((void *)tmp, (void const *)(& len), 2UL);
  tmp___0 = skb_put(skb, 2U);
  memcpy((void *)tmp___0, (void const *)(& appl), 2UL);
  tmp___1 = skb_put(skb, 1U);
  memcpy((void *)tmp___1, (void const *)(& _command), 1UL);
  tmp___2 = skb_put(skb, 1U);
  memcpy((void *)tmp___2, (void const *)(& _subcommand), 1UL);
  tmp___3 = skb_put(skb, 2U);
  memcpy((void *)tmp___3, (void const *)(& MessageNumber), 2UL);
  hycapi_send_message(ctrl, skb);
  hycapi_applications[(int )appl + -1].ctrl_mask = hycapi_applications[(int )appl + -1].ctrl_mask & (unsigned int )(~ (1 << (ctrl->cnr + -1)));
  }
  return;
}
}
static void hycapi_release_appl(struct capi_ctr *ctrl , __u16 appl )
{
  int chk ;
  {
  {
  chk = _hycapi_appCheck((int )appl, ctrl->cnr);
  }
  if (chk < 0) {
    {
    printk("\vHYCAPI: Releasing invalid appl %d on controller %d\n", (int )appl, ctrl->cnr);
    }
    return;
  } else {
  }
  if ((unsigned long )hycapi_applications[(int )appl + -1].listen_req[ctrl->cnr + -1] != (unsigned long )((struct sk_buff *)0)) {
    {
    kfree_skb(hycapi_applications[(int )appl + -1].listen_req[ctrl->cnr + -1]);
    hycapi_applications[(int )appl + -1].listen_req[ctrl->cnr + -1] = (struct sk_buff *)0;
    }
  } else {
  }
  if (chk == 1) {
    {
    hycapi_release_internal(ctrl, (int )appl);
    }
  } else {
  }
  return;
}
}
int hycapi_capi_release(hysdn_card *card )
{
  hycapictrl_info *cinfo ;
  struct capi_ctr *ctrl ;
  {
  cinfo = card->hyctrlinfo;
  if ((unsigned long )cinfo != (unsigned long )((hycapictrl_info *)0)) {
    {
    ctrl = & cinfo->capi_ctrl;
    hycapi_remove_ctr(ctrl);
    }
  } else {
  }
  return (0);
}
}
int hycapi_capi_stop(hysdn_card *card )
{
  hycapictrl_info *cinfo ;
  struct capi_ctr *ctrl ;
  {
  cinfo = card->hyctrlinfo;
  if ((unsigned long )cinfo != (unsigned long )((hycapictrl_info *)0)) {
    {
    ctrl = & cinfo->capi_ctrl;
    capi_ctr_down(ctrl);
    }
  } else {
  }
  return (0);
}
}
static u16 hycapi_send_message(struct capi_ctr *ctrl , struct sk_buff *skb )
{
  __u16 appl_id ;
  int _len ;
  int _len2 ;
  __u8 msghead[64U] ;
  hycapictrl_info *cinfo ;
  u16 retval ;
  int tmp ;
  struct sk_buff *tmp___0 ;
  {
  {
  cinfo = (hycapictrl_info *)ctrl->driverdata;
  retval = 0U;
  appl_id = (__u16 )((int )((short )*(skb->data + 2UL)) | (int )((short )((int )*(skb->data + 3UL) << 8)));
  tmp = _hycapi_appCheck((int )appl_id, ctrl->cnr);
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0:
  {
  hycapi_register_internal(ctrl, (int )appl_id, & hycapi_applications[(int )appl_id + -1].rp);
  }
  goto ldv_44511;
  case_1: ;
  goto ldv_44511;
  switch_default:
  {
  printk("\vHYCAPI: Controller mixup!\n");
  retval = 4353U;
  }
  goto out;
  switch_break: ;
  }
  ldv_44511: ;
  {
  if ((((int )*(skb->data + 4UL) << 8) | (int )*(skb->data + 5UL)) == 33923) {
    goto case_33923;
  } else {
  }
  if ((((int )*(skb->data + 4UL) << 8) | (int )*(skb->data + 5UL)) == 34432) {
    goto case_34432;
  } else {
  }
  if ((((int )*(skb->data + 4UL) << 8) | (int )*(skb->data + 5UL)) == 1408) {
    goto case_1408;
  } else {
  }
  goto switch_default___0;
  case_33923:
  {
  capilib_free_ncci(& cinfo->ncci_head, (int )appl_id, (u32 )((((int )*(skb->data + 8UL) | ((int )*(skb->data + 9UL) << 8)) | ((int )*(skb->data + 10UL) << 16)) | ((int )*(skb->data + 11UL) << 24)));
  }
  goto ldv_44516;
  case_34432:
  _len = (int )*(skb->data) | ((int )*(skb->data + 1UL) << 8);
  if (_len > 22) {
    {
    _len2 = _len + -22;
    skb_copy_from_linear_data((struct sk_buff const *)skb, (void *)(& msghead),
                              22U);
    skb_copy_to_linear_data_offset(skb, _len2, (void const *)(& msghead), 22U);
    skb_pull(skb, (unsigned int )_len2);
    capimsg_setu16((void *)skb->data, 0, 22);
    retval = capilib_data_b3_req(& cinfo->ncci_head, (int )((u16 )((int )((short )*(skb->data + 2UL)) | (int )((short )((int )*(skb->data + 3UL) << 8)))),
                                 (u32 )((((int )*(skb->data + 8UL) | ((int )*(skb->data + 9UL) << 8)) | ((int )*(skb->data + 10UL) << 16)) | ((int )*(skb->data + 11UL) << 24)),
                                 (int )((u16 )((int )((short )*(skb->data + 6UL)) | (int )((short )((int )*(skb->data + 7UL) << 8)))));
    }
  } else {
  }
  goto ldv_44516;
  case_1408: ;
  if ((unsigned long )hycapi_applications[(int )appl_id + -1].listen_req[ctrl->cnr + -1] != (unsigned long )((struct sk_buff *)0)) {
    {
    kfree_skb(hycapi_applications[(int )appl_id + -1].listen_req[ctrl->cnr + -1]);
    hycapi_applications[(int )appl_id + -1].listen_req[ctrl->cnr + -1] = (struct sk_buff *)0;
    }
  } else {
  }
  {
  tmp___0 = skb_copy((struct sk_buff const *)skb, 32U);
  hycapi_applications[(int )appl_id + -1].listen_req[ctrl->cnr + -1] = tmp___0;
  }
  if ((unsigned long )tmp___0 == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("\vHYSDN: memory squeeze in private_listen\n");
    }
  } else {
  }
  goto ldv_44516;
  switch_default___0: ;
  goto ldv_44516;
  switch_break___0: ;
  }
  ldv_44516: ;
  out: ;
  if ((unsigned int )retval == 0U) {
    {
    hycapi_sendmsg_internal(ctrl, skb);
    }
  } else {
    {
    dev_kfree_skb_any(skb);
    }
  }
  return (retval);
}
}
static int hycapi_proc_show(struct seq_file *m , void *v )
{
  struct capi_ctr *ctrl ;
  hycapictrl_info *cinfo ;
  hysdn_card *card ;
  char *s ;
  {
  {
  ctrl = (struct capi_ctr *)m->private;
  cinfo = (hycapictrl_info *)ctrl->driverdata;
  card = cinfo->card;
  seq_printf(m, "%-16s %s\n", (char *)"name", (char *)(& cinfo->cardname));
  seq_printf(m, "%-16s 0x%x\n", (char *)"io", card->iobase);
  seq_printf(m, "%-16s %d\n", (char *)"irq", card->irq);
  }
  {
  if ((int )card->brdtype == 3) {
    goto case_3;
  } else {
  }
  if ((int )card->brdtype == 4) {
    goto case_4;
  } else {
  }
  if ((int )card->brdtype == 5) {
    goto case_5;
  } else {
  }
  if ((int )card->brdtype == 6) {
    goto case_6;
  } else {
  }
  if ((int )card->brdtype == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_3:
  s = (char *)"HYSDN Hycard";
  goto ldv_44529;
  case_4:
  s = (char *)"HYSDN Ergo2";
  goto ldv_44529;
  case_5:
  s = (char *)"HYSDN Metro4";
  goto ldv_44529;
  case_6:
  s = (char *)"HYSDN Champ2";
  goto ldv_44529;
  case_7:
  s = (char *)"HYSDN Plexus30";
  goto ldv_44529;
  switch_default:
  s = (char *)"???";
  goto ldv_44529;
  switch_break: ;
  }
  ldv_44529:
  {
  seq_printf(m, "%-16s %s\n", (char *)"type", s);
  s = cinfo->version[0];
  }
  if ((unsigned long )s != (unsigned long )((char *)0)) {
    {
    seq_printf(m, "%-16s %s\n", (char *)"ver_driver", s);
    }
  } else {
  }
  s = cinfo->version[1];
  if ((unsigned long )s != (unsigned long )((char *)0)) {
    {
    seq_printf(m, "%-16s %s\n", (char *)"ver_cardtype", s);
    }
  } else {
  }
  s = cinfo->version[3];
  if ((unsigned long )s != (unsigned long )((char *)0)) {
    {
    seq_printf(m, "%-16s %s\n", (char *)"ver_serial", s);
    }
  } else {
  }
  {
  seq_printf(m, "%-16s %s\n", (char *)"cardname", (char *)(& cinfo->cardname));
  }
  return (0);
}
}
static int hycapi_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & hycapi_proc_show, tmp);
  }
  return (tmp___0);
}
}
static struct file_operations const hycapi_proc_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, & hycapi_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int hycapi_load_firmware(struct capi_ctr *ctrl , capiloaddata *data )
{
  {
  return (0);
}
}
static char *hycapi_procinfo(struct capi_ctr *ctrl )
{
  hycapictrl_info *cinfo ;
  {
  cinfo = (hycapictrl_info *)ctrl->driverdata;
  if ((unsigned long )cinfo == (unsigned long )((hycapictrl_info *)0)) {
    return ((char *)"");
  } else {
  }
  {
  sprintf((char *)(& cinfo->infobuf), "%s %s 0x%x %d %s", (int )((signed char )cinfo->cardname[0]) != 0 ? (char *)(& cinfo->cardname) : (char *)"-",
          (unsigned long )cinfo->version[0] != (unsigned long )((char *)0) ? cinfo->version[0] : (char *)"-",
          (unsigned long )cinfo->card != (unsigned long )((struct HYSDN_CARD *)0) ? (cinfo->card)->iobase : 0U,
          (unsigned long )cinfo->card != (unsigned long )((struct HYSDN_CARD *)0) ? (cinfo->card)->irq : 0U,
          (char *)(& hycapi_revision));
  }
  return ((char *)(& cinfo->infobuf));
}
}
void hycapi_rx_capipkt(hysdn_card *card , unsigned char *buf , unsigned short len )
{
  struct sk_buff *skb ;
  hycapictrl_info *cinfo ;
  struct capi_ctr *ctrl ;
  __u16 ApplId ;
  __u16 MsgLen ;
  __u16 info ;
  __u16 len2 ;
  __u16 CapiCmd ;
  __u32 CP64[2U] ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  {
  cinfo = card->hyctrlinfo;
  CP64[0] = 0U;
  CP64[1] = 0U;
  if ((unsigned long )cinfo == (unsigned long )((hycapictrl_info *)0)) {
    return;
  } else {
  }
  ctrl = & cinfo->capi_ctrl;
  if ((unsigned int )len <= 7U) {
    {
    printk("\vHYSDN Card%d: invalid CAPI-message, length %d!\n", card->myid, (int )len);
    }
    return;
  } else {
  }
  MsgLen = (__u16 )((int )((short )*buf) | (int )((short )((int )*(buf + 1UL) << 8)));
  ApplId = (__u16 )((int )((short )*(buf + 2UL)) | (int )((short )((int )*(buf + 3UL) << 8)));
  CapiCmd = (__u16 )((int )((short )((int )*(buf + 4UL) << 8)) | (int )((short )*(buf + 5UL)));
  if ((unsigned int )CapiCmd == 34434U && (unsigned int )MsgLen <= 29U) {
    {
    len2 = (unsigned int )((int )len - (int )MsgLen) + 30U;
    skb = alloc_skb((unsigned int )len2, 32U);
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      {
      printk("\vHYSDN Card%d: incoming packet dropped\n", card->myid);
      }
      return;
    } else {
    }
    {
    tmp = skb_put(skb, (unsigned int )MsgLen);
    memcpy((void *)tmp, (void const *)buf, (size_t )MsgLen);
    tmp___0 = skb_put(skb, 8U);
    memcpy((void *)tmp___0, (void const *)(& CP64), 8UL);
    tmp___1 = skb_put(skb, (unsigned int )((int )len - (int )MsgLen));
    memcpy((void *)tmp___1, (void const *)(buf + (unsigned long )MsgLen), (size_t )((int )len - (int )MsgLen));
    capimsg_setu16((void *)skb->data, 0, 30);
    }
  } else {
    {
    skb = alloc_skb((unsigned int )len, 32U);
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      {
      printk("\vHYSDN Card%d: incoming packet dropped\n", card->myid);
      }
      return;
    } else {
    }
    {
    tmp___2 = skb_put(skb, (unsigned int )len);
    memcpy((void *)tmp___2, (void const *)buf, (size_t )len);
    }
  }
  {
  if ((((int )*(skb->data + 4UL) << 8) | (int )*(skb->data + 5UL)) == 33409) {
    goto case_33409;
  } else {
  }
  if ((((int )*(skb->data + 4UL) << 8) | (int )*(skb->data + 5UL)) == 33410) {
    goto case_33410;
  } else {
  }
  if ((((int )*(skb->data + 4UL) << 8) | (int )*(skb->data + 5UL)) == 34433) {
    goto case_34433;
  } else {
  }
  goto switch_default___0;
  case_33409:
  info = (__u16 )((int )((short )*(skb->data + 12UL)) | (int )((short )((int )*(skb->data + 13UL) << 8)));
  {
  if ((int )info == 0) {
    goto case_0;
  } else {
  }
  if ((int )info == 1) {
    goto case_1;
  } else {
  }
  if ((int )info == 8193) {
    goto case_8193;
  } else {
  }
  if ((int )info == 8194) {
    goto case_8194;
  } else {
  }
  if ((int )info == 8196) {
    goto case_8196;
  } else {
  }
  if ((int )info == 12296) {
    goto case_12296;
  } else {
  }
  goto switch_default;
  case_0:
  {
  capilib_new_ncci(& cinfo->ncci_head, (int )ApplId, (u32 )((((int )*(skb->data + 8UL) | ((int )*(skb->data + 9UL) << 8)) | ((int )*(skb->data + 10UL) << 16)) | ((int )*(skb->data + 11UL) << 24)),
                   hycapi_applications[(int )ApplId + -1].rp.datablkcnt);
  }
  goto ldv_44564;
  case_1:
  {
  printk("\vHYSDN Card%d: NCPI not supported by current protocol. NCPI ignored.\n",
         card->myid);
  }
  goto ldv_44564;
  case_8193:
  {
  printk("\vHYSDN Card%d: Message not supported in current state\n", card->myid);
  }
  goto ldv_44564;
  case_8194:
  {
  printk("\vHYSDN Card%d: invalid PLCI\n", card->myid);
  }
  goto ldv_44564;
  case_8196:
  {
  printk("\vHYSDN Card%d: out of NCCI\n", card->myid);
  }
  goto ldv_44564;
  case_12296:
  {
  printk("\vHYSDN Card%d: NCPI not supported\n", card->myid);
  }
  goto ldv_44564;
  switch_default:
  {
  printk("\vHYSDN Card%d: Info in CONNECT_B3_CONF: %d\n", card->myid, (int )info);
  }
  goto ldv_44564;
  switch_break___0: ;
  }
  ldv_44564: ;
  goto ldv_44571;
  case_33410:
  {
  capilib_new_ncci(& cinfo->ncci_head, (int )ApplId, (u32 )((((int )*(skb->data + 8UL) | ((int )*(skb->data + 9UL) << 8)) | ((int )*(skb->data + 10UL) << 16)) | ((int )*(skb->data + 11UL) << 24)),
                   hycapi_applications[(int )ApplId + -1].rp.datablkcnt);
  }
  goto ldv_44571;
  case_34433:
  {
  capilib_data_b3_conf(& cinfo->ncci_head, (int )ApplId, (u32 )((((int )*(skb->data + 8UL) | ((int )*(skb->data + 9UL) << 8)) | ((int )*(skb->data + 10UL) << 16)) | ((int )*(skb->data + 11UL) << 24)),
                       (int )((u16 )((int )((short )*(skb->data + 6UL)) | (int )((short )((int )*(skb->data + 7UL) << 8)))));
  }
  goto ldv_44571;
  switch_default___0: ;
  goto ldv_44571;
  switch_break: ;
  }
  ldv_44571:
  {
  capi_ctr_handle_message(ctrl, (int )ApplId, skb);
  }
  return;
}
}
void hycapi_tx_capiack(hysdn_card *card )
{
  hycapictrl_info *cinfo ;
  int tmp ;
  int tmp___0 ;
  {
  cinfo = card->hyctrlinfo;
  if ((unsigned long )cinfo == (unsigned long )((hycapictrl_info *)0)) {
    return;
  } else {
  }
  {
  ldv_spin_lock_irq_67___0(& cinfo->lock);
  kfree_skb(cinfo->skbs[cinfo->out_idx]);
  tmp = cinfo->out_idx;
  cinfo->out_idx = cinfo->out_idx + 1;
  cinfo->skbs[tmp] = (struct sk_buff *)0;
  }
  if (cinfo->out_idx > 19) {
    cinfo->out_idx = 0;
  } else {
  }
  tmp___0 = cinfo->sk_count;
  cinfo->sk_count = cinfo->sk_count - 1;
  if (tmp___0 == 20) {
    {
    capi_ctr_resume_output(& cinfo->capi_ctrl);
    }
  } else {
  }
  {
  ldv_spin_unlock_irq_68___0(& cinfo->lock);
  }
  return;
}
}
struct sk_buff *hycapi_tx_capiget(hysdn_card *card )
{
  hycapictrl_info *cinfo ;
  {
  cinfo = card->hyctrlinfo;
  if ((unsigned long )cinfo == (unsigned long )((hycapictrl_info *)0)) {
    return ((struct sk_buff *)0);
  } else {
  }
  if (cinfo->sk_count == 0) {
    return ((struct sk_buff *)0);
  } else {
  }
  return (cinfo->skbs[cinfo->out_idx]);
}
}
int hycapi_init(void)
{
  int i ;
  {
  i = 0;
  goto ldv_44588;
  ldv_44587:
  {
  memset((void *)(& hycapi_applications + (unsigned long )i), 0, 272UL);
  i = i + 1;
  }
  ldv_44588: ;
  if (i <= 239) {
    goto ldv_44587;
  } else {
  }
  return (0);
}
}
void hycapi_cleanup(void)
{
  {
  return;
}
}
static void hycapi_fill_profile(hysdn_card *card )
{
  hycapictrl_info *cinfo ;
  struct capi_ctr *ctrl ;
  {
  cinfo = (hycapictrl_info *)0;
  ctrl = (struct capi_ctr *)0;
  cinfo = card->hyctrlinfo;
  if ((unsigned long )cinfo == (unsigned long )((hycapictrl_info *)0)) {
    return;
  } else {
  }
  {
  ctrl = & cinfo->capi_ctrl;
  strcpy((char *)(& ctrl->manu), "Hypercope");
  ctrl->version.majorversion = 2U;
  ctrl->version.minorversion = 0U;
  ctrl->version.majormanuversion = 3U;
  ctrl->version.minormanuversion = 2U;
  ctrl->profile.ncontroller = (__u16 )card->myid;
  ctrl->profile.nbchannel = (__u16 )card->bchans;
  ctrl->profile.goptions = 65U;
  ctrl->profile.support1 = card->faxchans != 0U ? 19U : 3U;
  ctrl->profile.support2 = card->faxchans != 0U ? 19U : 3U;
  ctrl->profile.support3 = (__u32 )(((card->faxchans != 0U ? 19 : 3) | (card->faxchans != 0U ? 32 : 0)) | 4);
  }
  return;
}
}
int hycapi_capi_create(hysdn_card *card )
{
  hycapictrl_info *cinfo ;
  struct capi_ctr *ctrl ;
  int retval ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  cinfo = (hycapictrl_info *)0;
  ctrl = (struct capi_ctr *)0;
  if ((hycapi_enable & (unsigned int )(1 << card->myid)) == 0U) {
    return (1);
  } else {
  }
  if ((unsigned long )card->hyctrlinfo == (unsigned long )((struct hycapictrl_info *)0)) {
    {
    tmp = kzalloc(2072UL, 32U);
    cinfo = (hycapictrl_info *)tmp;
    }
    if ((unsigned long )cinfo == (unsigned long )((hycapictrl_info *)0)) {
      {
      printk("\fHYSDN: no memory for capi-ctrl.\n");
      }
      return (-12);
    } else {
    }
    {
    card->hyctrlinfo = cinfo;
    cinfo->card = card;
    spinlock_check(& cinfo->lock);
    __raw_spin_lock_init(& cinfo->lock.__annonCompField19.rlock, "&(&cinfo->lock)->rlock",
                         & __key);
    INIT_LIST_HEAD(& cinfo->ncci_head);
    }
    {
    if ((int )card->brdtype == 3) {
      goto case_3;
    } else {
    }
    if ((int )card->brdtype == 4) {
      goto case_4;
    } else {
    }
    if ((int )card->brdtype == 5) {
      goto case_5;
    } else {
    }
    if ((int )card->brdtype == 6) {
      goto case_6;
    } else {
    }
    if ((int )card->brdtype == 7) {
      goto case_7;
    } else {
    }
    goto switch_default;
    case_3:
    {
    strcpy((char *)(& cinfo->cardname), "HYSDN Hycard");
    }
    goto ldv_44606;
    case_4:
    {
    strcpy((char *)(& cinfo->cardname), "HYSDN Ergo2");
    }
    goto ldv_44606;
    case_5:
    {
    strcpy((char *)(& cinfo->cardname), "HYSDN Metro4");
    }
    goto ldv_44606;
    case_6:
    {
    strcpy((char *)(& cinfo->cardname), "HYSDN Champ2");
    }
    goto ldv_44606;
    case_7:
    {
    strcpy((char *)(& cinfo->cardname), "HYSDN Plexus30");
    }
    goto ldv_44606;
    switch_default:
    {
    strcpy((char *)(& cinfo->cardname), "HYSDN ???");
    }
    goto ldv_44606;
    switch_break: ;
    }
    ldv_44606:
    {
    ctrl = & cinfo->capi_ctrl;
    ctrl->driver_name = (char *)"hycapi";
    ctrl->driverdata = (void *)cinfo;
    ctrl->register_appl = & hycapi_register_appl;
    ctrl->release_appl = & hycapi_release_appl;
    ctrl->send_message = & hycapi_send_message;
    ctrl->load_firmware = & hycapi_load_firmware;
    ctrl->reset_ctr = & hycapi_reset_ctr;
    ctrl->procinfo = & hycapi_procinfo;
    ctrl->proc_fops = & hycapi_proc_fops;
    strcpy((char *)(& ctrl->name), (char const *)(& cinfo->cardname));
    ctrl->owner = & __this_module;
    retval = attach_capi_ctr(ctrl);
    }
    if (retval != 0) {
      {
      printk("\vhycapi: attach controller failed.\n");
      }
      return (-16);
    } else {
    }
    {
    hycapi_fill_profile(card);
    capi_ctr_ready(ctrl);
    }
  } else {
    {
    ctrl = & (card->hyctrlinfo)->capi_ctrl;
    hycapi_fill_profile(card);
    capi_ctr_ready(ctrl);
    hycapi_restart_internal(ctrl);
    }
  }
  return (0);
}
}
void ldv_character_driver_scenario_callback_3_20(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 ) ;
void ldv_character_driver_scenario_callback_3_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 ) ;
int ldv_character_driver_scenario_probe_3_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 ) ;
pthread_t ldv_thread_3 ;
void *ldv_character_driver_scenario_3(void *arg0 )
{
  loff_t (*ldv_3_callback_llseek)(struct file * , loff_t , int ) ;
  gfp_t (*ldv_3_callback_poll)(struct file * , poll_table * ) ;
  ssize_t (*ldv_3_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  struct file_operations *ldv_3_container_file_operations ;
  char *ldv_3_ldv_param_20_1_default ;
  long long *ldv_3_ldv_param_20_3_default ;
  struct poll_table_struct *ldv_3_ldv_param_22_1_default ;
  long long *ldv_3_ldv_param_22_3_default ;
  char *ldv_3_ldv_param_25_1_default ;
  long long *ldv_3_ldv_param_25_3_default ;
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
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  int tmp___22 ;
  {
  {
  tmp = external_allocated_data();
  ldv_3_callback_llseek = (loff_t (*)(struct file * , loff_t , int ))tmp;
  tmp___0 = external_allocated_data();
  ldv_3_callback_poll = (gfp_t (*)(struct file * , poll_table * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_3_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp___1;
  tmp___2 = external_allocated_data();
  ldv_3_container_file_operations = (struct file_operations *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_3_ldv_param_20_1_default = (char *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_3_ldv_param_20_3_default = (long long *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_3_ldv_param_22_1_default = (struct poll_table_struct *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_3_ldv_param_22_3_default = (long long *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_3_ldv_param_25_1_default = (char *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_3_ldv_param_25_3_default = (long long *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_3_ldv_param_4_1_default = (char *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_3_ldv_param_4_3_default = (long long *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_3_resource_file = (struct file *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_3_resource_inode = (struct inode *)tmp___12;
  ldv_3_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___13 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_container_file_operations = (struct file_operations *)tmp___13;
  tmp___14 = ldv_xmalloc(520UL);
  ldv_3_resource_file = (struct file *)tmp___14;
  tmp___15 = ldv_xmalloc(1032UL);
  ldv_3_resource_inode = (struct inode *)tmp___15;
  tmp___16 = ldv_undef_int();
  ldv_3_size_cnt_write_size = (size_t )tmp___16;
  }
  goto ldv_main_3;
  return ((void *)0);
  ldv_main_3:
  {
  tmp___18 = ldv_undef_int();
  }
  if (tmp___18 != 0) {
    {
    ldv_3_ret_default = ldv_character_driver_scenario_probe_3_13(ldv_3_container_file_operations->open,
                                                                 ldv_3_resource_inode,
                                                                 ldv_3_resource_file);
    ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
    tmp___17 = ldv_undef_int();
    }
    if (tmp___17 != 0) {
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
  tmp___19 = ldv_undef_int();
  }
  {
  if (tmp___19 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___19 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___19 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_call_3;
  case_2:
  {
  ldv_character_driver_scenario_release_3_2(ldv_3_container_file_operations->release,
                                            ldv_3_resource_inode, ldv_3_resource_file);
  }
  goto ldv_main_3;
  case_3:
  {
  tmp___22 = ldv_undef_int();
  }
  if (tmp___22 != 0) {
    {
    tmp___20 = ldv_xmalloc_unknown_size(0UL);
    ldv_3_ldv_param_20_1_default = (char *)tmp___20;
    tmp___21 = ldv_xmalloc_unknown_size(0UL);
    ldv_3_ldv_param_20_3_default = (long long *)tmp___21;
    ldv_character_driver_scenario_callback_3_20(ldv_3_callback_read, ldv_3_resource_file,
                                                ldv_3_ldv_param_20_1_default, ldv_3_size_cnt_write_size,
                                                ldv_3_ldv_param_20_3_default);
    ldv_free((void *)ldv_3_ldv_param_20_1_default);
    ldv_free((void *)ldv_3_ldv_param_20_3_default);
    }
  } else {
    {
    ldv_character_driver_scenario_callback_3_5(ldv_3_callback_llseek, ldv_3_resource_file,
                                               ldv_3_ldv_param_5_1_default, ldv_3_ldv_param_5_2_default);
    }
  }
  goto ldv_44701;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  ldv_44701: ;
  goto ldv_call_3;
  return ((void *)0);
}
}
void ldv_character_driver_scenario_callback_3_20(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
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
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_character_driver_scenario_probe_3_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = hycapi_proc_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_character_driver_scenario_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_67___0(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_hycapictrl_info();
  spin_lock_irq(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_68___0(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_hycapictrl_info();
  spin_unlock_irq(lock);
  }
  return;
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
pthread_mutex_t pmutex_hysdn_conf_mutex ;
void ldv_mutex_lock_hysdn_conf_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_hysdn_conf_mutex);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_hysdn_conf_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_hysdn_conf_mutex);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_hysdn_conf_mutex(struct mutex *lock )
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
int ldv_mutex_trylock_hysdn_conf_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_hysdn_conf_mutex);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_hysdn_conf_mutex(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_hysdn_conf_mutex);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_hysdn_conf_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_hysdn_conf_mutex);
  }
  return;
}
}
pthread_mutex_t pmutex_hysdn_log_mutex ;
void ldv_mutex_lock_hysdn_log_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_hysdn_log_mutex);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_hysdn_log_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_hysdn_log_mutex);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_hysdn_log_mutex(struct mutex *lock )
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
int ldv_mutex_trylock_hysdn_log_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_hysdn_log_mutex);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_hysdn_log_mutex(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_hysdn_log_mutex);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_hysdn_log_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_hysdn_log_mutex);
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
pthread_mutex_t smutex__xmit_lock_of_netdev_queue ;
void ldv_spin_lock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  pthread_mutex_lock(& smutex__xmit_lock_of_netdev_queue);
  }
  return;
}
}
void ldv_spin_unlock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  pthread_mutex_unlock(& smutex__xmit_lock_of_netdev_queue);
  }
  return;
}
}
int ldv_spin_trylock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex__xmit_lock_of_netdev_queue);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait__xmit_lock_of_netdev_queue(void)
{
  {
  return;
}
}
int ldv_spin_is_locked__xmit_lock_of_netdev_queue(void)
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
int ldv_spin_can_lock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked__xmit_lock_of_netdev_queue();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended__xmit_lock_of_netdev_queue(void)
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
int ldv_atomic_dec_and_lock__xmit_lock_of_netdev_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock__xmit_lock_of_netdev_queue();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_addr_list_lock_of_net_device ;
void ldv_spin_lock_addr_list_lock_of_net_device(void)
{
  {
  {
  pthread_mutex_lock(& smutex_addr_list_lock_of_net_device);
  }
  return;
}
}
void ldv_spin_unlock_addr_list_lock_of_net_device(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_addr_list_lock_of_net_device);
  }
  return;
}
}
int ldv_spin_trylock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_addr_list_lock_of_net_device);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_addr_list_lock_of_net_device(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_addr_list_lock_of_net_device(void)
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
int ldv_spin_can_lock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_addr_list_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_addr_list_lock_of_net_device(void)
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
int ldv_atomic_dec_and_lock_addr_list_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_addr_list_lock_of_net_device();
    }
    return (1);
  } else {
  }
  return (0);
}
}
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
pthread_mutex_t smutex_hysdn_lock_of_HYSDN_CARD ;
void ldv_spin_lock_hysdn_lock_of_HYSDN_CARD(void)
{
  {
  {
  pthread_mutex_lock(& smutex_hysdn_lock_of_HYSDN_CARD);
  }
  return;
}
}
void ldv_spin_unlock_hysdn_lock_of_HYSDN_CARD(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_hysdn_lock_of_HYSDN_CARD);
  }
  return;
}
}
int ldv_spin_trylock_hysdn_lock_of_HYSDN_CARD(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_hysdn_lock_of_HYSDN_CARD);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_hysdn_lock_of_HYSDN_CARD(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_hysdn_lock_of_HYSDN_CARD(void)
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
int ldv_spin_can_lock_hysdn_lock_of_HYSDN_CARD(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_hysdn_lock_of_HYSDN_CARD();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_hysdn_lock_of_HYSDN_CARD(void)
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
int ldv_atomic_dec_and_lock_hysdn_lock_of_HYSDN_CARD(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_hysdn_lock_of_HYSDN_CARD();
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
pthread_mutex_t smutex_lock_of_hycapictrl_info ;
void ldv_spin_lock_lock_of_hycapictrl_info(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_hycapictrl_info);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_hycapictrl_info(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_hycapictrl_info);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_hycapictrl_info(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_hycapictrl_info);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_hycapictrl_info(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_hycapictrl_info(void)
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
int ldv_spin_can_lock_lock_of_hycapictrl_info(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_hycapictrl_info();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_hycapictrl_info(void)
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
int ldv_atomic_dec_and_lock_lock_of_hycapictrl_info(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_hycapictrl_info();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock_of_net_local ;
void ldv_spin_lock_lock_of_net_local(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_net_local);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_net_local(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_net_local);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_net_local(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_net_local);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_net_local(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_net_local(void)
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
int ldv_spin_can_lock_lock_of_net_local(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_net_local();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_net_local(void)
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
int ldv_atomic_dec_and_lock_lock_of_net_local(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_net_local();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lru_lock_of_netns_frags ;
void ldv_spin_lock_lru_lock_of_netns_frags(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lru_lock_of_netns_frags);
  }
  return;
}
}
void ldv_spin_unlock_lru_lock_of_netns_frags(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lru_lock_of_netns_frags);
  }
  return;
}
}
int ldv_spin_trylock_lru_lock_of_netns_frags(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lru_lock_of_netns_frags);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lru_lock_of_netns_frags(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lru_lock_of_netns_frags(void)
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
int ldv_spin_can_lock_lru_lock_of_netns_frags(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lru_lock_of_netns_frags();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lru_lock_of_netns_frags(void)
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
int ldv_atomic_dec_and_lock_lru_lock_of_netns_frags(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lru_lock_of_netns_frags();
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
pthread_mutex_t smutex_tx_global_lock_of_net_device ;
void ldv_spin_lock_tx_global_lock_of_net_device(void)
{
  {
  {
  pthread_mutex_lock(& smutex_tx_global_lock_of_net_device);
  }
  return;
}
}
void ldv_spin_unlock_tx_global_lock_of_net_device(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_tx_global_lock_of_net_device);
  }
  return;
}
}
int ldv_spin_trylock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_tx_global_lock_of_net_device);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_tx_global_lock_of_net_device(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_tx_global_lock_of_net_device(void)
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
int ldv_spin_can_lock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_tx_global_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_tx_global_lock_of_net_device(void)
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
int ldv_atomic_dec_and_lock_tx_global_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_tx_global_lock_of_net_device();
    }
    return (1);
  } else {
  }
  return (0);
}
}
