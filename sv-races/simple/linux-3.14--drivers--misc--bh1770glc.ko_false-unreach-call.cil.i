struct device;
typedef unsigned char __u8;
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
typedef unsigned int gfp_t;
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
typedef unsigned long pthread_t;
union pthread_attr_t {
   char __size[56U] ;
   long __align ;
};
typedef union pthread_attr_t pthread_attr_t;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
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
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
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
struct vm_area_struct;
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
struct pdev_archdata {
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
struct i2c_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct nsproxy;
struct cred;
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
union __anonunion____missing_field_name_144 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_144 __annonCompField36 ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
struct __anonstruct____missing_field_name_148 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_149 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField38 ;
   struct __anonstruct____missing_field_name_149 __annonCompField39 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_147 __annonCompField40 ;
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
union __anonunion____missing_field_name_150 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_156 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_155 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   int units ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField44 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_153 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_154 __annonCompField45 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_151 {
   union __anonunion____missing_field_name_152 __annonCompField42 ;
   union __anonunion____missing_field_name_153 __annonCompField46 ;
};
struct __anonstruct____missing_field_name_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_157 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_158 __annonCompField48 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_159 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_150 __annonCompField41 ;
   struct __anonstruct____missing_field_name_151 __annonCompField47 ;
   union __anonunion____missing_field_name_157 __annonCompField49 ;
   union __anonunion____missing_field_name_159 __annonCompField50 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_160 {
   struct __anonstruct_linear_161 linear ;
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
   union __anonunion_shared_160 shared ;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_162 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_162 sigset_t;
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
struct __anonstruct__kill_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_165 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_168 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_169 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_170 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_163 {
   int _pad[28U] ;
   struct __anonstruct__kill_164 _kill ;
   struct __anonstruct__timer_165 _timer ;
   struct __anonstruct__rt_166 _rt ;
   struct __anonstruct__sigchld_167 _sigchld ;
   struct __anonstruct__sigfault_168 _sigfault ;
   struct __anonstruct__sigpoll_169 _sigpoll ;
   struct __anonstruct__sigsys_170 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_163 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
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
union __anonunion____missing_field_name_173 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_174 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_176 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_175 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_176 __annonCompField53 ;
};
union __anonunion_type_data_177 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_179 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_178 {
   union __anonunion_payload_179 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_173 __annonCompField51 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_174 __annonCompField52 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_175 __annonCompField54 ;
   union __anonunion_type_data_177 type_data ;
   union __anonunion____missing_field_name_178 __annonCompField55 ;
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
struct backing_dev_info;
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
struct io_context;
struct pipe_inode_info;
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
struct files_struct;
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
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
struct i2c_driver;
struct i2c_board_info;
struct i2c_driver {
   unsigned int class ;
   int (*attach_adapter)(struct i2c_adapter * ) ;
   int (*probe)(struct i2c_client * , struct i2c_device_id const * ) ;
   int (*remove)(struct i2c_client * ) ;
   void (*shutdown)(struct i2c_client * ) ;
   int (*suspend)(struct i2c_client * , pm_message_t ) ;
   int (*resume)(struct i2c_client * ) ;
   void (*alert)(struct i2c_client * , unsigned int ) ;
   int (*command)(struct i2c_client * , unsigned int , void * ) ;
   struct device_driver driver ;
   struct i2c_device_id const *id_table ;
   int (*detect)(struct i2c_client * , struct i2c_board_info * ) ;
   unsigned short const *address_list ;
   struct list_head clients ;
};
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   int irq ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
struct bh1770_platform_data {
   __u8 led_def_curr ;
   __u32 glass_attenuation ;
   int (*setup_resources)(void) ;
   int (*release_resources)(void) ;
};
struct regulator;
struct regulator_bulk_data {
   char const *supply ;
   struct regulator *consumer ;
   int ret ;
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
struct __anonstruct____missing_field_name_182 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_183 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_181 {
   struct __anonstruct____missing_field_name_182 __annonCompField57 ;
   struct __anonstruct____missing_field_name_183 __annonCompField58 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_181 __annonCompField59 ;
};
struct bh1770_chip {
   struct bh1770_platform_data *pdata ;
   char chipname[10U] ;
   u8 revision ;
   struct i2c_client *client ;
   struct regulator_bulk_data regs[2U] ;
   struct mutex mutex ;
   wait_queue_head_t wait ;
   bool int_mode_prox ;
   bool int_mode_lux ;
   struct delayed_work prox_work ;
   u32 lux_cf ;
   u32 lux_ga ;
   u32 lux_calib ;
   int lux_rate_index ;
   u32 lux_corr ;
   u16 lux_data_raw ;
   u16 lux_threshold_hi ;
   u16 lux_threshold_lo ;
   u16 lux_thres_hi_onchip ;
   u16 lux_thres_lo_onchip ;
   bool lux_wait_result ;
   int prox_enable_count ;
   u16 prox_coef ;
   u16 prox_const ;
   int prox_rate ;
   int prox_rate_threshold ;
   u8 prox_persistence ;
   u8 prox_persistence_counter ;
   u8 prox_data ;
   u8 prox_threshold ;
   u8 prox_threshold_hw ;
   bool prox_force_update ;
   u8 prox_abs_thres ;
   u8 prox_led ;
};
struct ldv_struct_free_irq_9 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_scenario_3 {
   int arg0 ;
   irqreturn_t (*arg1)(int , void * ) ;
   irqreturn_t (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_partially_ordered_scenario_2 {
   struct i2c_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_platform_instance_5 {
   int signal_pending ;
};
struct ldv_struct_timer_scenario_6 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
struct device_private {
   void *driver_data ;
};
typedef u64 dma_addr_t;
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
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_54(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_57(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_60(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_65(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_72(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_80(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_88(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_92(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_bh1770_chip(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_bh1770_chip(struct mutex *lock ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  }
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
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
static void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_66(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_81(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_84(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_85(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_notify(struct kobject * , char const * , char const * ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
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
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_38(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_47(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_50(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_53(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_56(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_59(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_62(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_63(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_64(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_67(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_70(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_71(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_74(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_75(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_76(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_77(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_78(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_79(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_82(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_86(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_87(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_90(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_91(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_94(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_95(struct device const *dev ) ;
static int ldv_dev_set_drvdata_39(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
static int ldv_request_threaded_irq_96(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                 void * ) ,
                                       irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                       unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                       void *ldv_func_arg6 ) ;
static void ldv_free_irq_97(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern long schedule_timeout(long ) ;
extern s32 i2c_smbus_read_byte_data(struct i2c_client const * , u8 ) ;
extern s32 i2c_smbus_write_byte_data(struct i2c_client const * , u8 , u8 ) ;
extern s32 i2c_smbus_write_i2c_block_data(struct i2c_client const * , u8 , u8 ,
                                          u8 const * ) ;
__inline static void *i2c_get_clientdata(struct i2c_client const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_38(& dev->dev);
  }
  return (tmp);
}
}
__inline static void i2c_set_clientdata(struct i2c_client *dev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_39(& dev->dev, data);
  }
  return;
}
}
static int ldv_i2c_register_driver_98(struct module *ldv_func_arg1 , struct i2c_driver *ldv_func_arg2 ) ;
extern void i2c_del_driver(struct i2c_driver * ) ;
extern int regulator_bulk_get(struct device * , int , struct regulator_bulk_data * ) ;
extern int regulator_bulk_enable(int , struct regulator_bulk_data * ) ;
extern int regulator_bulk_disable(int , struct regulator_bulk_data * ) ;
extern void regulator_bulk_free(int , struct regulator_bulk_data * ) ;
extern int __pm_runtime_idle(struct device * , int ) ;
extern int __pm_runtime_resume(struct device * , int ) ;
extern int __pm_runtime_set_status(struct device * , unsigned int ) ;
extern void pm_runtime_enable(struct device * ) ;
extern void __pm_runtime_disable(struct device * , bool ) ;
int chip_lux_wait_result;
__inline static bool pm_runtime_suspended(struct device *dev )
{
  {
  return ((bool )((unsigned int )dev->power.runtime_status == 2U && (unsigned int )*((unsigned char *)dev + 1040UL) == 0U));
}
}
__inline static int pm_runtime_get_sync(struct device *dev )
{
  int tmp ;
  {
  {
  tmp = __pm_runtime_resume(dev, 4);
  }
  return (tmp);
}
}
__inline static int pm_runtime_put(struct device *dev )
{
  int tmp ;
  {
  {
  tmp = __pm_runtime_idle(dev, 5);
  }
  return (tmp);
}
}
__inline static int pm_runtime_set_active(struct device *dev )
{
  int tmp ;
  {
  {
  tmp = __pm_runtime_set_status(dev, 0U);
  }
  return (tmp);
}
}
__inline static void pm_runtime_set_suspended(struct device *dev )
{
  {
  {
  __pm_runtime_set_status(dev, 2U);
  }
  return;
}
}
__inline static void pm_runtime_disable(struct device *dev )
{
  {
  {
  __pm_runtime_disable(dev, 1);
  }
  return;
}
}
extern void usleep_range(unsigned long , unsigned long ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
static char const reg_vcc[4U] = { 'V', 'c', 'c', '\000'};
static char const reg_vleds[6U] = { 'V', 'l', 'e', 'd',
        's', '\000'};
static s16 const prox_rates_hz[8U] =
  { 100, 50, 33, 25,
        14, 10, 5, 2};
static s16 const prox_rates_ms[8U] =
  { 10, 20, 30, 40,
        70, 100, 200, 500};
static s16 const lux_rates_hz[5U] = { 10, 5, 2, 1,
        0};
__inline static int bh1770_lux_interrupt_control(struct bh1770_chip *chip , int lux )
{
  s32 tmp ;
  {
  {
  chip->int_mode_lux = lux != 0;
  tmp = i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 146,
                                  (int )((u8 )((int )((signed char )(lux << 1)) | (int )((signed char )chip->int_mode_prox))));
  }
  return (tmp);
}
}
__inline static int bh1770_prox_interrupt_control(struct bh1770_chip *chip , int ps )
{
  s32 tmp ;
  {
  {
  chip->int_mode_prox = ps != 0;
  tmp = i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 146,
                                  (int )((u8 )((int )((signed char )((int )chip->int_mode_lux << 1)) | (int )((signed char )ps))));
  }
  return (tmp);
}
}
static int bh1770_lux_rate(struct bh1770_chip *chip , int rate_index )
{
  bool tmp ;
  s32 tmp___0 ;
  {
  {
  tmp = pm_runtime_suspended(& (chip->client)->dev);
  }
  if ((int )tmp) {
    return (0);
  } else {
  }
  if (chip->prox_enable_count != 0) {
    rate_index = 0;
  } else {
  }
  {
  tmp___0 = i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 134,
                                      (int )((u8 )rate_index));
  }
  return (tmp___0);
}
}
static int bh1770_prox_rate(struct bh1770_chip *chip , int mode )
{
  int rate ;
  s32 tmp ;
  {
  {
  rate = mode == 1 ? chip->prox_rate_threshold : chip->prox_rate;
  tmp = i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 133,
                                  (int )((u8 )rate));
  }
  return (tmp);
}
}
__inline static int bh1770_led_cfg(struct bh1770_chip *chip )
{
  s32 tmp ;
  {
  {
  tmp = i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 130,
                                  (int )chip->prox_led);
  }
  return (tmp);
}
}
__inline static u8 bh1770_psraw_to_adjusted(struct bh1770_chip *chip , u8 psraw )
{
  u16 adjusted ;
  {
  adjusted = (unsigned short )(((unsigned int )((int )psraw + (int )chip->prox_const) * (unsigned int )chip->prox_coef) / 1024U);
  if ((unsigned int )adjusted > 255U) {
    adjusted = 255U;
  } else {
  }
  return ((u8 )adjusted);
}
}
__inline static u8 bh1770_psadjusted_to_raw(struct bh1770_chip *chip , u8 ps )
{
  u16 raw ;
  {
  raw = (u16 )(((unsigned int )ps * 1024U) / (unsigned int )chip->prox_coef);
  if ((int )raw > (int )chip->prox_const) {
    raw = (int )raw - (int )chip->prox_const;
  } else {
    raw = 0U;
  }
  return ((u8 )raw);
}
}
static int bh1770_prox_set_threshold(struct bh1770_chip *chip )
{
  u8 tmp ;
  bool tmp___0 ;
  s32 tmp___1 ;
  {
  {
  tmp = 0U;
  tmp___0 = pm_runtime_suspended(& (chip->client)->dev);
  }
  if ((int )tmp___0) {
    return (0);
  } else {
  }
  {
  tmp = bh1770_psadjusted_to_raw(chip, (int )chip->prox_threshold);
  chip->prox_threshold_hw = tmp;
  tmp___1 = i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 147,
                                      (int )tmp);
  }
  return (tmp___1);
}
}
__inline static u16 bh1770_lux_raw_to_adjusted(struct bh1770_chip *chip , u16 raw )
{
  u32 lux ;
  u32 _min1 ;
  unsigned int _min2 ;
  {
  lux = ((unsigned int )raw * chip->lux_corr) / 4096U;
  _min1 = lux;
  _min2 = 65535U;
  return ((u16 )(_min1 < _min2 ? _min1 : _min2));
}
}
__inline static u16 bh1770_lux_adjusted_to_raw(struct bh1770_chip *chip , u16 adjusted )
{
  {
  return ((u16 )(((unsigned int )adjusted * 4096U) / chip->lux_corr));
}
}
static int bh1770_lux_update_thresholds(struct bh1770_chip *chip , u16 threshold_hi ,
                                        u16 threshold_lo )
{
  u8 data[4U] ;
  int ret ;
  bool tmp ;
  {
  {
  tmp = pm_runtime_suspended(& (chip->client)->dev);
  }
  if ((int )tmp) {
    return (0);
  } else {
  }
  if ((unsigned int )threshold_hi - 1U <= 65533U) {
    {
    threshold_hi = bh1770_lux_adjusted_to_raw(chip, (int )threshold_hi);
    }
  } else {
  }
  if ((unsigned int )threshold_lo - 1U <= 65533U) {
    {
    threshold_lo = bh1770_lux_adjusted_to_raw(chip, (int )threshold_lo);
    }
  } else {
  }
  if ((int )chip->lux_thres_hi_onchip == (int )threshold_hi && (int )chip->lux_thres_lo_onchip == (int )threshold_lo) {
    return (0);
  } else {
  }
  {
  chip->lux_thres_hi_onchip = threshold_hi;
  chip->lux_thres_lo_onchip = threshold_lo;
  data[0] = (u8 )threshold_hi;
  data[1] = (u8 )((int )threshold_hi >> 8);
  data[2] = (u8 )threshold_lo;
  data[3] = (u8 )((int )threshold_lo >> 8);
  ret = i2c_smbus_write_i2c_block_data((struct i2c_client const *)chip->client,
                                       150, 4, (u8 const *)(& data));
  }
  return (ret);
}
}
static int bh1770_lux_get_result(struct bh1770_chip *chip )
{
  u16 data ;
  int ret ;
  {
  {
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)chip->client, 140);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  data = (unsigned int )((u16 )ret) & 255U;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)chip->client, 141);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  chip->lux_data_raw = (u16 )((int )((short )data) | (int )((short )(ret << 8)));
  return (0);
}
}
static u32 bh1770_get_corr_value(struct bh1770_chip *chip )
{
  u32 tmp ;
  {
  tmp = (chip->lux_ga * 4096U) / 16384U;
  tmp = (tmp * chip->lux_cf) / 2048U;
  tmp = (tmp * chip->lux_calib) / 8192U;
  return (tmp);
}
}
static int bh1770_lux_read_result(struct bh1770_chip *chip )
{
  u16 tmp ;
  {
  {
  bh1770_lux_get_result(chip);
  tmp = bh1770_lux_raw_to_adjusted(chip, (int )chip->lux_data_raw);
  }
  return ((int )tmp);
}
}
static int bh1770_chip_on(struct bh1770_chip *chip )
{
  int ret ;
  int tmp ;
  {
  {
  tmp = regulator_bulk_enable(2, (struct regulator_bulk_data *)(& chip->regs));
  ret = tmp;
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  usleep_range(50UL, 100UL);
  i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 128, 4);
  usleep_range(10UL, 20UL);
  chip->lux_data_raw = 0U;
  chip->prox_data = 0U;
  ret = i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 128,
                                  3);
  chip->lux_thres_hi_onchip = 65535U;
  chip->lux_thres_lo_onchip = 0U;
  }
  return (ret);
}
}
static void bh1770_chip_off(struct bh1770_chip *chip )
{
  {
  {
  i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 146, 0);
  i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 128, 0);
  i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 129, 0);
  regulator_bulk_disable(2, (struct regulator_bulk_data *)(& chip->regs));
  }
  return;
}
}
static int bh1770_prox_mode_control(struct bh1770_chip *chip )
{
  {
  if (chip->prox_enable_count != 0) {
    {
    chip->prox_force_update = 1;
    bh1770_lux_rate(chip, chip->lux_rate_index);
    bh1770_prox_set_threshold(chip);
    bh1770_led_cfg(chip);
    bh1770_prox_rate(chip, 0);
    bh1770_prox_interrupt_control(chip, 1);
    i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 129, 3);
    }
  } else {
    {
    chip->prox_data = 0U;
    bh1770_lux_rate(chip, chip->lux_rate_index);
    bh1770_prox_interrupt_control(chip, 0);
    i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 129, 0);
    }
  }
  return (0);
}
}
static int bh1770_prox_read_result(struct bh1770_chip *chip )
{
  int ret ;
  bool above ;
  u8 mode ;
  long tmp ;
  {
  {
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)chip->client, 143);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  if (ret > (int )chip->prox_threshold_hw) {
    above = 1;
  } else {
    above = 0;
  }
  if ((unsigned int )chip->lux_data_raw > 500U) {
    ret = 0;
  } else {
  }
  {
  chip->prox_data = bh1770_psraw_to_adjusted(chip, (int )((u8 )ret));
  }
  if ((int )chip->prox_data >= (int )chip->prox_abs_thres || (int )chip->prox_force_update) {
    chip->prox_persistence_counter = chip->prox_persistence;
  } else {
  }
  {
  chip->prox_force_update = 0;
  tmp = __builtin_expect((long )above, 1L);
  }
  if (tmp != 0L) {
    if ((int )chip->prox_persistence_counter < (int )chip->prox_persistence) {
      chip->prox_persistence_counter = (u8 )((int )chip->prox_persistence_counter + 1);
      ret = -61;
    } else {
      mode = 1U;
      ret = 0;
    }
  } else {
    chip->prox_persistence_counter = 0U;
    mode = 0U;
    chip->prox_data = 0U;
    ret = 0;
  }
  if (ret == 0) {
    {
    bh1770_prox_rate(chip, (int )mode);
    sysfs_notify(& (chip->client)->dev.kobj, (char const *)0, "prox0_raw");
    }
  } else {
  }
  out: ;
  return (ret);
}
}
static int bh1770_detect(struct bh1770_chip *chip )
{
  struct i2c_client *client ;
  s32 ret ;
  u8 manu ;
  u8 part ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  client = chip->client;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)client, 139);
  }
  if (ret < 0) {
    goto error;
  } else {
  }
  {
  manu = (unsigned char )ret;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)client, 138);
  }
  if (ret < 0) {
    goto error;
  } else {
  }
  part = (unsigned char )ret;
  chip->revision = (unsigned int )part & 15U;
  chip->prox_coef = 1024U;
  chip->prox_const = 0U;
  chip->lux_cf = 2048U;
  if ((unsigned int )manu == 1U && ((int )part & 240) == 144) {
    {
    snprintf((char *)(& chip->chipname), 10UL, "BH1770GLC");
    }
    return (0);
  } else {
  }
  if ((unsigned int )manu == 3U && ((int )part & 240) == 144) {
    {
    snprintf((char *)(& chip->chipname), 10UL, "SFH7770");
    chip->prox_coef = 819U;
    chip->prox_const = 40U;
    }
    return (0);
  } else {
  }
  ret = -19;
  error:
  {
  descriptor.modname = "bh1770glc";
  descriptor.function = "bh1770_detect";
  descriptor.filename = "drivers/misc/bh1770glc.c";
  descriptor.format = "BH1770 or SFH7770 not found\n";
  descriptor.lineno = 560U;
  descriptor.flags = 0U;
  tmp = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& client->dev), "BH1770 or SFH7770 not found\n");
    }
  } else {
  }
  return (ret);
}
}
static void bh1770_prox_work(struct work_struct *work )
{
  struct bh1770_chip *chip ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  chip = (struct bh1770_chip *)(__mptr + 0xfffffffffffffea8UL);
  ldv_mutex_lock_43(& chip->mutex);
  bh1770_prox_read_result(chip);
  ldv_mutex_unlock_44(& chip->mutex);
  }
  return;
}
}
static irqreturn_t bh1770_irq(int irq , void *data )
{
  struct bh1770_chip *chip ;
  int status ;
  int rate ;
  long tmp ;
  unsigned long tmp___0 ;
  {
  {
  chip = (struct bh1770_chip *)data;
  rate = 0;
  ldv_mutex_lock_45(& chip->mutex);
  status = i2c_smbus_read_byte_data((struct i2c_client const *)chip->client, 142);
  i2c_smbus_read_byte_data((struct i2c_client const *)chip->client, 146);
  }
  if ((status & 64) != 0) {
    {
    bh1770_lux_get_result(chip);
    tmp = __builtin_expect((long )chip->lux_wait_result, 0L);
    }
    if (tmp != 0L) {
      {
      chip->lux_wait_result = 2;
      __wake_up(& chip->wait, 3U, 1, (void *)0);
      bh1770_lux_update_thresholds(chip, (int )chip->lux_threshold_hi, (int )chip->lux_threshold_lo);
      }
    } else {
    }
  } else {
  }
  {
  i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 146, 0);
  }
  if ((status & 128) != 0) {
    {
    sysfs_notify(& (chip->client)->dev.kobj, (char const *)0, "lux0_input");
    }
  } else {
  }
  if ((int )chip->int_mode_prox && (status & 42) != 0) {
    {
    rate = (int )prox_rates_ms[chip->prox_rate_threshold];
    bh1770_prox_read_result(chip);
    }
  } else {
  }
  {
  i2c_smbus_write_byte_data((struct i2c_client const *)chip->client, 146, (int )((u8 )((int )((signed char )((int )chip->int_mode_lux << 1)) | (int )((signed char )chip->int_mode_prox))));
  ldv_mutex_unlock_46(& chip->mutex);
  }
  if (rate != 0) {
    {
    cancel_delayed_work_sync(& chip->prox_work);
    tmp___0 = msecs_to_jiffies((unsigned int const )(rate + 50));
    schedule_delayed_work(& chip->prox_work, tmp___0);
    }
  } else {
  }
  return (1);
}
}
static ssize_t bh1770_power_state_store(struct device *dev , struct device_attribute *attr ,
                                        char const *buf , size_t count )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  unsigned long value ;
  ssize_t ret ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = ldv_dev_get_drvdata_47((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = kstrtoul(buf, 0U, & value);
  ret = (ssize_t )tmp___0;
  }
  if (ret != 0L) {
    return (ret);
  } else {
  }
  {
  ldv_mutex_lock_48(& chip->mutex);
  }
  if (value != 0UL) {
    {
    pm_runtime_get_sync(dev);
    tmp___1 = bh1770_lux_rate(chip, chip->lux_rate_index);
    ret = (ssize_t )tmp___1;
    }
    if (ret < 0L) {
      {
      pm_runtime_put(dev);
      }
      goto leave;
    } else {
    }
    {
    tmp___2 = bh1770_lux_interrupt_control(chip, 1);
    ret = (ssize_t )tmp___2;
    }
    if (ret < 0L) {
      {
      pm_runtime_put(dev);
      }
      goto leave;
    } else {
    }
    {
    bh1770_lux_update_thresholds(chip, 1000, 1000);
    chip->lux_wait_result = 1;
    bh1770_prox_mode_control(chip);
    }
  } else {
    {
    tmp___3 = pm_runtime_suspended(dev);
    }
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    if (tmp___4) {
      {
      pm_runtime_put(dev);
      }
    } else {
    }
  }
  ret = (ssize_t )count;
  leave:
  {
  ldv_mutex_unlock_49(& chip->mutex);
  }
  return (ret);
}
}
static ssize_t bh1770_power_state_show(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = pm_runtime_suspended(dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  {
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t bh1770_lux_result_show(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  ssize_t ret ;
  long timeout ;
  bool tmp___0 ;
  long __ret ;
  unsigned long tmp___1 ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___2 ;
  long __int ;
  long tmp___3 ;
  bool __cond ;
  bool __cond___0 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = ldv_dev_get_drvdata_50((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = pm_runtime_suspended(dev);
  }
  if ((int )tmp___0) {
    return (-5L);
  } else {
  }
  {
  tmp___1 = msecs_to_jiffies(2100U);
  __ret = (long )tmp___1;
  __cond___0 = (bool )(! ((int )chip->lux_wait_result != 0));
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    tmp___2 = msecs_to_jiffies(2100U);
    __ret___0 = (long )tmp___2;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_23673:
    {
    tmp___3 = prepare_to_wait_event(& chip->wait, & __wait, 1);
    __int = tmp___3;
    __cond = (bool )(! ((int )chip->lux_wait_result != 0));
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_23672;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_23672;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_23673;
    ldv_23672:
    {
    finish_wait(& chip->wait, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  timeout = __ret;
  if (timeout == 0L) {
    return (-5L);
  } else {
  }
  {
  ldv_mutex_lock_51(& chip->mutex);
  tmp___4 = bh1770_lux_read_result(chip);
  tmp___5 = sprintf(buf, "%d\n", tmp___4);
  ret = (ssize_t )tmp___5;
  ldv_mutex_unlock_52(& chip->mutex);
  }
  return (ret);
}
}
static ssize_t bh1770_lux_range_show(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  int tmp ;
  {
  {
  tmp = sprintf(buf, "%d\n", 65535);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t bh1770_prox_enable_store(struct device *dev , struct device_attribute *attr ,
                                        char const *buf , size_t count )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  unsigned long value ;
  int ret ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = ldv_dev_get_drvdata_53((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ret = kstrtoul(buf, 0U, & value);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  {
  ldv_mutex_lock_54(& chip->mutex);
  }
  if (chip->prox_enable_count == 0) {
    chip->prox_data = 0U;
  } else {
  }
  if (value != 0UL) {
    chip->prox_enable_count = chip->prox_enable_count + 1;
  } else
  if (chip->prox_enable_count > 0) {
    chip->prox_enable_count = chip->prox_enable_count - 1;
  } else {
    goto leave;
  }
  {
  tmp___0 = pm_runtime_suspended(dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    bh1770_prox_mode_control(chip);
    }
  } else {
  }
  leave:
  {
  ldv_mutex_unlock_55(& chip->mutex);
  }
  return ((ssize_t )count);
}
}
static ssize_t bh1770_prox_enable_show(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  ssize_t len ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_56((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ldv_mutex_lock_57(& chip->mutex);
  tmp___0 = sprintf(buf, "%d\n", chip->prox_enable_count);
  len = (ssize_t )tmp___0;
  ldv_mutex_unlock_58(& chip->mutex);
  }
  return (len);
}
}
static ssize_t bh1770_prox_result_show(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  ssize_t ret ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = ldv_dev_get_drvdata_59((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ldv_mutex_lock_60(& chip->mutex);
  }
  if (chip->prox_enable_count != 0) {
    {
    tmp___1 = pm_runtime_suspended(dev);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      {
      tmp___0 = sprintf(buf, "%d\n", (int )chip->prox_data);
      ret = (ssize_t )tmp___0;
      }
    } else {
      ret = -5L;
    }
  } else {
    ret = -5L;
  }
  {
  ldv_mutex_unlock_61(& chip->mutex);
  }
  return (ret);
}
}
static ssize_t bh1770_prox_range_show(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  int tmp ;
  {
  {
  tmp = sprintf(buf, "%d\n", 255);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t bh1770_get_prox_rate_avail(struct device *dev , struct device_attribute *attr ,
                                          char *buf )
{
  int i ;
  int pos ;
  int tmp ;
  {
  pos = 0;
  i = 0;
  goto ldv_23720;
  ldv_23719:
  {
  tmp = sprintf(buf + (unsigned long )pos, "%d ", (int )prox_rates_hz[i]);
  pos = pos + tmp;
  i = i + 1;
  }
  ldv_23720: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_23719;
  } else {
  }
  {
  sprintf(buf + ((unsigned long )pos + 0xffffffffffffffffUL), "\n");
  }
  return ((ssize_t )pos);
}
}
static ssize_t bh1770_get_prox_rate_above(struct device *dev , struct device_attribute *attr ,
                                          char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_62((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )prox_rates_hz[chip->prox_rate_threshold]);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t bh1770_get_prox_rate_below(struct device *dev , struct device_attribute *attr ,
                                          char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_63((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )prox_rates_hz[chip->prox_rate]);
  }
  return ((ssize_t )tmp___0);
}
}
static int bh1770_prox_rate_validate(int rate )
{
  int i ;
  {
  i = 0;
  goto ldv_23742;
  ldv_23741: ;
  if (rate >= (int )prox_rates_hz[i]) {
    goto ldv_23740;
  } else {
  }
  i = i + 1;
  ldv_23742: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_23741;
  } else {
  }
  ldv_23740: ;
  return (i);
}
}
static ssize_t bh1770_set_prox_rate_above(struct device *dev , struct device_attribute *attr ,
                                          char const *buf , size_t count )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  unsigned long value ;
  int ret ;
  {
  {
  tmp = ldv_dev_get_drvdata_64((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ret = kstrtoul(buf, 0U, & value);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  {
  ldv_mutex_lock_65(& chip->mutex);
  chip->prox_rate_threshold = bh1770_prox_rate_validate((int )value);
  ldv_mutex_unlock_66(& chip->mutex);
  }
  return ((ssize_t )count);
}
}
static ssize_t bh1770_set_prox_rate_below(struct device *dev , struct device_attribute *attr ,
                                          char const *buf , size_t count )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  unsigned long value ;
  int ret ;
  {
  {
  tmp = ldv_dev_get_drvdata_67((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ret = kstrtoul(buf, 0U, & value);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  {
  ldv_mutex_lock_68(& chip->mutex);
  chip->prox_rate = bh1770_prox_rate_validate((int )value);
  ldv_mutex_unlock_69(& chip->mutex);
  }
  return ((ssize_t )count);
}
}
static ssize_t bh1770_get_prox_thres(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_70((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )chip->prox_threshold);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t bh1770_set_prox_thres(struct device *dev , struct device_attribute *attr ,
                                     char const *buf , size_t count )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  unsigned long value ;
  int ret ;
  {
  {
  tmp = ldv_dev_get_drvdata_71((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ret = kstrtoul(buf, 0U, & value);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  if (value > 255UL) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_72(& chip->mutex);
  chip->prox_threshold = (u8 )value;
  ret = bh1770_prox_set_threshold(chip);
  ldv_mutex_unlock_73(& chip->mutex);
  }
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t bh1770_prox_persistence_show(struct device *dev , struct device_attribute *attr ,
                                            char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_74((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = sprintf(buf, "%u\n", (int )chip->prox_persistence);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t bh1770_prox_persistence_store(struct device *dev , struct device_attribute *attr ,
                                             char const *buf , size_t len )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  unsigned long value ;
  int ret ;
  {
  {
  tmp = ldv_dev_get_drvdata_75((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ret = kstrtoul(buf, 0U, & value);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  if (value > 50UL) {
    return (-22L);
  } else {
  }
  chip->prox_persistence = (u8 )value;
  return ((ssize_t )len);
}
}
static ssize_t bh1770_prox_abs_thres_show(struct device *dev , struct device_attribute *attr ,
                                          char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_76((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = sprintf(buf, "%u\n", (int )chip->prox_abs_thres);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t bh1770_prox_abs_thres_store(struct device *dev , struct device_attribute *attr ,
                                           char const *buf , size_t len )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  unsigned long value ;
  int ret ;
  {
  {
  tmp = ldv_dev_get_drvdata_77((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ret = kstrtoul(buf, 0U, & value);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  if (value > 255UL) {
    return (-22L);
  } else {
  }
  chip->prox_abs_thres = (u8 )value;
  return ((ssize_t )len);
}
}
static ssize_t bh1770_chip_id_show(struct device *dev , struct device_attribute *attr ,
                                   char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_78((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = sprintf(buf, "%s rev %d\n", (char *)(& chip->chipname), (int )chip->revision);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t bh1770_lux_calib_default_show(struct device *dev , struct device_attribute *attr ,
                                             char *buf )
{
  int tmp ;
  {
  {
  tmp = sprintf(buf, "%u\n", 8192);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t bh1770_lux_calib_show(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  ssize_t len ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_79((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ldv_mutex_lock_80(& chip->mutex);
  tmp___0 = sprintf(buf, "%u\n", chip->lux_calib);
  len = (ssize_t )tmp___0;
  ldv_mutex_unlock_81(& chip->mutex);
  }
  return (len);
}
}
static ssize_t bh1770_lux_calib_store(struct device *dev , struct device_attribute *attr ,
                                      char const *buf , size_t len )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  unsigned long value ;
  u32 old_calib ;
  u32 new_corr ;
  int ret ;
  {
  {
  tmp = ldv_dev_get_drvdata_82((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ret = kstrtoul(buf, 0U, & value);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  {
  ldv_mutex_lock_83(& chip->mutex);
  old_calib = chip->lux_calib;
  chip->lux_calib = (u32 )value;
  new_corr = bh1770_get_corr_value(chip);
  }
  if (new_corr == 0U) {
    {
    chip->lux_calib = old_calib;
    ldv_mutex_unlock_84(& chip->mutex);
    }
    return (-22L);
  } else {
  }
  {
  chip->lux_corr = new_corr;
  bh1770_lux_update_thresholds(chip, (int )chip->lux_threshold_hi, (int )chip->lux_threshold_lo);
  ldv_mutex_unlock_85(& chip->mutex);
  }
  return ((ssize_t )len);
}
}
static ssize_t bh1770_get_lux_rate_avail(struct device *dev , struct device_attribute *attr ,
                                         char *buf )
{
  int i ;
  int pos ;
  int tmp ;
  {
  pos = 0;
  i = 0;
  goto ldv_23845;
  ldv_23844:
  {
  tmp = sprintf(buf + (unsigned long )pos, "%d ", (int )lux_rates_hz[i]);
  pos = pos + tmp;
  i = i + 1;
  }
  ldv_23845: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_23844;
  } else {
  }
  {
  sprintf(buf + ((unsigned long )pos + 0xffffffffffffffffUL), "\n");
  }
  return ((ssize_t )pos);
}
}
static ssize_t bh1770_get_lux_rate(struct device *dev , struct device_attribute *attr ,
                                   char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_86((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )lux_rates_hz[chip->lux_rate_index]);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t bh1770_set_lux_rate(struct device *dev , struct device_attribute *attr ,
                                   char const *buf , size_t count )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  unsigned long rate_hz ;
  int ret ;
  int i ;
  {
  {
  tmp = ldv_dev_get_drvdata_87((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  ret = kstrtoul(buf, 0U, & rate_hz);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  i = 0;
  goto ldv_23867;
  ldv_23866: ;
  if (rate_hz >= (unsigned long )lux_rates_hz[i]) {
    goto ldv_23865;
  } else {
  }
  i = i + 1;
  ldv_23867: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_23866;
  } else {
  }
  ldv_23865:
  {
  ldv_mutex_lock_88(& chip->mutex);
  chip->lux_rate_index = i;
  ret = bh1770_lux_rate(chip, i);
  ldv_mutex_unlock_89(& chip->mutex);
  }
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t bh1770_get_lux_thresh_above(struct device *dev , struct device_attribute *attr ,
                                           char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_90((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )chip->lux_threshold_hi);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t bh1770_get_lux_thresh_below(struct device *dev , struct device_attribute *attr ,
                                           char *buf )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_91((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )chip->lux_threshold_lo);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t bh1770_set_lux_thresh(struct bh1770_chip *chip , u16 *target , char const *buf )
{
  unsigned long thresh ;
  int ret ;
  {
  {
  ret = kstrtoul(buf, 0U, & thresh);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  if (thresh > 65535UL) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_92(& chip->mutex);
  *target = (u16 )thresh;
  }
  if (! chip->lux_wait_result) {
    {
    ret = bh1770_lux_update_thresholds(chip, (int )chip->lux_threshold_hi, (int )chip->lux_threshold_lo);
    }
  } else {
  }
  {
  ldv_mutex_unlock_93(& chip->mutex);
  }
  return ((ssize_t )ret);
}
}
static ssize_t bh1770_set_lux_thresh_above(struct device *dev , struct device_attribute *attr ,
                                           char const *buf , size_t len )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int ret ;
  ssize_t tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_94((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = bh1770_set_lux_thresh(chip, & chip->lux_threshold_hi, buf);
  ret = (int )tmp___0;
  }
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )len);
}
}
static ssize_t bh1770_set_lux_thresh_below(struct device *dev , struct device_attribute *attr ,
                                           char const *buf , size_t len )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  int ret ;
  ssize_t tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_95((struct device const *)dev);
  chip = (struct bh1770_chip *)tmp;
  tmp___0 = bh1770_set_lux_thresh(chip, & chip->lux_threshold_lo, buf);
  ret = (int )tmp___0;
  }
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )len);
}
}
static struct device_attribute dev_attr_prox0_raw_en = {{"prox0_raw_en", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_prox_enable_show, & bh1770_prox_enable_store};
static struct device_attribute dev_attr_prox0_thresh_above1_value = {{"prox0_thresh_above1_value", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & bh1770_prox_abs_thres_show,
    & bh1770_prox_abs_thres_store};
static struct device_attribute dev_attr_prox0_thresh_above0_value = {{"prox0_thresh_above0_value", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & bh1770_get_prox_thres,
    & bh1770_set_prox_thres};
static struct device_attribute dev_attr_prox0_raw = {{"prox0_raw", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_prox_result_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                            char const * , size_t ))0};
static struct device_attribute dev_attr_prox0_sensor_range = {{"prox0_sensor_range", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_prox_range_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                           char const * , size_t ))0};
static struct device_attribute dev_attr_prox0_thresh_above_count = {{"prox0_thresh_above_count", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & bh1770_prox_persistence_show,
    & bh1770_prox_persistence_store};
static struct device_attribute dev_attr_prox0_rate_above = {{"prox0_rate_above", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_get_prox_rate_above, & bh1770_set_prox_rate_above};
static struct device_attribute dev_attr_prox0_rate_below = {{"prox0_rate_below", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_get_prox_rate_below, & bh1770_set_prox_rate_below};
static struct device_attribute dev_attr_prox0_rate_avail = {{"prox0_rate_avail", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_get_prox_rate_avail, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0};
static struct device_attribute dev_attr_lux0_calibscale = {{"lux0_calibscale", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_lux_calib_show, & bh1770_lux_calib_store};
static struct device_attribute dev_attr_lux0_calibscale_default = {{"lux0_calibscale_default", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                     {(char)0}, {(char)0}, {(char)0},
                                                     {(char)0}, {(char)0}}}}, & bh1770_lux_calib_default_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_lux0_input = {{"lux0_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_lux_result_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                           char const * , size_t ))0};
static struct device_attribute dev_attr_lux0_sensor_range = {{"lux0_sensor_range", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_lux_range_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                          char const * , size_t ))0};
static struct device_attribute dev_attr_lux0_rate = {{"lux0_rate", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_get_lux_rate, & bh1770_set_lux_rate};
static struct device_attribute dev_attr_lux0_rate_avail = {{"lux0_rate_avail", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_get_lux_rate_avail, (ssize_t (*)(struct device * , struct device_attribute * ,
                                              char const * , size_t ))0};
static struct device_attribute dev_attr_lux0_thresh_above_value = {{"lux0_thresh_above_value", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                     {(char)0}, {(char)0}, {(char)0},
                                                     {(char)0}, {(char)0}}}}, & bh1770_get_lux_thresh_above,
    & bh1770_set_lux_thresh_above};
static struct device_attribute dev_attr_lux0_thresh_below_value = {{"lux0_thresh_below_value", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                     {(char)0}, {(char)0}, {(char)0},
                                                     {(char)0}, {(char)0}}}}, & bh1770_get_lux_thresh_below,
    & bh1770_set_lux_thresh_below};
static struct device_attribute dev_attr_chip_id = {{"chip_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & bh1770_chip_id_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_power_state = {{"power_state", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bh1770_power_state_show, & bh1770_power_state_store};
static struct attribute *sysfs_attrs[20U] =
  { & dev_attr_lux0_calibscale.attr, & dev_attr_lux0_calibscale_default.attr, & dev_attr_lux0_input.attr, & dev_attr_lux0_sensor_range.attr,
        & dev_attr_lux0_rate.attr, & dev_attr_lux0_rate_avail.attr, & dev_attr_lux0_thresh_above_value.attr, & dev_attr_lux0_thresh_below_value.attr,
        & dev_attr_prox0_raw.attr, & dev_attr_prox0_sensor_range.attr, & dev_attr_prox0_raw_en.attr, & dev_attr_prox0_thresh_above_count.attr,
        & dev_attr_prox0_rate_above.attr, & dev_attr_prox0_rate_below.attr, & dev_attr_prox0_rate_avail.attr, & dev_attr_prox0_thresh_above0_value.attr,
        & dev_attr_prox0_thresh_above1_value.attr, & dev_attr_chip_id.attr, & dev_attr_power_state.attr, (struct attribute *)0};
static struct attribute_group bh1770_attribute_group = {0, 0, (struct attribute **)(& sysfs_attrs), 0};
static int bh1770_probe(struct i2c_client *client , struct i2c_device_id const *id )
{
  struct bh1770_chip *chip ;
  int err ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___2 ;
  {
  {
  tmp = kzalloc(624UL, 208U);
  chip = (struct bh1770_chip *)tmp;
  }
  if ((unsigned long )chip == (unsigned long )((struct bh1770_chip *)0)) {
    return (-12);
  } else {
  }
  {
  i2c_set_clientdata(client, (void *)chip);
  chip->client = client;
  __mutex_init(& chip->mutex, "&chip->mutex", & __key);
  __init_waitqueue_head(& chip->wait, "&chip->wait", & __key___0);
  __init_work(& chip->prox_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  chip->prox_work.work.data = __constr_expr_0;
  lockdep_init_map(& chip->prox_work.work.lockdep_map, "(&(&chip->prox_work)->work)",
                   & __key___1, 0);
  INIT_LIST_HEAD(& chip->prox_work.work.entry);
  chip->prox_work.work.func = & bh1770_prox_work;
  init_timer_key(& chip->prox_work.timer, 2U, "(&(&chip->prox_work)->timer)", & __key___2);
  chip->prox_work.timer.function = & delayed_work_timer_fn;
  chip->prox_work.timer.data = (unsigned long )(& chip->prox_work);
  }
  if ((unsigned long )client->dev.platform_data == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& client->dev), "platform data is mandatory\n");
    err = -22;
    }
    goto fail1;
  } else {
  }
  chip->pdata = (struct bh1770_platform_data *)client->dev.platform_data;
  chip->lux_calib = 8192U;
  chip->lux_rate_index = 1;
  chip->lux_threshold_lo = 1000U;
  chip->lux_threshold_hi = 1000U;
  if ((chip->pdata)->glass_attenuation == 0U) {
    chip->lux_ga = 16384U;
  } else {
    chip->lux_ga = (chip->pdata)->glass_attenuation;
  }
  {
  chip->prox_threshold = 70U;
  chip->prox_led = (chip->pdata)->led_def_curr;
  chip->prox_abs_thres = 100U;
  chip->prox_persistence = 10U;
  chip->prox_rate_threshold = 6;
  chip->prox_rate = 1;
  chip->prox_data = 0U;
  chip->regs[0].supply = (char const *)(& reg_vcc);
  chip->regs[1].supply = (char const *)(& reg_vleds);
  err = regulator_bulk_get(& client->dev, 2, (struct regulator_bulk_data *)(& chip->regs));
  }
  if (err < 0) {
    {
    dev_err((struct device const *)(& client->dev), "Cannot get regulators\n");
    }
    goto fail1;
  } else {
  }
  {
  err = regulator_bulk_enable(2, (struct regulator_bulk_data *)(& chip->regs));
  }
  if (err < 0) {
    {
    dev_err((struct device const *)(& client->dev), "Cannot enable regulators\n");
    }
    goto fail2;
  } else {
  }
  {
  usleep_range(50UL, 100UL);
  err = bh1770_detect(chip);
  }
  if (err < 0) {
    goto fail3;
  } else {
  }
  {
  bh1770_chip_on(chip);
  pm_runtime_set_active(& client->dev);
  pm_runtime_enable(& client->dev);
  chip->lux_corr = bh1770_get_corr_value(chip);
  }
  if (chip->lux_corr == 0U) {
    {
    dev_err((struct device const *)(& client->dev), "Improper correction values\n");
    err = -22;
    }
    goto fail3;
  } else {
  }
  if ((unsigned long )(chip->pdata)->setup_resources != (unsigned long )((int (*)(void))0)) {
    {
    err = (*((chip->pdata)->setup_resources))();
    }
    if (err != 0) {
      err = -22;
      goto fail3;
    } else {
    }
  } else {
  }
  {
  err = sysfs_create_group(& (chip->client)->dev.kobj, (struct attribute_group const *)(& bh1770_attribute_group));
  }
  if (err < 0) {
    {
    dev_err((struct device const *)(& (chip->client)->dev), "Sysfs registration failed\n");
    }
    goto fail4;
  } else {
  }
  {
  err = ldv_request_threaded_irq_96((unsigned int )client->irq, (irqreturn_t (*)(int ,
                                                                                 void * ))0,
                                    & bh1770_irq, 8202UL, "bh1770", (void *)chip);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& client->dev), "could not get IRQ %d\n", client->irq);
    }
    goto fail5;
  } else {
  }
  {
  regulator_bulk_disable(2, (struct regulator_bulk_data *)(& chip->regs));
  }
  return (err);
  fail5:
  {
  sysfs_remove_group(& (chip->client)->dev.kobj, (struct attribute_group const *)(& bh1770_attribute_group));
  }
  fail4: ;
  if ((unsigned long )(chip->pdata)->release_resources != (unsigned long )((int (*)(void))0)) {
    {
    (*((chip->pdata)->release_resources))();
    }
  } else {
  }
  fail3:
  {
  regulator_bulk_disable(2, (struct regulator_bulk_data *)(& chip->regs));
  }
  fail2:
  {
  regulator_bulk_free(2, (struct regulator_bulk_data *)(& chip->regs));
  }
  fail1:
  {
  kfree((void const *)chip);
  }
  return (err);
}
}
static int bh1770_remove(struct i2c_client *client )
{
  struct bh1770_chip *chip ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  chip = (struct bh1770_chip *)tmp;
  ldv_free_irq_97((unsigned int )client->irq, (void *)chip);
  sysfs_remove_group(& (chip->client)->dev.kobj, (struct attribute_group const *)(& bh1770_attribute_group));
  }
  if ((unsigned long )(chip->pdata)->release_resources != (unsigned long )((int (*)(void))0)) {
    {
    (*((chip->pdata)->release_resources))();
    }
  } else {
  }
  {
  cancel_delayed_work_sync(& chip->prox_work);
  tmp___0 = pm_runtime_suspended(& client->dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    bh1770_chip_off(chip);
    }
  } else {
  }
  {
  pm_runtime_disable(& client->dev);
  pm_runtime_set_suspended(& client->dev);
  regulator_bulk_free(2, (struct regulator_bulk_data *)(& chip->regs));
  kfree((void const *)chip);
  }
  return (0);
}
}
static int bh1770_suspend(struct device *dev )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct bh1770_chip *chip ;
  void *tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)(__mptr + 0xffffffffffffffe0UL);
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  chip = (struct bh1770_chip *)tmp;
  bh1770_chip_off(chip);
  }
  return (0);
}
}
static int bh1770_resume(struct device *dev )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct bh1770_chip *chip ;
  void *tmp ;
  int ret ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)(__mptr + 0xffffffffffffffe0UL);
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  chip = (struct bh1770_chip *)tmp;
  ret = 0;
  bh1770_chip_on(chip);
  tmp___1 = pm_runtime_suspended(dev);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    {
    ret = bh1770_lux_rate(chip, chip->lux_rate_index);
    tmp___0 = bh1770_lux_interrupt_control(chip, 1);
    ret = ret | tmp___0;
    bh1770_lux_update_thresholds(chip, 1000, 1000);
    chip->lux_wait_result = 1;
    ldv_assert("", chip->lux_wait_result == 1);
    bh1770_prox_mode_control(chip);
    }
  } else {
  }
  return (ret);
}
}
static int bh1770_runtime_suspend(struct device *dev )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct bh1770_chip *chip ;
  void *tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)(__mptr + 0xffffffffffffffe0UL);
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  chip = (struct bh1770_chip *)tmp;
  bh1770_chip_off(chip);
  }
  return (0);
}
}
static int bh1770_runtime_resume(struct device *dev )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct bh1770_chip *chip ;
  void *tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)(__mptr + 0xffffffffffffffe0UL);
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  chip = (struct bh1770_chip *)tmp;
  bh1770_chip_on(chip);
  }
  return (0);
}
}
static struct i2c_device_id const bh1770_id[3U] = { {{'b', 'h', '1', '7', '7', '0', 'g', 'l', 'c', '\000'}, 0UL},
        {{'s', 'f', 'h', '7', '7', '7', '0', '\000'}, 0UL}};
struct i2c_device_id const __mod_i2c_device_table ;
static struct dev_pm_ops const bh1770_pm_ops =
     {0, 0, & bh1770_suspend, & bh1770_resume, & bh1770_suspend, & bh1770_resume, & bh1770_suspend,
    & bh1770_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & bh1770_runtime_suspend,
    & bh1770_runtime_resume, (int (*)(struct device * ))0};
static struct i2c_driver bh1770_driver =
     {0U, 0, & bh1770_probe, & bh1770_remove, 0, 0, 0, 0, 0, {"bh1770glc", 0, & __this_module,
                                                            0, (_Bool)0, 0, 0, 0,
                                                            0, 0, 0, 0, 0, & bh1770_pm_ops,
                                                            0}, (struct i2c_device_id const *)(& bh1770_id),
    0, 0, {0, 0}};
static int bh1770_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_i2c_register_driver_98(& __this_module, & bh1770_driver);
  }
  return (tmp);
}
}
static void bh1770_driver_exit(void)
{
  {
  {
  i2c_del_driver(& bh1770_driver);
  }
  return;
}
}
void ldv_dispatch_default_deregister_3_8_4(void) ;
void ldv_dispatch_default_deregister_7_8_5(void) ;
void ldv_dispatch_default_deregister_9_8_3(void) ;
void ldv_dispatch_default_register_7_8_6(void) ;
void ldv_dispatch_default_register_9_8_7(void) ;
void ldv_dispatch_insmod_deregister_12_2(void) ;
void ldv_dispatch_insmod_register_12_3(void) ;
void ldv_dispatch_instance_deregister_7_3(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_7_4(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_9_1(int arg0 ) ;
void ldv_dispatch_irq_register_10_3(int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                    irqreturn_t (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_pm_deregister_5_5(void) ;
void ldv_dispatch_pm_register_5_6(void) ;
void ldv_dispatch_register_11_3(struct i2c_driver *arg0 ) ;
void ldv_emg_free_irq(int arg0 , void *arg1 ) ;
int ldv_emg_i2c_register_driver(struct module *arg0 , struct i2c_driver *arg1 ) ;
int ldv_emg_request_threaded_irq(unsigned int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                 irqreturn_t (*arg2)(int , void * ) , unsigned long arg3 ,
                                 char *arg4 , void *arg5 ) ;
void *ldv_factory_scenario_7(void *arg0 ) ;
void *ldv_insmod_8(void *arg0 ) ;
void ldv_insmod_bh1770_driver_exit_8_2(void (*arg0)(void) ) ;
int ldv_insmod_bh1770_driver_init_8_12(int (*arg0)(void) ) ;
void *ldv_interrupt_scenario_3(void *arg0 ) ;
void ldv_interrupt_scenario_thread_3_3(irqreturn_t (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void *ldv_main_12(void *arg0 ) ;
void *ldv_partially_ordered_scenario_2(void *arg0 ) ;
int ldv_partially_ordered_scenario_probe_2_11(s32 (*arg0)(struct i2c_client * , struct i2c_device_id * ) ,
                                              struct i2c_client *arg1 , struct i2c_device_id *arg2 ) ;
void ldv_partially_ordered_scenario_release_2_2(int (*arg0)(struct i2c_client * ) ,
                                                struct i2c_client *arg1 ) ;
void *ldv_platform_instance_5(void *arg0 ) ;
void *ldv_pm_ops_scenario_4(void *arg0 ) ;
void ldv_pm_ops_scenario_freeze_4_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_poweroff_4_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_restore_4_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_resume_4_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_runtime_resume_4_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_runtime_suspend_4_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_suspend_4_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_thaw_4_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void *ldv_timer_scenario_6(void *arg0 ) ;
int main(void) ;
pthread_t ldv_thread_2 ;
pthread_t ldv_thread_3 ;
pthread_t ldv_thread_4 ;
pthread_t ldv_thread_5 ;
pthread_t ldv_thread_6 ;
pthread_t ldv_thread_7 ;
pthread_t ldv_thread_8 ;
void ldv_dispatch_default_deregister_3_8_4(void)
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_2, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_default_deregister_7_8_5(void)
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
void ldv_dispatch_default_deregister_9_8_3(void)
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
void ldv_dispatch_default_register_7_8_6(void)
{
  int ret ;
  struct ldv_struct_platform_instance_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_platform_instance_5 *)tmp;
  ret = pthread_create(& ldv_thread_5, (pthread_attr_t const *)0, & ldv_platform_instance_5,
                       (void *)cf_arg_5);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_default_register_9_8_7(void)
{
  int ret ;
  struct ldv_struct_platform_instance_5 *cf_arg_7 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_7 = (struct ldv_struct_platform_instance_5 *)tmp;
  ret = pthread_create(& ldv_thread_7, (pthread_attr_t const *)0, & ldv_factory_scenario_7,
                       (void *)cf_arg_7);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_insmod_deregister_12_2(void)
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
void ldv_dispatch_insmod_register_12_3(void)
{
  int ret ;
  struct ldv_struct_platform_instance_5 *cf_arg_8 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_platform_instance_5 *)tmp;
  ret = pthread_create(& ldv_thread_8, (pthread_attr_t const *)0, & ldv_insmod_8,
                       (void *)cf_arg_8);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_instance_deregister_7_3(struct timer_list *arg0 )
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
void ldv_dispatch_instance_register_7_4(struct timer_list *arg0 )
{
  int ret ;
  struct ldv_struct_timer_scenario_6 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_6 = (struct ldv_struct_timer_scenario_6 *)tmp;
  cf_arg_6->arg0 = arg0;
  ret = pthread_create(& ldv_thread_6, (pthread_attr_t const *)0, & ldv_timer_scenario_6,
                       (void *)cf_arg_6);
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
  ret = pthread_join(ldv_thread_3, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_irq_register_10_3(int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                    irqreturn_t (*arg2)(int , void * ) , void *arg3 )
{
  int ret ;
  struct ldv_struct_interrupt_scenario_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_3 = (struct ldv_struct_interrupt_scenario_3 *)tmp;
  cf_arg_3->arg0 = arg0;
  cf_arg_3->arg1 = arg1;
  cf_arg_3->arg2 = arg2;
  cf_arg_3->arg3 = arg3;
  ret = pthread_create(& ldv_thread_3, (pthread_attr_t const *)0, & ldv_interrupt_scenario_3,
                       (void *)cf_arg_3);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_pm_deregister_5_5(void)
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
void ldv_dispatch_pm_register_5_6(void)
{
  int ret ;
  struct ldv_struct_platform_instance_5 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_platform_instance_5 *)tmp;
  ret = pthread_create(& ldv_thread_4, (pthread_attr_t const *)0, & ldv_pm_ops_scenario_4,
                       (void *)cf_arg_4);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_register_11_3(struct i2c_driver *arg0 )
{
  int ret ;
  struct ldv_struct_partially_ordered_scenario_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_partially_ordered_scenario_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  ret = pthread_create(& ldv_thread_2, (pthread_attr_t const *)0, & ldv_partially_ordered_scenario_2,
                       (void *)cf_arg_2);
  __VERIFIER_assume(ret == 0);
  }
  return;
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
int ldv_emg_i2c_register_driver(struct module *arg0 , struct i2c_driver *arg1 )
{
  struct i2c_driver *ldv_11_i2c_driver_i2c_driver ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_11_i2c_driver_i2c_driver = (struct i2c_driver *)tmp;
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_11_i2c_driver_i2c_driver = arg1;
    ldv_dispatch_register_11_3(ldv_11_i2c_driver_i2c_driver);
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
int ldv_emg_request_threaded_irq(unsigned int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                 irqreturn_t (*arg2)(int , void * ) , unsigned long arg3 ,
                                 char *arg4 , void *arg5 )
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
    ldv_10_thread_thread = arg2;
    ldv_10_data_data = arg5;
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
void *ldv_factory_scenario_7(void *arg0 )
{
  struct timer_list *ldv_7_container_timer_list ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = external_allocated_data();
  ldv_7_container_timer_list = (struct timer_list *)tmp;
  ldv_free(arg0);
  tmp___0 = ldv_xmalloc_unknown_size(0UL);
  ldv_7_container_timer_list = (struct timer_list *)tmp___0;
  ldv_dispatch_instance_register_7_4(ldv_7_container_timer_list);
  ldv_dispatch_instance_deregister_7_3(ldv_7_container_timer_list);
  ldv_free((void *)ldv_7_container_timer_list);
  }
  return ((void *)0);
  return ((void *)0);
}
}
void *ldv_insmod_8(void *arg0 )
{
  void (*ldv_8_bh1770_driver_exit_default)(void) ;
  int (*ldv_8_bh1770_driver_init_default)(void) ;
  int ldv_8_reg_guard_3_default ;
  int ldv_8_reg_guard_7_default ;
  int ldv_8_reg_guard_9_default ;
  int ldv_8_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_8_bh1770_driver_exit_default = (void (*)(void))tmp;
  tmp___0 = external_allocated_data();
  ldv_8_bh1770_driver_init_default = (int (*)(void))tmp___0;
  ldv_free(arg0);
  ldv_8_ret_default = ldv_insmod_bh1770_driver_init_8_12(ldv_8_bh1770_driver_init_default);
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
      ldv_dispatch_default_register_7_8_6();
      ldv_dispatch_default_deregister_7_8_5();
      }
    {
    ldv_insmod_bh1770_driver_exit_8_2(ldv_8_bh1770_driver_exit_default);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
void ldv_insmod_bh1770_driver_exit_8_2(void (*arg0)(void) )
{
  {
  {
  bh1770_driver_exit();
  }
  return;
}
}
int ldv_insmod_bh1770_driver_init_8_12(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = bh1770_driver_init();
  }
  return (tmp);
}
}
void *ldv_interrupt_scenario_3(void *arg0 )
{
  irqreturn_t (*ldv_3_callback_handler)(int , void * ) ;
  void *ldv_3_data_data ;
  int ldv_3_line_line ;
  enum irqreturn ldv_3_ret_val_default ;
  irqreturn_t (*ldv_3_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_scenario_3 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  data = (struct ldv_struct_interrupt_scenario_3 *)arg0;
  tmp = external_allocated_data();
  ldv_3_callback_handler = (irqreturn_t (*)(int , void * ))tmp;
  ldv_3_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_3_thread_thread = (irqreturn_t (*)(int , void * ))tmp___0;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_scenario_3 *)0)) {
    {
    ldv_3_line_line = data->arg0;
    ldv_3_callback_handler = data->arg1;
    ldv_3_thread_thread = data->arg2;
    ldv_3_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume((unsigned int )ldv_3_ret_val_default == 2U);
    ldv_interrupt_scenario_thread_3_3(ldv_3_thread_thread, ldv_3_line_line, ldv_3_data_data);
    }
  } else {
    {
    __VERIFIER_assume((unsigned int )ldv_3_ret_val_default != 2U);
    }
  }
  return ((void *)0);
  return ((void *)0);
}
}
void ldv_interrupt_scenario_thread_3_3(irqreturn_t (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  bh1770_irq(arg1, arg2);
  }
  return;
}
}
void *ldv_main_12(void *arg0 )
{
  {
  {
  ldv_initialize();
  ldv_dispatch_insmod_register_12_3();
  ldv_dispatch_insmod_deregister_12_2();
  ldv_check_final_state();
  __VERIFIER_assume(0);
  }
  return ((void *)0);
  return ((void *)0);
}
}
void *ldv_partially_ordered_scenario_2(void *arg0 )
{
  struct i2c_driver *ldv_2_container_i2c_driver ;
  struct i2c_device_id *ldv_2_ldv_param_11_1_default ;
  struct i2c_client *ldv_2_resource_client ;
  int ldv_2_ret_default ;
  struct ldv_struct_partially_ordered_scenario_2 *data ;
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
  data = (struct ldv_struct_partially_ordered_scenario_2 *)arg0;
  tmp = external_allocated_data();
  ldv_2_container_i2c_driver = (struct i2c_driver *)tmp;
  tmp___0 = external_allocated_data();
  ldv_2_ldv_param_11_1_default = (struct i2c_device_id *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_2_resource_client = (struct i2c_client *)tmp___1;
  ldv_2_ret_default = ldv_undef_int();
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_partially_ordered_scenario_2 *)0)) {
    {
    ldv_2_container_i2c_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___2 = ldv_xmalloc(1440UL);
  ldv_2_resource_client = (struct i2c_client *)tmp___2;
  }
  goto ldv_main_2;
  return ((void *)0);
  ldv_main_2:
  {
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    {
    tmp___3 = ldv_xmalloc_unknown_size(0UL);
    ldv_2_ldv_param_11_1_default = (struct i2c_device_id *)tmp___3;
    ldv_2_ret_default = ldv_partially_ordered_scenario_probe_2_11((s32 (*)(struct i2c_client * ,
                                                                           struct i2c_device_id * ))ldv_2_container_i2c_driver->probe,
                                                                  ldv_2_resource_client,
                                                                  ldv_2_ldv_param_11_1_default);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    ldv_free((void *)ldv_2_ldv_param_11_1_default);
    tmp___4 = ldv_undef_int();
    }
    if (tmp___4 != 0) {
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
    ldv_free((void *)ldv_2_resource_client);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_2:
  {
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    goto ldv_call_2;
  } else {
    {
    ldv_partially_ordered_scenario_release_2_2(ldv_2_container_i2c_driver->remove,
                                               ldv_2_resource_client);
    }
    goto ldv_main_2;
  }
  return ((void *)0);
}
}
int ldv_partially_ordered_scenario_probe_2_11(s32 (*arg0)(struct i2c_client * , struct i2c_device_id * ) ,
                                              struct i2c_client *arg1 , struct i2c_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = bh1770_probe(arg1, (struct i2c_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_partially_ordered_scenario_release_2_2(int (*arg0)(struct i2c_client * ) ,
                                                struct i2c_client *arg1 )
{
  {
  {
  bh1770_remove(arg1);
  }
  return;
}
}
void *ldv_platform_instance_5(void *arg0 )
{
  struct platform_driver *ldv_5_container_platform_driver ;
  int ldv_5_probed_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = external_allocated_data();
  ldv_5_container_platform_driver = (struct platform_driver *)tmp;
  ldv_5_probed_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___0 = ldv_xmalloc_unknown_size(0UL);
  ldv_5_container_platform_driver = (struct platform_driver *)tmp___0;
  ldv_dispatch_pm_register_5_6();
  ldv_dispatch_pm_deregister_5_5();
  return ((void *)0);
}
}
void *ldv_pm_ops_scenario_4(void *arg0 )
{
  struct device *ldv_4_device_device ;
  struct dev_pm_ops *ldv_4_pm_ops_dev_pm_ops ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = external_allocated_data();
  ldv_4_device_device = (struct device *)tmp;
  tmp___0 = external_allocated_data();
  ldv_4_pm_ops_dev_pm_ops = (struct dev_pm_ops *)tmp___0;
  ldv_free(arg0);
  }
  goto ldv_do_4;
  return ((void *)0);
  ldv_do_4:
  {
  tmp___1 = ldv_undef_int();
  }
  {
  if (tmp___1 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___1 == 4) {
    goto case_4;
  } else {
  }
  goto switch_default___0;
  case_1: ;
  goto ldv_do_4;
  case_2:
  {
  ldv_pm_ops_scenario_runtime_suspend_4_25(ldv_4_pm_ops_dev_pm_ops->runtime_suspend,
                                           ldv_4_device_device);
  ldv_pm_ops_scenario_runtime_resume_4_24(ldv_4_pm_ops_dev_pm_ops->runtime_resume,
                                          ldv_4_device_device);
  }
  goto ldv_do_4;
  case_3:
  {
  tmp___2 = ldv_undef_int();
  }
  {
  if (tmp___2 == 2) {
    goto case_2___0;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_pm_ops_scenario_suspend_4_21(ldv_4_pm_ops_dev_pm_ops->suspend, ldv_4_device_device);
  tmp___3 = ldv_undef_int();
  ldv_pm_ops_scenario_resume_4_16(ldv_4_pm_ops_dev_pm_ops->resume, ldv_4_device_device);
  }
  goto ldv_24343;
  case_2___0:
  {
  ldv_pm_ops_scenario_freeze_4_15(ldv_4_pm_ops_dev_pm_ops->freeze, ldv_4_device_device);
  tmp___4 = ldv_undef_int();
  ldv_pm_ops_scenario_thaw_4_10(ldv_4_pm_ops_dev_pm_ops->thaw, ldv_4_device_device);
  }
  goto ldv_24343;
  case_3___0:
  {
  ldv_pm_ops_scenario_poweroff_4_9(ldv_4_pm_ops_dev_pm_ops->poweroff, ldv_4_device_device);
  tmp___5 = ldv_undef_int();
  ldv_pm_ops_scenario_restore_4_4(ldv_4_pm_ops_dev_pm_ops->restore, ldv_4_device_device);
  }
  goto ldv_24343;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break___0: ;
  }
  ldv_24343: ;
  goto ldv_do_4;
  case_4: ;
  return ((void *)0);
  switch_default___0:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
}
}
void ldv_pm_ops_scenario_freeze_4_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  bh1770_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_poweroff_4_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  bh1770_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_restore_4_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  bh1770_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_resume_4_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  bh1770_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_runtime_resume_4_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  bh1770_runtime_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_runtime_suspend_4_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  bh1770_runtime_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_suspend_4_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  bh1770_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_thaw_4_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  bh1770_resume(arg1);
  }
  return;
}
}
void *ldv_timer_scenario_6(void *arg0 )
{
  struct timer_list *ldv_6_container_timer_list ;
  struct ldv_struct_timer_scenario_6 *data ;
  void *tmp ;
  {
  {
  data = (struct ldv_struct_timer_scenario_6 *)arg0;
  tmp = external_allocated_data();
  ldv_6_container_timer_list = (struct timer_list *)tmp;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_scenario_6 *)0)) {
    {
    ldv_6_container_timer_list = data->arg0;
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
  ldv_main_12((void *)0);
  }
  return (0);
}
}
static void *ldv_dev_get_drvdata_38(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_39(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
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
static void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_47(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_50(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_53(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_54(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_56(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_57(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_59(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_60(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_62(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_63(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_64(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_65(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_66(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_67(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_70(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_71(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_72(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_74(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_75(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_76(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_77(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_78(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_79(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_80(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_81(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_82(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_84(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_85(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_86(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_87(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_88(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_90(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_91(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_92(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_bh1770_chip(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_94(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_95(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_request_threaded_irq_96(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                 void * ) ,
                                       irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                       unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                       void *ldv_func_arg6 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_request_threaded_irq(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3,
                                     ldv_func_arg4, (char *)ldv_func_arg5, ldv_func_arg6);
  }
  return (tmp);
}
}
static void ldv_free_irq_97(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  ldv_emg_free_irq((int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static int ldv_i2c_register_driver_98(struct module *ldv_func_arg1 , struct i2c_driver *ldv_func_arg2 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_i2c_register_driver(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
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
int ldv_post_probe(int probe_ret_val ) ;
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
pthread_mutex_t pmutex_mutex_of_bh1770_chip ;
void ldv_mutex_lock_mutex_of_bh1770_chip(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_bh1770_chip);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_bh1770_chip(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_mutex_of_bh1770_chip);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_bh1770_chip(struct mutex *lock )
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
int ldv_mutex_trylock_mutex_of_bh1770_chip(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_mutex_of_bh1770_chip);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_bh1770_chip(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_mutex_of_bh1770_chip);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_bh1770_chip(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_bh1770_chip);
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
