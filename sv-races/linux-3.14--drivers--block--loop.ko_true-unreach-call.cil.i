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
typedef unsigned long __kernel_old_dev_t;
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
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
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
struct timespec;
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
typedef int pao_T__;
typedef int pao_T_____0;
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
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_37 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_36 {
   struct __anonstruct____missing_field_name_37 __annonCompField21 ;
};
struct lockref {
   union __anonunion____missing_field_name_36 __annonCompField22 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_39 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_38 {
   struct __anonstruct____missing_field_name_39 __annonCompField23 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_38 __annonCompField24 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_40 {
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
   union __anonunion_d_u_40 d_u ;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_41 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_41 kuid_t;
struct __anonstruct_kgid_t_42 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_42 kgid_t;
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
struct __anonstruct_nodemask_t_43 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_43 nodemask_t;
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_45 {
   struct list_head list ;
   struct llist_node llist ;
};
struct call_single_data {
   union __anonunion____missing_field_name_45 __annonCompField25 ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
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
struct __anonstruct_mm_context_t_110 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_110 mm_context_t;
struct vm_area_struct;
struct bio_vec;
struct device_node;
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bvec_iter {
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned int bi_idx ;
   unsigned int bi_bvec_done ;
};
struct bio {
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   struct bvec_iter bi_iter ;
   unsigned int bi_phys_segments ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
struct iovec;
struct kiocb;
struct kobject;
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
struct __anonstruct_kprojid_t_137 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_137 kprojid_t;
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
union __anonunion____missing_field_name_138 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_138 __annonCompField36 ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_140 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_139 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_140 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_139 read_descriptor_t;
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
struct backing_dev_info;
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
union __anonunion____missing_field_name_141 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_142 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_143 {
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
   union __anonunion____missing_field_name_141 __annonCompField37 ;
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
   union __anonunion____missing_field_name_142 __annonCompField38 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_143 __annonCompField39 ;
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
union __anonunion_f_u_144 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_144 f_u ;
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
struct __anonstruct_afs_146 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_145 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_146 afs ;
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
   union __anonunion_fl_u_145 fl_u ;
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
struct file_system_type;
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
struct block_device_operations;
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
struct mem_cgroup;
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
union __anonunion_u_147 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_148 {
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
   union __anonunion_u_147 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_148 __annonCompField40 ;
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
enum kobject_action {
    KOBJ_ADD = 0,
    KOBJ_REMOVE = 1,
    KOBJ_CHANGE = 2,
    KOBJ_MOVE = 3,
    KOBJ_ONLINE = 4,
    KOBJ_OFFLINE = 5,
    KOBJ_MAX = 6
} ;
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
struct __anonstruct____missing_field_name_150 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_151 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_149 {
   struct __anonstruct____missing_field_name_150 __annonCompField41 ;
   struct __anonstruct____missing_field_name_151 __annonCompField42 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_149 __annonCompField43 ;
};
struct device_type;
struct class;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
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
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
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
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
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
struct __anonstruct____missing_field_name_154 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_155 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_153 {
   struct __anonstruct____missing_field_name_154 __annonCompField45 ;
   struct __anonstruct____missing_field_name_155 __annonCompField46 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_153 __annonCompField47 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_156 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_158 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_162 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_161 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_162 __annonCompField50 ;
   int units ;
};
struct __anonstruct____missing_field_name_160 {
   union __anonunion____missing_field_name_161 __annonCompField51 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_159 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_160 __annonCompField52 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_157 {
   union __anonunion____missing_field_name_158 __annonCompField49 ;
   union __anonunion____missing_field_name_159 __annonCompField53 ;
};
struct __anonstruct____missing_field_name_164 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_163 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_164 __annonCompField55 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_165 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_156 __annonCompField48 ;
   struct __anonstruct____missing_field_name_157 __annonCompField54 ;
   union __anonunion____missing_field_name_163 __annonCompField56 ;
   union __anonunion____missing_field_name_165 __annonCompField57 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_167 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_166 {
   struct __anonstruct_linear_167 linear ;
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
   union __anonunion_shared_166 shared ;
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
struct user_struct;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct nsproxy;
struct pollfd {
   int fd ;
   short events ;
   short revents ;
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
union __anonunion____missing_field_name_177 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_177 __annonCompField61 ;
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
union __anonunion____missing_field_name_189 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_190 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_192 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_191 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_192 __annonCompField64 ;
};
union __anonunion_type_data_193 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_195 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_194 {
   union __anonunion_payload_195 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_189 __annonCompField62 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_190 __annonCompField63 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_191 __annonCompField65 ;
   union __anonunion_type_data_193 type_data ;
   union __anonunion____missing_field_name_194 __annonCompField66 ;
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
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned int for_kupdate : 1 ;
   unsigned int for_background : 1 ;
   unsigned int tagged_writepages : 1 ;
   unsigned int for_reclaim : 1 ;
   unsigned int range_cyclic : 1 ;
   unsigned int for_sync : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion____missing_field_name_197 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_198 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_197 __annonCompField68 ;
   union __anonunion____missing_field_name_198 __annonCompField69 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   struct bvec_iter bip_iter ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned int bip_owns_buf : 1 ;
   struct work_struct bip_work ;
   struct bio_vec *bip_vec ;
   struct bio_vec bip_inline_vecs[0U] ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bvec_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_integrity_pool ;
   spinlock_t rescue_lock ;
   struct bio_list rescue_list ;
   struct work_struct rescue_work ;
   struct workqueue_struct *rescue_workqueue ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct elevator_queue;
struct blk_trace;
struct request;
struct bsg_job;
struct blkcg_gq;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion____missing_field_name_199 {
   struct call_single_data csd ;
   struct work_struct mq_flush_work ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_200 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_202 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_203 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_201 {
   struct __anonstruct_elv_202 elv ;
   struct __anonstruct_flush_203 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_199 __annonCompField70 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   struct hlist_node hash ;
   union __anonunion____missing_field_name_200 __annonCompField71 ;
   union __anonunion____missing_field_name_201 __annonCompField72 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   void *special ;
   char *buffer ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
struct elevator_type;
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * , struct elevator_type * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   unsigned int registered : 1 ;
   struct hlist_head hash[64U] ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
   unsigned char raid_partial_stripes_expensive ;
};
struct blk_mq_ops;
struct blk_mq_hw_ctx;
struct throtl_data;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   struct blk_mq_ops *mq_ops ;
   unsigned int *mq_map ;
   struct blk_mq_ctx *queue_ctx ;
   unsigned int nr_queues ;
   struct blk_mq_hw_ctx **queue_hw_ctx ;
   unsigned int nr_hw_queues ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   struct kobject mq_kobj ;
   struct device *dev ;
   int rpm_status ;
   unsigned int nr_pending ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   struct blk_trace *blk_trace ;
   unsigned int flush_flags ;
   unsigned int flush_not_queueable : 1 ;
   unsigned int flush_queue_delayed : 1 ;
   unsigned int flush_pending_idx : 1 ;
   unsigned int flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request *flush_rq ;
   spinlock_t mq_flush_lock ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_counter mq_usage_counter ;
   struct list_head all_q_node ;
};
struct blk_plug {
   unsigned long magic ;
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   void (*release)(struct gendisk * , fmode_t ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
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
struct reclaim_state {
   unsigned long reclaimed_slab ;
};
struct swap_extent {
   struct list_head list ;
   unsigned long start_page ;
   unsigned long nr_pages ;
   sector_t start_block ;
};
struct swap_cluster_info {
   unsigned int data : 24 ;
   unsigned int flags : 8 ;
};
struct percpu_cluster {
   struct swap_cluster_info index ;
   unsigned int next ;
};
struct swap_info_struct {
   unsigned long flags ;
   short prio ;
   signed char type ;
   signed char next ;
   unsigned int max ;
   unsigned char *swap_map ;
   struct swap_cluster_info *cluster_info ;
   struct swap_cluster_info free_cluster_head ;
   struct swap_cluster_info free_cluster_tail ;
   unsigned int lowest_bit ;
   unsigned int highest_bit ;
   unsigned int pages ;
   unsigned int inuse_pages ;
   unsigned int cluster_next ;
   unsigned int cluster_nr ;
   struct percpu_cluster *percpu_cluster ;
   struct swap_extent *curr_swap_extent ;
   struct swap_extent first_swap_extent ;
   struct block_device *bdev ;
   struct file *swap_file ;
   unsigned int old_block_size ;
   unsigned long *frontswap_map ;
   atomic_t frontswap_pages ;
   spinlock_t lock ;
   struct work_struct discard_work ;
   struct swap_cluster_info discard_cluster_head ;
   struct swap_cluster_info discard_cluster_tail ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
typedef s32 compat_time_t;
typedef u16 compat_dev_t;
typedef s32 compat_int_t;
typedef s32 compat_long_t;
typedef u32 compat_ulong_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct pipe_buf_operations;
struct pipe_buffer {
   struct page *page ;
   unsigned int offset ;
   unsigned int len ;
   struct pipe_buf_operations const *ops ;
   unsigned int flags ;
   unsigned long private ;
};
struct pipe_inode_info {
   struct mutex mutex ;
   wait_queue_head_t wait ;
   unsigned int nrbufs ;
   unsigned int curbuf ;
   unsigned int buffers ;
   unsigned int readers ;
   unsigned int writers ;
   unsigned int files ;
   unsigned int waiting_writers ;
   unsigned int r_counter ;
   unsigned int w_counter ;
   struct page *tmp_page ;
   struct fasync_struct *fasync_readers ;
   struct fasync_struct *fasync_writers ;
   struct pipe_buffer *bufs ;
};
struct pipe_buf_operations {
   int can_merge ;
   void *(*map)(struct pipe_inode_info * , struct pipe_buffer * , int ) ;
   void (*unmap)(struct pipe_inode_info * , struct pipe_buffer * , void * ) ;
   int (*confirm)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*release)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   int (*steal)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*get)(struct pipe_inode_info * , struct pipe_buffer * ) ;
};
union __anonunion_u_233 {
   void *userptr ;
   struct file *file ;
   void *data ;
};
struct splice_desc {
   size_t total_len ;
   unsigned int len ;
   unsigned int flags ;
   union __anonunion_u_233 u ;
   loff_t pos ;
   loff_t *opos ;
   size_t num_spliced ;
   bool need_wakeup ;
};
typedef int splice_actor(struct pipe_inode_info * , struct pipe_buffer * , struct splice_desc * );
typedef int splice_direct_actor(struct pipe_inode_info * , struct splice_desc * );
struct miscdevice {
   int minor ;
   char const *name ;
   struct file_operations const *fops ;
   struct list_head list ;
   struct device *parent ;
   struct device *this_device ;
   char const *nodename ;
   umode_t mode ;
};
struct loop_info {
   int lo_number ;
   __kernel_old_dev_t lo_device ;
   unsigned long lo_inode ;
   __kernel_old_dev_t lo_rdevice ;
   int lo_offset ;
   int lo_encrypt_type ;
   int lo_encrypt_key_size ;
   int lo_flags ;
   char lo_name[64U] ;
   unsigned char lo_encrypt_key[32U] ;
   unsigned long lo_init[2U] ;
   char reserved[4U] ;
};
struct loop_info64 {
   __u64 lo_device ;
   __u64 lo_inode ;
   __u64 lo_rdevice ;
   __u64 lo_offset ;
   __u64 lo_sizelimit ;
   __u32 lo_number ;
   __u32 lo_encrypt_type ;
   __u32 lo_encrypt_key_size ;
   __u32 lo_flags ;
   __u8 lo_file_name[64U] ;
   __u8 lo_crypt_name[64U] ;
   __u8 lo_encrypt_key[32U] ;
   __u64 lo_init[2U] ;
};
struct loop_func_table;
struct loop_device {
   int lo_number ;
   int lo_refcnt ;
   loff_t lo_offset ;
   loff_t lo_sizelimit ;
   int lo_flags ;
   int (*transfer)(struct loop_device * , int , struct page * , unsigned int , struct page * ,
                   unsigned int , int , sector_t ) ;
   char lo_file_name[64U] ;
   char lo_crypt_name[64U] ;
   char lo_encrypt_key[32U] ;
   int lo_encrypt_key_size ;
   struct loop_func_table *lo_encryption ;
   __u32 lo_init[2U] ;
   kuid_t lo_key_owner ;
   int (*ioctl)(struct loop_device * , int , unsigned long ) ;
   struct file *lo_backing_file ;
   struct block_device *lo_device ;
   unsigned int lo_blocksize ;
   void *key_data ;
   gfp_t old_gfp_mask ;
   spinlock_t lo_lock ;
   struct bio_list lo_bio_list ;
   unsigned int lo_bio_count ;
   int lo_state ;
   struct mutex lo_ctl_mutex ;
   struct task_struct *lo_thread ;
   wait_queue_head_t lo_event ;
   wait_queue_head_t lo_req_wait ;
   struct request_queue *lo_queue ;
   struct gendisk *lo_disk ;
};
struct loop_func_table {
   int number ;
   int (*transfer)(struct loop_device * , int , struct page * , unsigned int , struct page * ,
                   unsigned int , int , sector_t ) ;
   int (*init)(struct loop_device * , struct loop_info64 const * ) ;
   int (*release)(struct loop_device * ) ;
   int (*ioctl)(struct loop_device * , int , unsigned long ) ;
   struct module *owner ;
};
struct lo_read_data {
   struct loop_device *lo ;
   struct page *page ;
   unsigned int offset ;
   int bsize ;
};
struct switch_request {
   struct file *file ;
   struct completion wait ;
};
struct compat_loop_info {
   compat_int_t lo_number ;
   compat_dev_t lo_device ;
   compat_ulong_t lo_inode ;
   compat_dev_t lo_rdevice ;
   compat_int_t lo_offset ;
   compat_int_t lo_encrypt_type ;
   compat_int_t lo_encrypt_key_size ;
   compat_int_t lo_flags ;
   char lo_name[64U] ;
   unsigned char lo_encrypt_key[32U] ;
   compat_ulong_t lo_init[2U] ;
   char reserved[4U] ;
};
struct ldv_struct_block_scenario_2 {
   struct block_device *arg0 ;
   struct gendisk *arg1 ;
   int signal_pending ;
};
struct ldv_struct_character_driver_scenario_3 {
   struct file_operations *arg0 ;
   int signal_pending ;
};
struct ldv_struct_del_gendisk_6 {
   struct gendisk *arg0 ;
   int signal_pending ;
};
struct ldv_struct_main_9 {
   int signal_pending ;
};
struct device_private {
   void *driver_data ;
};
typedef u64 dma_addr_t;
enum hrtimer_restart;
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
long ldv_is_err(void const *ptr ) ;
long ldv_is_err_or_null(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_66(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_70(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_80(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_82(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lo_ctl_mutex_of_loop_device(struct mutex *lock ) ;
void ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(struct mutex *lock ) ;
void ldv_mutex_lock_loop_index_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_loop_index_mutex(struct mutex *lock ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
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
  goto ldv_3070;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3070;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3070;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3070;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3070: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern int ( __builtin_unreachable)() ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
__inline static long IS_ERR_OR_NULL(void const *ptr ) ;
extern int lock_is_held(struct lockdep_map * ) ;
void ldv_spin_lock_lo_lock_of_loop_device(void) ;
void ldv_spin_unlock_lo_lock_of_loop_device(void) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_check_final_state(void) ;
extern void ldv_add_disk(void) ;
extern void ldv_del_gendisk(void) ;
extern void __VERIFIER_assume(int ) ;
int ldv_undef_int(void) ;
int ldv_undef_int_negative(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern int pthread_create(pthread_t * , pthread_attr_t const * , void *(*)(void * ) ,
                          void * ) ;
extern int pthread_join(pthread_t , void ** ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
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
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6431;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6431;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6431;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6431;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6431:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern int __preempt_count ;
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
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
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6550;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6550;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6550;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6550;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6550: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
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
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6562;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6562;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6562;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6562;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6562: ;
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_49(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_49(spinlock_t *lock ) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_50(spinlock_t *lock ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static u32 new_encode_dev(dev_t dev )
{
  unsigned int major ;
  unsigned int minor ;
  {
  major = dev >> 20;
  minor = dev & 1048575U;
  return (((minor & 255U) | (major << 8)) | ((minor & 4294967040U) << 12));
}
}
__inline static u64 huge_encode_dev(dev_t dev )
{
  u32 tmp ;
  {
  {
  tmp = new_encode_dev(dev);
  }
  return ((u64 )tmp);
}
}
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
extern void complete(struct completion * ) ;
extern bool rcu_is_watching(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp == 0) {
    return (1);
  } else {
  }
  {
  tmp___0 = rcu_is_watching();
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  {
  tmp___2 = rcu_lockdep_current_cpu_online();
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  {
  tmp___4 = lock_is_held(& rcu_lock_map);
  }
  return (tmp___4);
}
}
extern char *d_path(struct path const * , char * , int ) ;
__inline static uid_t __kuid_val(kuid_t uid )
{
  {
  return (uid.val);
}
}
__inline static bool uid_eq(kuid_t left , kuid_t right )
{
  uid_t tmp ;
  uid_t tmp___0 ;
  {
  {
  tmp = __kuid_val(left);
  tmp___0 = __kuid_val(right);
  }
  return (tmp == tmp___0);
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_lock_nested_64(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
static void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_81(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_84(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_85(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_87(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 ) ;
extern bool capable(int ) ;
__inline static loff_t i_size_read(struct inode const *inode )
{
  {
  return ((loff_t )inode->i_size);
}
}
extern void __sb_end_write(struct super_block * , int ) ;
extern int __sb_start_write(struct super_block * , int , bool ) ;
extern int register_blkdev(unsigned int , char const * ) ;
extern void unregister_blkdev(unsigned int , char const * ) ;
extern struct block_device *bdgrab(struct block_device * ) ;
extern void bd_set_size(struct block_device * , loff_t ) ;
extern void bdput(struct block_device * ) ;
extern void invalidate_bdev(struct block_device * ) ;
extern int ioctl_by_bdev(struct block_device * , unsigned int , unsigned long ) ;
extern int vfs_fsync(struct file * , int ) ;
__inline static struct inode *file_inode(struct file *f )
{
  {
  return (f->f_inode);
}
}
__inline static void file_start_write(struct file *file )
{
  struct inode *tmp ;
  struct inode *tmp___0 ;
  {
  {
  tmp = file_inode(file);
  }
  if (((int )tmp->i_mode & 61440) != 32768) {
    return;
  } else {
  }
  {
  tmp___0 = file_inode(file);
  __sb_start_write(tmp___0->i_sb, 1, 1);
  }
  return;
}
}
__inline static void file_end_write(struct file *file )
{
  struct inode *tmp ;
  struct inode *tmp___0 ;
  {
  {
  tmp = file_inode(file);
  }
  if (((int )tmp->i_mode & 61440) != 32768) {
    return;
  } else {
  }
  {
  tmp___0 = file_inode(file);
  __sb_end_write(tmp___0->i_sb, 1);
  }
  return;
}
}
extern int set_blocksize(struct block_device * , int ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern int nonseekable_open(struct inode * , struct file * ) ;
extern int vfs_getattr(struct path * , struct kstat * ) ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  {
  tmp = alloc_pages_current(gfp_mask, order);
  }
  return (tmp);
}
}
extern void __free_pages(struct page * , unsigned int ) ;
extern void kfree(void const * ) ;
extern void *idr_find_slowpath(struct idr * , int ) ;
extern int idr_alloc(struct idr * , void * , int , int , gfp_t ) ;
extern int idr_for_each(struct idr * , int (*)(int , void * , void * ) , void * ) ;
extern void idr_remove(struct idr * , int ) ;
extern void idr_destroy(struct idr * ) ;
__inline static void *idr_find(struct idr *idr , int id )
{
  struct idr_layer *hint ;
  struct idr_layer *_________p1 ;
  bool __warned ;
  int tmp ;
  struct idr_layer *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  {
  _________p1 = *((struct idr_layer * volatile *)(& idr->hint));
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  hint = _________p1;
  if ((unsigned long )hint != (unsigned long )((struct idr_layer *)0) && (id & -256) == hint->prefix) {
    {
    _________p1___0 = *(& hint->ary + ((unsigned long )id & 255UL));
    tmp___0 = debug_lockdep_rcu_enabled();
    }
    if (tmp___0 != 0 && ! __warned___0) {
      {
      rcu_read_lock_held();
      }
    } else {
    }
    return ((void *)_________p1___0);
  } else {
  }
  {
  tmp___1 = idr_find_slowpath(idr, id);
  }
  return (tmp___1);
}
}
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern int kobject_uevent(struct kobject * , enum kobject_action ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
static void ldv_add_disk_78(struct gendisk *ldv_func_arg1 ) ;
static void ldv_del_gendisk_79(struct gendisk *ldv_func_arg1 ) ;
extern void set_device_ro(struct block_device * , int ) ;
__inline static sector_t get_capacity(struct gendisk *disk )
{
  {
  return (disk->part0.nr_sects);
}
}
__inline static void set_capacity(struct gendisk *disk , sector_t size )
{
  {
  disk->part0.nr_sects = size;
  return;
}
}
extern struct gendisk *alloc_disk(int ) ;
extern struct kobject *get_disk(struct gendisk * ) ;
extern void put_disk(struct gendisk * ) ;
extern void blk_register_region(dev_t , unsigned long , struct module * , struct kobject *(*)(dev_t ,
                                                                                                int * ,
                                                                                                void * ) ,
                                int (*)(dev_t , void * ) , void * ) ;
extern void blk_unregister_region(dev_t , unsigned long ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
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
__inline static void pagefault_disable(void)
{
  {
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
__inline static void pagefault_enable(void)
{
  {
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  }
  return;
}
}
__inline static void *kmap(struct page *page )
{
  void *tmp ;
  {
  {
  __might_sleep("include/linux/highmem.h", 58, 0);
  tmp = lowmem_page_address((struct page const *)page);
  }
  return (tmp);
}
}
__inline static void kunmap(struct page *page )
{
  {
  return;
}
}
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  {
  pagefault_disable();
  tmp = lowmem_page_address((struct page const *)page);
  }
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  {
  pagefault_enable();
  }
  return;
}
}
__inline static gfp_t mapping_gfp_mask(struct address_space *mapping )
{
  {
  return ((gfp_t )mapping->flags & 33554431U);
}
}
__inline static void mapping_set_gfp_mask(struct address_space *m , gfp_t mask )
{
  {
  m->flags = (m->flags & 0xfffffffffe000000UL) | (unsigned long )mask;
  return;
}
}
extern void __module_get(struct module * ) ;
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
extern void schedule(void) ;
extern void set_user_nice(struct task_struct * , long ) ;
extern int wake_up_process(struct task_struct * ) ;
extern int _cond_resched(void) ;
extern void fput(struct file * ) ;
extern struct file *fget(unsigned int ) ;
__inline static void bvec_iter_advance(struct bio_vec *bv , struct bvec_iter *iter ,
                                       unsigned int bytes )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned int len ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  {
  {
  __ret_warn_once = bytes > iter->bi_size;
  tmp___1 = __builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp = __builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_fmt("include/linux/bio.h", 202, "Attempted to advance past end of bvec iter\n");
      }
    } else {
    }
    {
    tmp___0 = __builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  {
  __builtin_expect(__ret_warn_once != 0, 0L);
  }
  goto ldv_30059;
  ldv_30058:
  _min1 = bytes;
  _min1___0 = iter->bi_size;
  _min2___0 = (bv + (unsigned long )iter->bi_idx)->bv_len - iter->bi_bvec_done;
  _min2 = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  len = _min1 < _min2 ? _min1 : _min2;
  bytes = bytes - len;
  iter->bi_size = iter->bi_size - len;
  iter->bi_bvec_done = iter->bi_bvec_done + len;
  if (iter->bi_bvec_done == (bv + (unsigned long )iter->bi_idx)->bv_len) {
    iter->bi_bvec_done = 0U;
    iter->bi_idx = iter->bi_idx + 1U;
  } else {
  }
  ldv_30059: ;
  if (bytes != 0U) {
    goto ldv_30058;
  } else {
  }
  return;
}
}
__inline static void bio_advance_iter(struct bio *bio , struct bvec_iter *iter , unsigned int bytes )
{
  {
  iter->bi_sector = iter->bi_sector + (sector_t )(bytes >> 9);
  if (((unsigned long long )bio->bi_rw & 640ULL) != 0ULL) {
    iter->bi_size = iter->bi_size - bytes;
  } else {
    {
    bvec_iter_advance(bio->bi_io_vec, iter, bytes);
    }
  }
  return;
}
}
extern struct bio *bio_alloc_bioset(gfp_t , int , struct bio_set * ) ;
extern void bio_put(struct bio * ) ;
extern struct bio_set *fs_bio_set ;
__inline static struct bio *bio_alloc(gfp_t gfp_mask , unsigned int nr_iovecs )
{
  struct bio *tmp ;
  {
  {
  tmp = bio_alloc_bioset(gfp_mask, (int )nr_iovecs, fs_bio_set);
  }
  return (tmp);
}
}
extern void bio_endio(struct bio * , int ) ;
extern void zero_fill_bio(struct bio * ) ;
__inline static int bio_list_empty(struct bio_list const *bl )
{
  {
  return ((unsigned long )bl->head == (unsigned long )((struct bio * )0));
}
}
__inline static void bio_list_init(struct bio_list *bl )
{
  struct bio *tmp ;
  {
  tmp = (struct bio *)0;
  bl->tail = tmp;
  bl->head = tmp;
  return;
}
}
__inline static void bio_list_add(struct bio_list *bl , struct bio *bio )
{
  {
  bio->bi_next = (struct bio *)0;
  if ((unsigned long )bl->tail != (unsigned long )((struct bio *)0)) {
    (bl->tail)->bi_next = bio;
  } else {
    bl->head = bio;
  }
  bl->tail = bio;
  return;
}
}
__inline static struct bio *bio_list_pop(struct bio_list *bl )
{
  struct bio *bio ;
  {
  bio = bl->head;
  if ((unsigned long )bio != (unsigned long )((struct bio *)0)) {
    bl->head = (bl->head)->bi_next;
    if ((unsigned long )bl->head == (unsigned long )((struct bio *)0)) {
      bl->tail = (struct bio *)0;
    } else {
    }
    bio->bi_next = (struct bio *)0;
  } else {
  }
  return (bio);
}
}
__inline static void queue_flag_set_unlocked(unsigned int flag , struct request_queue *q )
{
  {
  {
  __set_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  }
  return;
}
}
__inline static void queue_flag_clear_unlocked(unsigned int flag , struct request_queue *q )
{
  {
  {
  __clear_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  }
  return;
}
}
extern void blk_cleanup_queue(struct request_queue * ) ;
extern void blk_queue_make_request(struct request_queue * , make_request_fn * ) ;
extern void blk_queue_flush(struct request_queue * , unsigned int ) ;
extern struct request_queue *blk_alloc_queue(gfp_t ) ;
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
extern ssize_t __splice_from_pipe(struct pipe_inode_info * , struct splice_desc * ,
                                  splice_actor * ) ;
extern ssize_t splice_direct_to_actor(struct file * , struct splice_desc * , splice_direct_actor * ) ;
static int ldv_misc_register_88(struct miscdevice *ldv_func_arg1 ) ;
static int ldv_misc_deregister_91(struct miscdevice *ldv_func_arg1 ) ;
static int ldv_misc_deregister_92(struct miscdevice *ldv_func_arg1 ) ;
int loop_register_transfer(struct loop_func_table *funcs ) ;
int loop_unregister_transfer(int number ) ;
static struct idr loop_index_idr = {0, 0, 0, 0, 0, 0, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0},
                                                                        "loop_index_idr.lock",
                                                                        0, 0UL}}}}};
static struct mutex loop_index_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "loop_index_mutex.wait_lock",
                                                           0, 0UL}}}}, {& loop_index_mutex.wait_list,
                                                                        & loop_index_mutex.wait_list},
    0, 0, (void *)(& loop_index_mutex), {0, {0, 0}, "loop_index_mutex", 0, 0UL}};
static int max_part ;
static int part_shift ;
extern void __compiletime_assert_104(void) ;
extern void __compiletime_assert_105(void) ;
static int transfer_none(struct loop_device *lo , int cmd , struct page *raw_page ,
                         unsigned int raw_off , struct page *loop_page , unsigned int loop_off ,
                         int size , sector_t real_block )
{
  char *raw_buf ;
  void *tmp ;
  char *loop_buf ;
  void *tmp___0 ;
  bool __cond ;
  bool __cond___0 ;
  {
  {
  tmp = kmap_atomic(raw_page);
  raw_buf = (char *)(tmp + (unsigned long )raw_off);
  tmp___0 = kmap_atomic(loop_page);
  loop_buf = (char *)(tmp___0 + (unsigned long )loop_off);
  }
  if (cmd == 0) {
    {
    memcpy((void *)loop_buf, (void const *)raw_buf, (size_t )size);
    }
  } else {
    {
    memcpy((void *)raw_buf, (void const *)loop_buf, (size_t )size);
    }
  }
  __cond = 0;
  if ((int )__cond) {
    {
    __compiletime_assert_104();
    }
  } else {
  }
  {
  __kunmap_atomic((void *)loop_buf);
  __cond___0 = 0;
  }
  if ((int )__cond___0) {
    {
    __compiletime_assert_105();
    }
  } else {
  }
  {
  __kunmap_atomic((void *)raw_buf);
  __might_sleep("drivers/block/loop.c", 106, 0);
  _cond_resched();
  }
  return (0);
}
}
extern void __compiletime_assert_133(void) ;
extern void __compiletime_assert_134(void) ;
static int transfer_xor(struct loop_device *lo , int cmd , struct page *raw_page ,
                        unsigned int raw_off , struct page *loop_page , unsigned int loop_off ,
                        int size , sector_t real_block )
{
  char *raw_buf ;
  void *tmp ;
  char *loop_buf ;
  void *tmp___0 ;
  char *in ;
  char *out ;
  char *key ;
  int i ;
  int keysize ;
  char *tmp___1 ;
  char *tmp___2 ;
  bool __cond ;
  bool __cond___0 ;
  {
  {
  tmp = kmap_atomic(raw_page);
  raw_buf = tmp + (unsigned long )raw_off;
  tmp___0 = kmap_atomic(loop_page);
  loop_buf = tmp___0 + (unsigned long )loop_off;
  }
  if (cmd == 0) {
    in = raw_buf;
    out = loop_buf;
  } else {
    in = loop_buf;
    out = raw_buf;
  }
  key = (char *)(& lo->lo_encrypt_key);
  keysize = lo->lo_encrypt_key_size;
  i = 0;
  goto ldv_35035;
  ldv_35034:
  tmp___1 = out;
  out = out + 1;
  tmp___2 = in;
  in = in + 1;
  *tmp___1 = (char )((int )((signed char )*tmp___2) ^ (int )((signed char )*(key + (unsigned long )((i & 511) % keysize))));
  i = i + 1;
  ldv_35035: ;
  if (i < size) {
    goto ldv_35034;
  } else {
  }
  __cond = 0;
  if ((int )__cond) {
    {
    __compiletime_assert_133();
    }
  } else {
  }
  {
  __kunmap_atomic((void *)loop_buf);
  __cond___0 = 0;
  }
  if ((int )__cond___0) {
    {
    __compiletime_assert_134();
    }
  } else {
  }
  {
  __kunmap_atomic((void *)raw_buf);
  __might_sleep("drivers/block/loop.c", 135, 0);
  _cond_resched();
  }
  return (0);
}
}
static int xor_init(struct loop_device *lo , struct loop_info64 const *info )
{
  long tmp ;
  {
  {
  tmp = __builtin_expect((unsigned int )info->lo_encrypt_key_size == 0U, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  return (0);
}
}
static struct loop_func_table none_funcs = {0, & transfer_none, 0, 0, 0, 0};
static struct loop_func_table xor_funcs = {1, & transfer_xor, & xor_init, 0, 0, 0};
static struct loop_func_table *xfer_funcs[20U] = { & none_funcs, & xor_funcs};
static loff_t get_size(loff_t offset , loff_t sizelimit , struct file *file )
{
  loff_t loopsize ;
  {
  {
  loopsize = i_size_read((struct inode const *)(file->f_mapping)->host);
  }
  if (offset > 0LL) {
    loopsize = loopsize - offset;
  } else {
  }
  if (loopsize < 0LL) {
    return (0LL);
  } else {
  }
  if (sizelimit > 0LL && sizelimit < loopsize) {
    loopsize = sizelimit;
  } else {
  }
  return (loopsize >> 9);
}
}
static loff_t get_loop_size(struct loop_device *lo , struct file *file )
{
  loff_t tmp ;
  {
  {
  tmp = get_size(lo->lo_offset, lo->lo_sizelimit, file);
  }
  return (tmp);
}
}
static int figure_loop_size(struct loop_device *lo , loff_t offset , loff_t sizelimit )
{
  loff_t size ;
  loff_t tmp ;
  sector_t x ;
  struct block_device *bdev ;
  long tmp___0 ;
  sector_t tmp___1 ;
  {
  {
  tmp = get_size(offset, sizelimit, lo->lo_backing_file);
  size = tmp;
  x = (unsigned long )size;
  bdev = lo->lo_device;
  tmp___0 = __builtin_expect((long long )x != size, 0L);
  }
  if (tmp___0 != 0L) {
    return (-27);
  } else {
  }
  if (lo->lo_offset != offset) {
    lo->lo_offset = offset;
  } else {
  }
  if (lo->lo_sizelimit != sizelimit) {
    lo->lo_sizelimit = sizelimit;
  } else {
  }
  {
  set_capacity(lo->lo_disk, x);
  tmp___1 = get_capacity(bdev->bd_disk);
  bd_set_size(bdev, (long long )tmp___1 << 9);
  kobject_uevent(& (bdev->bd_disk)->part0.__dev.kobj, 2);
  }
  return (0);
}
}
__inline static int lo_do_transfer(struct loop_device *lo , int cmd , struct page *rpage ,
                                   unsigned int roffs , struct page *lpage , unsigned int loffs ,
                                   int size , sector_t rblock )
{
  long tmp ;
  int tmp___0 ;
  {
  {
  tmp = __builtin_expect((unsigned long )lo->transfer == (unsigned long )((int (*)(struct loop_device * ,
                                                                                   int ,
                                                                                   struct page * ,
                                                                                   unsigned int ,
                                                                                   struct page * ,
                                                                                   unsigned int ,
                                                                                   int ,
                                                                                   sector_t ))0),
                         0L);
  }
  if (tmp != 0L) {
    return (0);
  } else {
  }
  {
  tmp___0 = (*(lo->transfer))(lo, cmd, rpage, roffs, lpage, loffs, size, rblock);
  }
  return (tmp___0);
}
}
static int __do_lo_send_write(struct file *file , u8 *buf , int const len , loff_t pos )
{
  ssize_t bw ;
  mm_segment_t old_fs ;
  struct thread_info *tmp ;
  struct thread_info *tmp___0 ;
  mm_segment_t __constr_expr_0 ;
  struct thread_info *tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = current_thread_info();
  old_fs = tmp->addr_limit;
  file_start_write(file);
  tmp___0 = current_thread_info();
  __constr_expr_0.seg = 0xffffffffffffffffUL;
  tmp___0->addr_limit = __constr_expr_0;
  bw = (*((file->f_op)->write))(file, (char const *)buf, (size_t )len, & pos);
  tmp___1 = current_thread_info();
  tmp___1->addr_limit = old_fs;
  file_end_write(file);
  tmp___2 = __builtin_expect(bw == (ssize_t )len, 1L);
  }
  if (tmp___2 != 0L) {
    return (0);
  } else {
  }
  {
  printk("\vloop: Write error at byte offset %llu, length %i.\n", (unsigned long long )pos,
         len);
  }
  if (bw >= 0L) {
    bw = -5L;
  } else {
  }
  return ((int )bw);
}
}
static int do_lo_send_direct_write(struct loop_device *lo , struct bio_vec *bvec ,
                                   loff_t pos , struct page *page )
{
  ssize_t bw ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = kmap(bvec->bv_page);
  tmp___0 = __do_lo_send_write(lo->lo_backing_file, (u8 *)(tmp + (unsigned long )bvec->bv_offset),
                               (int const )bvec->bv_len, pos);
  bw = (ssize_t )tmp___0;
  kunmap(bvec->bv_page);
  __might_sleep("drivers/block/loop.c", 260, 0);
  _cond_resched();
  }
  return ((int )bw);
}
}
static int do_lo_send_write(struct loop_device *lo , struct bio_vec *bvec , loff_t pos ,
                            struct page *page )
{
  int ret ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = lo_do_transfer(lo, 1, page, 0U, bvec->bv_page, bvec->bv_offset, (int )bvec->bv_len,
                       (sector_t )(pos >> 9));
  ret = tmp;
  tmp___2 = __builtin_expect(ret == 0, 1L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___0 = lowmem_page_address((struct page const *)page);
    tmp___1 = __do_lo_send_write(lo->lo_backing_file, (u8 *)tmp___0, (int const )bvec->bv_len,
                                 pos);
    }
    return (tmp___1);
  } else {
  }
  {
  printk("\vloop: Transfer error at byte offset %llu, length %i.\n", (unsigned long long )pos,
         bvec->bv_len);
  }
  if (ret > 0) {
    ret = -5;
  } else {
  }
  return (ret);
}
}
static int lo_send(struct loop_device *lo , struct bio *bio , loff_t pos )
{
  int (*do_lo_send)(struct loop_device * , struct bio_vec * , loff_t , struct page * ) ;
  struct bio_vec bvec ;
  struct bvec_iter iter ;
  struct page *page ;
  int ret ;
  long tmp ;
  struct bio_vec __constr_expr_0 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  {
  page = (struct page *)0;
  ret = 0;
  if ((unsigned long )lo->transfer != (unsigned long )(& transfer_none)) {
    {
    page = alloc_pages(18U, 0U);
    tmp = __builtin_expect((unsigned long )page == (unsigned long )((struct page *)0),
                           0L);
    }
    if (tmp != 0L) {
      goto fail;
    } else {
    }
    {
    kmap(page);
    do_lo_send = & do_lo_send_write;
    }
  } else {
    do_lo_send = & do_lo_send_direct_write;
  }
  iter = bio->bi_iter;
  goto ldv_35126;
  ldv_35125:
  {
  ret = (*do_lo_send)(lo, & bvec, pos, page);
  }
  if (ret < 0) {
    goto ldv_35124;
  } else {
  }
  {
  pos = pos + (loff_t )bvec.bv_len;
  bio_advance_iter(bio, & iter, bvec.bv_len);
  }
  ldv_35126: ;
  if (iter.bi_size != 0U) {
    _min1 = iter.bi_size;
    _min2 = (bio->bi_io_vec + (unsigned long )iter.bi_idx)->bv_len - iter.bi_bvec_done;
    __constr_expr_0.bv_page = (bio->bi_io_vec + (unsigned long )iter.bi_idx)->bv_page;
    __constr_expr_0.bv_len = _min1 < _min2 ? _min1 : _min2;
    __constr_expr_0.bv_offset = (bio->bi_io_vec + (unsigned long )iter.bi_idx)->bv_offset + iter.bi_bvec_done;
    bvec = __constr_expr_0;
    goto ldv_35125;
  } else {
  }
  ldv_35124: ;
  if ((unsigned long )page != (unsigned long )((struct page *)0)) {
    {
    kunmap(page);
    __free_pages(page, 0U);
    }
  } else {
  }
  out: ;
  return (ret);
  fail:
  {
  printk("\vloop: Failed to allocate temporary page for write.\n");
  ret = -12;
  }
  goto out;
}
}
static int lo_splice_actor(struct pipe_inode_info *pipe , struct pipe_buffer *buf ,
                           struct splice_desc *sd )
{
  struct lo_read_data *p ;
  struct loop_device *lo ;
  struct page *page ;
  sector_t IV ;
  int size ;
  int tmp ;
  {
  p = (struct lo_read_data *)sd->u.data;
  lo = p->lo;
  page = buf->page;
  IV = (page->__annonCompField54.__annonCompField49.index << 3) + (unsigned long )(buf->offset >> 9);
  size = (int )sd->len;
  if (size > p->bsize) {
    size = p->bsize;
  } else {
  }
  {
  tmp = lo_do_transfer(lo, 0, page, buf->offset, p->page, p->offset, size, IV);
  }
  if (tmp != 0) {
    {
    printk("\vloop: transfer error block %ld\n", page->__annonCompField54.__annonCompField49.index);
    size = -22;
    }
  } else {
  }
  if (size > 0) {
    p->offset = p->offset + (unsigned int )size;
  } else {
  }
  return (size);
}
}
static int lo_direct_splice_actor(struct pipe_inode_info *pipe , struct splice_desc *sd )
{
  ssize_t tmp ;
  {
  {
  tmp = __splice_from_pipe(pipe, sd, & lo_splice_actor);
  }
  return ((int )tmp);
}
}
static ssize_t do_lo_receive(struct loop_device *lo , struct bio_vec *bvec , int bsize ,
                             loff_t pos )
{
  struct lo_read_data cookie ;
  struct splice_desc sd ;
  struct file *file ;
  ssize_t retval ;
  {
  {
  cookie.lo = lo;
  cookie.page = bvec->bv_page;
  cookie.offset = bvec->bv_offset;
  cookie.bsize = bsize;
  sd.len = 0U;
  sd.total_len = (size_t )bvec->bv_len;
  sd.flags = 0U;
  sd.pos = pos;
  sd.u.data = (void *)(& cookie);
  file = lo->lo_backing_file;
  retval = splice_direct_to_actor(file, & sd, & lo_direct_splice_actor);
  }
  return (retval);
}
}
static int lo_receive(struct loop_device *lo , struct bio *bio , int bsize , loff_t pos )
{
  struct bio_vec bvec ;
  struct bvec_iter iter ;
  ssize_t s ;
  struct bio_vec __constr_expr_0 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  {
  iter = bio->bi_iter;
  goto ldv_35172;
  ldv_35171:
  {
  s = do_lo_receive(lo, & bvec, bsize, pos);
  }
  if (s < 0L) {
    return ((int )s);
  } else {
  }
  if (s != (ssize_t )bvec.bv_len) {
    {
    zero_fill_bio(bio);
    }
    goto ldv_35170;
  } else {
  }
  {
  pos = pos + (loff_t )bvec.bv_len;
  bio_advance_iter(bio, & iter, bvec.bv_len);
  }
  ldv_35172: ;
  if (iter.bi_size != 0U) {
    _min1 = iter.bi_size;
    _min2 = (bio->bi_io_vec + (unsigned long )iter.bi_idx)->bv_len - iter.bi_bvec_done;
    __constr_expr_0.bv_page = (bio->bi_io_vec + (unsigned long )iter.bi_idx)->bv_page;
    __constr_expr_0.bv_len = _min1 < _min2 ? _min1 : _min2;
    __constr_expr_0.bv_offset = (bio->bi_io_vec + (unsigned long )iter.bi_idx)->bv_offset + iter.bi_bvec_done;
    bvec = __constr_expr_0;
    goto ldv_35171;
  } else {
  }
  ldv_35170: ;
  return (0);
}
}
static int do_bio_filebacked(struct loop_device *lo , struct bio *bio )
{
  loff_t pos ;
  int ret ;
  struct file *file ;
  long tmp ;
  struct file *file___0 ;
  int mode ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  pos = ((long long )bio->bi_iter.bi_sector << 9) + lo->lo_offset;
  if (((unsigned long long )bio->bi_rw & 8193ULL) == 1ULL) {
    file = lo->lo_backing_file;
    if (((unsigned long long )bio->bi_rw & 4096ULL) != 0ULL) {
      {
      ret = vfs_fsync(file, 0);
      tmp = __builtin_expect((long )(ret != 0 && ret != -22), 0L);
      }
      if (tmp != 0L) {
        ret = -5;
        goto out;
      } else {
      }
    } else {
    }
    if (((unsigned long long )bio->bi_rw & 128ULL) != 0ULL) {
      file___0 = lo->lo_backing_file;
      mode = 3;
      if ((unsigned long )(file___0->f_op)->fallocate == (unsigned long )((long (* )(struct file * ,
                                                                                                int ,
                                                                                                loff_t ,
                                                                                                loff_t ))0) || lo->lo_encrypt_key_size != 0) {
        ret = -95;
        goto out;
      } else {
      }
      {
      tmp___0 = (*((file___0->f_op)->fallocate))(file___0, mode, pos, (loff_t )bio->bi_iter.bi_size);
      ret = (int )tmp___0;
      tmp___1 = __builtin_expect((long )(ret != 0 && ret != -22), 0L);
      }
      if (tmp___1 != 0L) {
        {
        tmp___2 = __builtin_expect(ret != -95, 0L);
        }
        if (tmp___2 != 0L) {
          ret = -5;
        } else {
        }
      } else {
      }
      goto out;
    } else {
    }
    {
    ret = lo_send(lo, bio, pos);
    }
    if (((unsigned long long )bio->bi_rw & 2048ULL) != 0ULL && ret == 0) {
      {
      ret = vfs_fsync(file, 0);
      tmp___3 = __builtin_expect((long )(ret != 0 && ret != -22), 0L);
      }
      if (tmp___3 != 0L) {
        ret = -5;
      } else {
      }
    } else {
    }
  } else {
    {
    ret = lo_receive(lo, bio, (int )lo->lo_blocksize, pos);
    }
  }
  out: ;
  return (ret);
}
}
static void loop_add_bio(struct loop_device *lo , struct bio *bio )
{
  {
  {
  lo->lo_bio_count = lo->lo_bio_count + 1U;
  bio_list_add(& lo->lo_bio_list, bio);
  }
  return;
}
}
static struct bio *loop_get_bio(struct loop_device *lo )
{
  struct bio *tmp ;
  {
  {
  lo->lo_bio_count = lo->lo_bio_count - 1U;
  tmp = bio_list_pop(& lo->lo_bio_list);
  }
  return (tmp);
}
}
static void loop_make_request(struct request_queue *q , struct bio *old_bio )
{
  struct loop_device *lo ;
  int rw ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___2 ;
  {
  lo = (struct loop_device *)q->queuedata;
  rw = (int )old_bio->bi_rw & 8193;
  if (rw == 8192) {
    rw = 0;
  } else {
  }
  {
  tmp = __builtin_expect((long )((unsigned long )lo == (unsigned long )((struct loop_device *)0) || (unsigned int )rw > 1U),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/block/loop.c"),
                         "i" (495), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  ldv_spin_lock_irq_49(& lo->lo_lock);
  }
  if (lo->lo_state != 1) {
    goto out;
  } else {
  }
  {
  tmp___0 = __builtin_expect(rw == 1, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp___1 = __builtin_expect((long )lo->lo_flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      goto out;
    } else {
    }
  } else {
  }
  if (lo->lo_bio_count >= q->nr_congestion_on) {
    if (lo->lo_bio_count < q->nr_congestion_off) {
      goto ldv_35197;
    } else {
    }
    {
    __ret = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_35203:
    {
    tmp___2 = prepare_to_wait_event(& lo->lo_req_wait, & __wait, 2);
    __int = tmp___2;
    }
    if (lo->lo_bio_count < q->nr_congestion_off) {
      goto ldv_35202;
    } else {
    }
    {
    ldv_spin_unlock_irq_50(& lo->lo_lock);
    schedule();
    ldv_spin_lock_irq_49(& lo->lo_lock);
    }
    goto ldv_35203;
    ldv_35202:
    {
    finish_wait(& lo->lo_req_wait, & __wait);
    }
    ldv_35197: ;
  } else {
  }
  {
  loop_add_bio(lo, old_bio);
  __wake_up(& lo->lo_event, 3U, 1, (void *)0);
  ldv_spin_unlock_irq_50(& lo->lo_lock);
  }
  return;
  out:
  {
  ldv_spin_unlock_irq_50(& lo->lo_lock);
  bio_endio(old_bio, -5);
  }
  return;
}
}
static void do_loop_switch(struct loop_device *lo , struct switch_request *p ) ;
__inline static void loop_handle_bio(struct loop_device *lo , struct bio *bio )
{
  int ret ;
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp___0 = __builtin_expect((unsigned long )bio->bi_bdev == (unsigned long )((struct block_device *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    do_loop_switch(lo, (struct switch_request *)bio->bi_private);
    bio_put(bio);
    }
  } else {
    {
    tmp = do_bio_filebacked(lo, bio);
    ret = tmp;
    bio_endio(bio, ret);
    }
  }
  return;
}
}
static int loop_thread(void *data )
{
  struct loop_device *lo ;
  struct bio *bio ;
  struct task_struct *tmp ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  {
  lo = (struct loop_device *)data;
  tmp = get_current();
  set_user_nice(tmp, -20L);
  }
  goto ldv_35230;
  ldv_35231:
  {
  __ret = 0;
  tmp___3 = bio_list_empty((struct bio_list const *)(& lo->lo_bio_list));
  }
  if (tmp___3 != 0) {
    {
    tmp___4 = kthread_should_stop();
    }
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    if (tmp___5) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_35227:
      {
      tmp___0 = prepare_to_wait_event(& lo->lo_event, & __wait, 1);
      __int = tmp___0;
      tmp___1 = bio_list_empty((struct bio_list const *)(& lo->lo_bio_list));
      }
      if (tmp___1 == 0) {
        goto ldv_35226;
      } else {
        {
        tmp___2 = kthread_should_stop();
        }
        if ((int )tmp___2) {
          goto ldv_35226;
        } else {
        }
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_35226;
      } else {
      }
      {
      schedule();
      }
      goto ldv_35227;
      ldv_35226:
      {
      finish_wait(& lo->lo_event, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
  } else {
  }
  {
  tmp___6 = bio_list_empty((struct bio_list const *)(& lo->lo_bio_list));
  }
  if (tmp___6 != 0) {
    goto ldv_35230;
  } else {
  }
  {
  ldv_spin_lock_irq_49(& lo->lo_lock);
  bio = loop_get_bio(lo);
  }
  if (lo->lo_bio_count < (lo->lo_queue)->nr_congestion_off) {
    {
    __wake_up(& lo->lo_req_wait, 3U, 1, (void *)0);
    }
  } else {
  }
  {
  ldv_spin_unlock_irq_50(& lo->lo_lock);
  tmp___7 = __builtin_expect((unsigned long )bio == (unsigned long )((struct bio *)0),
                             0L);
  }
  if (tmp___7 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/block/loop.c"),
                         "i" (567), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  loop_handle_bio(lo, bio);
  }
  ldv_35230:
  {
  tmp___8 = kthread_should_stop();
  }
  if (tmp___8) {
    tmp___9 = 0;
  } else {
    tmp___9 = 1;
  }
  if (tmp___9) {
    goto ldv_35231;
  } else {
    {
    tmp___10 = bio_list_empty((struct bio_list const *)(& lo->lo_bio_list));
    }
    if (tmp___10 == 0) {
      goto ldv_35231;
    } else {
      goto ldv_35232;
    }
  }
  ldv_35232: ;
  return (0);
}
}
static int loop_switch(struct loop_device *lo , struct file *file )
{
  struct switch_request w ;
  struct bio *bio ;
  struct bio *tmp ;
  {
  {
  tmp = bio_alloc(208U, 0U);
  bio = tmp;
  }
  if ((unsigned long )bio == (unsigned long )((struct bio *)0)) {
    return (-12);
  } else {
  }
  {
  init_completion(& w.wait);
  w.file = file;
  bio->bi_private = (void *)(& w);
  bio->bi_bdev = (struct block_device *)0;
  loop_make_request(lo->lo_queue, bio);
  wait_for_completion(& w.wait);
  }
  return (0);
}
}
static int loop_flush(struct loop_device *lo )
{
  int tmp ;
  {
  if ((unsigned long )lo->lo_thread == (unsigned long )((struct task_struct *)0)) {
    return (0);
  } else {
  }
  {
  tmp = loop_switch(lo, (struct file *)0);
  }
  return (tmp);
}
}
static void do_loop_switch(struct loop_device *lo , struct switch_request *p )
{
  struct file *file ;
  struct file *old_file ;
  struct address_space *mapping ;
  {
  file = p->file;
  old_file = lo->lo_backing_file;
  if ((unsigned long )file == (unsigned long )((struct file *)0)) {
    goto out;
  } else {
  }
  {
  mapping = file->f_mapping;
  mapping_set_gfp_mask(old_file->f_mapping, lo->old_gfp_mask);
  lo->lo_backing_file = file;
  lo->lo_blocksize = ((int )(mapping->host)->i_mode & 61440) == 24576 ? ((mapping->host)->__annonCompField39.i_bdev)->bd_block_size : 4096U;
  lo->old_gfp_mask = mapping_gfp_mask(mapping);
  mapping_set_gfp_mask(mapping, lo->old_gfp_mask & 4294967103U);
  }
  out:
  {
  complete(& p->wait);
  }
  return;
}
}
static int loop_change_fd(struct loop_device *lo , struct block_device *bdev , unsigned int arg )
{
  struct file *file ;
  struct file *old_file ;
  struct inode *inode ;
  int error ;
  loff_t tmp ;
  loff_t tmp___0 ;
  {
  error = -6;
  if (lo->lo_state != 1) {
    goto out;
  } else {
  }
  error = -22;
  if ((lo->lo_flags & 1) == 0) {
    goto out;
  } else {
  }
  {
  error = -9;
  file = fget(arg);
  }
  if ((unsigned long )file == (unsigned long )((struct file *)0)) {
    goto out;
  } else {
  }
  inode = (file->f_mapping)->host;
  old_file = lo->lo_backing_file;
  error = -22;
  if (((int )inode->i_mode & 61440) != 32768 && ((int )inode->i_mode & 61440) != 24576) {
    goto out_putf;
  } else {
  }
  {
  tmp = get_loop_size(lo, file);
  tmp___0 = get_loop_size(lo, old_file);
  }
  if (tmp != tmp___0) {
    goto out_putf;
  } else {
  }
  {
  error = loop_switch(lo, file);
  }
  if (error != 0) {
    goto out_putf;
  } else {
  }
  {
  fput(old_file);
  }
  if ((lo->lo_flags & 8) != 0) {
    {
    ioctl_by_bdev(bdev, 4703U, 0UL);
    }
  } else {
  }
  return (0);
  out_putf:
  {
  fput(file);
  }
  out: ;
  return (error);
}
}
__inline static int is_loop_device(struct file *file )
{
  struct inode *i ;
  {
  i = (file->f_mapping)->host;
  return (((unsigned long )i != (unsigned long )((struct inode *)0) && ((int )i->i_mode & 61440) == 24576) && i->i_rdev >> 20 == 7U);
}
}
static ssize_t loop_attr_show(struct device *dev , char *page , ssize_t (*callback)(struct loop_device * ,
                                                                                    char * ) )
{
  struct gendisk *disk ;
  struct device const *__mptr ;
  struct loop_device *lo ;
  ssize_t tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  disk = (struct gendisk *)(__mptr + 0xffffffffffffff60UL);
  lo = (struct loop_device *)disk->private_data;
  tmp = (*callback)(lo, page);
  }
  return (tmp);
}
}
static ssize_t loop_attr_backing_file_show(struct loop_device *lo , char *buf )
{
  ssize_t ret ;
  char *p ;
  size_t tmp ;
  ssize_t tmp___0 ;
  long tmp___1 ;
  {
  {
  p = (char *)0;
  ldv_spin_lock_irq_49(& lo->lo_lock);
  }
  if ((unsigned long )lo->lo_backing_file != (unsigned long )((struct file *)0)) {
    {
    p = d_path((struct path const *)(& (lo->lo_backing_file)->f_path), buf, 4095);
    }
  } else {
  }
  {
  ldv_spin_unlock_irq_50(& lo->lo_lock);
  tmp___1 = IS_ERR_OR_NULL((void const *)p);
  }
  if (tmp___1 != 0L) {
    {
    ret = PTR_ERR((void const *)p);
    }
  } else {
    {
    tmp = strlen((char const *)p);
    ret = (ssize_t )tmp;
    memmove((void *)buf, (void const *)p, (size_t )ret);
    tmp___0 = ret;
    ret = ret + 1L;
    *(buf + (unsigned long )tmp___0) = 10;
    *(buf + (unsigned long )ret) = 0;
    }
  }
  return (ret);
}
}
static ssize_t loop_attr_offset_show(struct loop_device *lo , char *buf )
{
  int tmp ;
  {
  {
  tmp = sprintf(buf, "%llu\n", (unsigned long long )lo->lo_offset);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t loop_attr_sizelimit_show(struct loop_device *lo , char *buf )
{
  int tmp ;
  {
  {
  tmp = sprintf(buf, "%llu\n", (unsigned long long )lo->lo_sizelimit);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t loop_attr_autoclear_show(struct loop_device *lo , char *buf )
{
  int autoclear ;
  int tmp ;
  {
  {
  autoclear = lo->lo_flags & 4;
  tmp = sprintf(buf, "%s\n", autoclear != 0 ? (char *)"1" : (char *)"0");
  }
  return ((ssize_t )tmp);
}
}
static ssize_t loop_attr_partscan_show(struct loop_device *lo , char *buf )
{
  int partscan ;
  int tmp ;
  {
  {
  partscan = lo->lo_flags & 8;
  tmp = sprintf(buf, "%s\n", partscan != 0 ? (char *)"1" : (char *)"0");
  }
  return ((ssize_t )tmp);
}
}
static ssize_t loop_attr_do_show_backing_file(struct device *d , struct device_attribute *attr ,
                                              char *b )
{
  ssize_t tmp ;
  {
  {
  tmp = loop_attr_show(d, b, & loop_attr_backing_file_show);
  }
  return (tmp);
}
}
static struct device_attribute loop_attr_backing_file = {{"backing_file", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & loop_attr_do_show_backing_file, (ssize_t (*)(struct device * , struct device_attribute * ,
                                                   char const * , size_t ))0};
static ssize_t loop_attr_do_show_offset(struct device *d , struct device_attribute *attr ,
                                        char *b )
{
  ssize_t tmp ;
  {
  {
  tmp = loop_attr_show(d, b, & loop_attr_offset_show);
  }
  return (tmp);
}
}
static struct device_attribute loop_attr_offset = {{"offset", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & loop_attr_do_show_offset,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t loop_attr_do_show_sizelimit(struct device *d , struct device_attribute *attr ,
                                           char *b )
{
  ssize_t tmp ;
  {
  {
  tmp = loop_attr_show(d, b, & loop_attr_sizelimit_show);
  }
  return (tmp);
}
}
static struct device_attribute loop_attr_sizelimit = {{"sizelimit", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & loop_attr_do_show_sizelimit, (ssize_t (*)(struct device * , struct device_attribute * ,
                                                char const * , size_t ))0};
static ssize_t loop_attr_do_show_autoclear(struct device *d , struct device_attribute *attr ,
                                           char *b )
{
  ssize_t tmp ;
  {
  {
  tmp = loop_attr_show(d, b, & loop_attr_autoclear_show);
  }
  return (tmp);
}
}
static struct device_attribute loop_attr_autoclear = {{"autoclear", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & loop_attr_do_show_autoclear, (ssize_t (*)(struct device * , struct device_attribute * ,
                                                char const * , size_t ))0};
static ssize_t loop_attr_do_show_partscan(struct device *d , struct device_attribute *attr ,
                                          char *b )
{
  ssize_t tmp ;
  {
  {
  tmp = loop_attr_show(d, b, & loop_attr_partscan_show);
  }
  return (tmp);
}
}
static struct device_attribute loop_attr_partscan = {{"partscan", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & loop_attr_do_show_partscan, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0};
static struct attribute *loop_attrs[6U] = { & loop_attr_backing_file.attr, & loop_attr_offset.attr, & loop_attr_sizelimit.attr, & loop_attr_autoclear.attr,
        & loop_attr_partscan.attr, (struct attribute *)0};
static struct attribute_group loop_attribute_group = {"loop", 0, (struct attribute **)(& loop_attrs), 0};
static int loop_sysfs_init(struct loop_device *lo )
{
  int tmp ;
  {
  {
  tmp = sysfs_create_group(& (lo->lo_disk)->part0.__dev.kobj, (struct attribute_group const *)(& loop_attribute_group));
  }
  return (tmp);
}
}
static void loop_sysfs_exit(struct loop_device *lo )
{
  {
  {
  sysfs_remove_group(& (lo->lo_disk)->part0.__dev.kobj, (struct attribute_group const *)(& loop_attribute_group));
  }
  return;
}
}
static void loop_config_discard(struct loop_device *lo )
{
  struct file *file ;
  struct inode *inode ;
  struct request_queue *q ;
  {
  file = lo->lo_backing_file;
  inode = (file->f_mapping)->host;
  q = lo->lo_queue;
  if ((unsigned long )(file->f_op)->fallocate == (unsigned long )((long (* )(struct file * ,
                                                                                        int ,
                                                                                        loff_t ,
                                                                                        loff_t ))0) || lo->lo_encrypt_key_size != 0) {
    {
    q->limits.discard_granularity = 0U;
    q->limits.discard_alignment = 0U;
    q->limits.max_discard_sectors = 0U;
    q->limits.discard_zeroes_data = 0U;
    queue_flag_clear_unlocked(14U, q);
    }
    return;
  } else {
  }
  {
  q->limits.discard_granularity = (unsigned int )(inode->i_sb)->s_blocksize;
  q->limits.discard_alignment = 0U;
  q->limits.max_discard_sectors = 8388607U;
  q->limits.discard_zeroes_data = 1U;
  queue_flag_set_unlocked(14U, q);
  }
  return;
}
}
static int loop_set_fd(struct loop_device *lo , fmode_t mode , struct block_device *bdev ,
                       unsigned int arg )
{
  struct file *file ;
  struct file *f ;
  struct inode *inode ;
  struct address_space *mapping ;
  unsigned int lo_blocksize ;
  int lo_flags ;
  int error ;
  loff_t size ;
  struct loop_device *l ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  lo_flags = 0;
  __module_get(& __this_module);
  error = -9;
  file = fget(arg);
  }
  if ((unsigned long )file == (unsigned long )((struct file *)0)) {
    goto out;
  } else {
  }
  error = -16;
  if (lo->lo_state != 0) {
    goto out_putf;
  } else {
  }
  f = file;
  goto ldv_35387;
  ldv_35386: ;
  if ((unsigned long )((f->f_mapping)->host)->__annonCompField39.i_bdev == (unsigned long )bdev) {
    goto out_putf;
  } else {
  }
  l = (struct loop_device *)((((f->f_mapping)->host)->__annonCompField39.i_bdev)->bd_disk)->private_data;
  if (l->lo_state == 0) {
    error = -22;
    goto out_putf;
  } else {
  }
  f = l->lo_backing_file;
  ldv_35387:
  {
  tmp = is_loop_device(f);
  }
  if (tmp != 0) {
    goto ldv_35386;
  } else {
  }
  mapping = file->f_mapping;
  inode = mapping->host;
  error = -22;
  if (((int )inode->i_mode & 61440) != 32768 && ((int )inode->i_mode & 61440) != 24576) {
    goto out_putf;
  } else {
  }
  if (((file->f_mode & 2U) == 0U || (mode & 2U) == 0U) || (unsigned long )(file->f_op)->write == (unsigned long )((ssize_t (* )(struct file * ,
                                                                                                                                           char const * ,
                                                                                                                                           size_t ,
                                                                                                                                           loff_t * ))0)) {
    lo_flags = lo_flags | 1;
  } else {
  }
  {
  lo_blocksize = ((int )inode->i_mode & 61440) == 24576 ? (inode->__annonCompField39.i_bdev)->bd_block_size : 4096U;
  error = -27;
  size = get_loop_size(lo, file);
  error = 0;
  set_device_ro(bdev, lo_flags & 1);
  lo->lo_blocksize = lo_blocksize;
  lo->lo_device = bdev;
  lo->lo_flags = lo_flags;
  lo->lo_backing_file = file;
  lo->transfer = & transfer_none;
  lo->ioctl = (int (*)(struct loop_device * , int , unsigned long ))0;
  lo->lo_sizelimit = 0LL;
  lo->lo_bio_count = 0U;
  lo->old_gfp_mask = mapping_gfp_mask(mapping);
  mapping_set_gfp_mask(mapping, lo->old_gfp_mask & 4294967103U);
  bio_list_init(& lo->lo_bio_list);
  }
  if ((lo_flags & 1) == 0 && (unsigned long )(file->f_op)->fsync != (unsigned long )((int (* )(struct file * ,
                                                                                                          loff_t ,
                                                                                                          loff_t ,
                                                                                                          int ))0)) {
    {
    blk_queue_flush(lo->lo_queue, 4096U);
    }
  } else {
  }
  {
  set_capacity(lo->lo_disk, (sector_t )size);
  bd_set_size(bdev, size << 9);
  loop_sysfs_init(lo);
  kobject_uevent(& (bdev->bd_disk)->part0.__dev.kobj, 2);
  set_blocksize(bdev, (int )lo_blocksize);
  lo->lo_thread = kthread_create_on_node(& loop_thread, (void *)lo, -1, "loop%d",
                                         lo->lo_number);
  tmp___1 = IS_ERR((void const *)lo->lo_thread);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = PTR_ERR((void const *)lo->lo_thread);
    error = (int )tmp___0;
    }
    goto out_clr;
  } else {
  }
  {
  lo->lo_state = 1;
  wake_up_process(lo->lo_thread);
  }
  if (part_shift != 0) {
    lo->lo_flags = lo->lo_flags | 8;
  } else {
  }
  if ((lo->lo_flags & 8) != 0) {
    {
    ioctl_by_bdev(bdev, 4703U, 0UL);
    }
  } else {
  }
  {
  bdgrab(bdev);
  }
  return (0);
  out_clr:
  {
  loop_sysfs_exit(lo);
  lo->lo_thread = (struct task_struct *)0;
  lo->lo_device = (struct block_device *)0;
  lo->lo_backing_file = (struct file *)0;
  lo->lo_flags = 0;
  set_capacity(lo->lo_disk, 0UL);
  invalidate_bdev(bdev);
  bd_set_size(bdev, 0LL);
  kobject_uevent(& (bdev->bd_disk)->part0.__dev.kobj, 2);
  mapping_set_gfp_mask(mapping, lo->old_gfp_mask);
  lo->lo_state = 0;
  }
  out_putf:
  {
  fput(file);
  }
  out:
  {
  module_put(& __this_module);
  }
  return (error);
}
}
static int loop_release_xfer(struct loop_device *lo )
{
  int err ;
  struct loop_func_table *xfer ;
  {
  err = 0;
  xfer = lo->lo_encryption;
  if ((unsigned long )xfer != (unsigned long )((struct loop_func_table *)0)) {
    if ((unsigned long )xfer->release != (unsigned long )((int (*)(struct loop_device * ))0)) {
      {
      err = (*(xfer->release))(lo);
      }
    } else {
    }
    {
    lo->transfer = (int (*)(struct loop_device * , int , struct page * , unsigned int ,
                            struct page * , unsigned int , int , sector_t ))0;
    lo->lo_encryption = (struct loop_func_table *)0;
    module_put(xfer->owner);
    }
  } else {
  }
  return (err);
}
}
static int loop_init_xfer(struct loop_device *lo , struct loop_func_table *xfer ,
                          struct loop_info64 const *i )
{
  int err ;
  struct module *owner ;
  bool tmp ;
  int tmp___0 ;
  {
  err = 0;
  if ((unsigned long )xfer != (unsigned long )((struct loop_func_table *)0)) {
    {
    owner = xfer->owner;
    tmp = try_module_get(owner);
    }
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return (-22);
    } else {
    }
    if ((unsigned long )xfer->init != (unsigned long )((int (*)(struct loop_device * ,
                                                                struct loop_info64 const * ))0)) {
      {
      err = (*(xfer->init))(lo, i);
      }
    } else {
    }
    if (err != 0) {
      {
      module_put(owner);
      }
    } else {
      lo->lo_encryption = xfer;
    }
  } else {
  }
  return (err);
}
}
static int loop_clr_fd(struct loop_device *lo )
{
  struct file *filp ;
  gfp_t gfp ;
  struct block_device *bdev ;
  {
  filp = lo->lo_backing_file;
  gfp = lo->old_gfp_mask;
  bdev = lo->lo_device;
  if (lo->lo_state != 1) {
    return (-6);
  } else {
  }
  if (lo->lo_refcnt > 1) {
    {
    lo->lo_flags = lo->lo_flags | 4;
    ldv_mutex_unlock_58(& lo->lo_ctl_mutex);
    }
    return (0);
  } else {
  }
  if ((unsigned long )filp == (unsigned long )((struct file *)0)) {
    return (-22);
  } else {
  }
  {
  ldv_spin_lock_irq_49(& lo->lo_lock);
  lo->lo_state = 2;
  ldv_spin_unlock_irq_50(& lo->lo_lock);
  kthread_stop(lo->lo_thread);
  ldv_spin_lock_irq_49(& lo->lo_lock);
  lo->lo_backing_file = (struct file *)0;
  ldv_spin_unlock_irq_50(& lo->lo_lock);
  loop_release_xfer(lo);
  lo->transfer = (int (*)(struct loop_device * , int , struct page * , unsigned int ,
                          struct page * , unsigned int , int , sector_t ))0;
  lo->ioctl = (int (*)(struct loop_device * , int , unsigned long ))0;
  lo->lo_device = (struct block_device *)0;
  lo->lo_encryption = (struct loop_func_table *)0;
  lo->lo_offset = 0LL;
  lo->lo_sizelimit = 0LL;
  lo->lo_encrypt_key_size = 0;
  lo->lo_thread = (struct task_struct *)0;
  memset((void *)(& lo->lo_encrypt_key), 0, 32UL);
  memset((void *)(& lo->lo_crypt_name), 0, 64UL);
  memset((void *)(& lo->lo_file_name), 0, 64UL);
  }
  if ((unsigned long )bdev != (unsigned long )((struct block_device *)0)) {
    {
    bdput(bdev);
    invalidate_bdev(bdev);
    }
  } else {
  }
  {
  set_capacity(lo->lo_disk, 0UL);
  loop_sysfs_exit(lo);
  }
  if ((unsigned long )bdev != (unsigned long )((struct block_device *)0)) {
    {
    bd_set_size(bdev, 0LL);
    kobject_uevent(& (bdev->bd_disk)->part0.__dev.kobj, 2);
    }
  } else {
  }
  {
  mapping_set_gfp_mask(filp->f_mapping, gfp);
  lo->lo_state = 0;
  module_put(& __this_module);
  }
  if ((lo->lo_flags & 8) != 0 && (unsigned long )bdev != (unsigned long )((struct block_device *)0)) {
    {
    ioctl_by_bdev(bdev, 4703U, 0UL);
    }
  } else {
  }
  lo->lo_flags = 0;
  if (part_shift == 0) {
    (lo->lo_disk)->flags = (lo->lo_disk)->flags | 512;
  } else {
  }
  {
  ldv_mutex_unlock_63(& lo->lo_ctl_mutex);
  fput(filp);
  }
  return (0);
}
}
static int loop_set_status(struct loop_device *lo , struct loop_info64 const *info )
{
  int err ;
  struct loop_func_table *xfer ;
  kuid_t uid ;
  int tmp ;
  struct task_struct *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  unsigned int type ;
  int tmp___5 ;
  {
  {
  tmp = debug_lockdep_rcu_enabled();
  tmp___0 = get_current();
  uid = (tmp___0->cred)->uid;
  }
  if (lo->lo_encrypt_key_size != 0) {
    {
    tmp___1 = uid_eq(lo->lo_key_owner, uid);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      {
      tmp___3 = capable(21);
      }
      if (tmp___3) {
        tmp___4 = 0;
      } else {
        tmp___4 = 1;
      }
      if (tmp___4) {
        return (-1);
      } else {
      }
    } else {
    }
  } else {
  }
  if (lo->lo_state != 1) {
    return (-6);
  } else {
  }
  if ((unsigned int )info->lo_encrypt_key_size > 32U) {
    return (-22);
  } else {
  }
  {
  err = loop_release_xfer(lo);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )info->lo_encrypt_type != 0U) {
    type = info->lo_encrypt_type;
    if (type > 19U) {
      return (-22);
    } else {
    }
    xfer = xfer_funcs[type];
    if ((unsigned long )xfer == (unsigned long )((struct loop_func_table *)0)) {
      return (-22);
    } else {
    }
  } else {
    xfer = (struct loop_func_table *)0;
  }
  {
  err = loop_init_xfer(lo, xfer, info);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned long long )lo->lo_offset != (unsigned long long )info->lo_offset || (unsigned long long )lo->lo_sizelimit != (unsigned long long )info->lo_sizelimit) {
    {
    tmp___5 = figure_loop_size(lo, (loff_t )info->lo_offset, (loff_t )info->lo_sizelimit);
    }
    if (tmp___5 != 0) {
      return (-27);
    } else {
    }
  } else {
  }
  {
  loop_config_discard(lo);
  memcpy((void *)(& lo->lo_file_name), (void const *)(& info->lo_file_name), 64UL);
  memcpy((void *)(& lo->lo_crypt_name), (void const *)(& info->lo_crypt_name), 64UL);
  lo->lo_file_name[63] = 0;
  lo->lo_crypt_name[63] = 0;
  }
  if ((unsigned long )xfer == (unsigned long )((struct loop_func_table *)0)) {
    xfer = & none_funcs;
  } else {
  }
  lo->transfer = xfer->transfer;
  lo->ioctl = xfer->ioctl;
  if ((((unsigned int )lo->lo_flags ^ (unsigned int )info->lo_flags) & 4U) != 0U) {
    lo->lo_flags = lo->lo_flags ^ 4;
  } else {
  }
  if (((unsigned int )info->lo_flags & 8U) != 0U && (lo->lo_flags & 8) == 0) {
    {
    lo->lo_flags = lo->lo_flags | 8;
    (lo->lo_disk)->flags = (lo->lo_disk)->flags & -513;
    ioctl_by_bdev(lo->lo_device, 4703U, 0UL);
    }
  } else {
  }
  lo->lo_encrypt_key_size = (int )info->lo_encrypt_key_size;
  lo->lo_init[0] = (__u32 )info->lo_init[0];
  lo->lo_init[1] = (__u32 )info->lo_init[1];
  if ((unsigned int )info->lo_encrypt_key_size != 0U) {
    {
    memcpy((void *)(& lo->lo_encrypt_key), (void const *)(& info->lo_encrypt_key),
           (size_t )info->lo_encrypt_key_size);
    lo->lo_key_owner = uid;
    }
  } else {
  }
  return (0);
}
}
static int loop_get_status(struct loop_device *lo , struct loop_info64 *info )
{
  struct file *file ;
  struct kstat stat ;
  int error ;
  bool tmp ;
  {
  file = lo->lo_backing_file;
  if (lo->lo_state != 1) {
    return (-6);
  } else {
  }
  {
  error = vfs_getattr(& file->f_path, & stat);
  }
  if (error != 0) {
    return (error);
  } else {
  }
  {
  memset((void *)info, 0, 232UL);
  info->lo_number = (__u32 )lo->lo_number;
  info->lo_device = huge_encode_dev(stat.dev);
  info->lo_inode = stat.ino;
  info->lo_rdevice = huge_encode_dev((unsigned long )lo->lo_device != (unsigned long )((struct block_device *)0) ? stat.rdev : stat.dev);
  info->lo_offset = (__u64 )lo->lo_offset;
  info->lo_sizelimit = (__u64 )lo->lo_sizelimit;
  info->lo_flags = (__u32 )lo->lo_flags;
  memcpy((void *)(& info->lo_file_name), (void const *)(& lo->lo_file_name), 64UL);
  memcpy((void *)(& info->lo_crypt_name), (void const *)(& lo->lo_crypt_name), 64UL);
  info->lo_encrypt_type = (unsigned long )lo->lo_encryption != (unsigned long )((struct loop_func_table *)0) ? (__u32 )(lo->lo_encryption)->number : 0U;
  }
  if (lo->lo_encrypt_key_size != 0) {
    {
    tmp = capable(21);
    }
    if ((int )tmp) {
      {
      info->lo_encrypt_key_size = (__u32 )lo->lo_encrypt_key_size;
      memcpy((void *)(& info->lo_encrypt_key), (void const *)(& lo->lo_encrypt_key),
             (size_t )lo->lo_encrypt_key_size);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static void loop_info64_from_old(struct loop_info const *info , struct loop_info64 *info64 )
{
  {
  {
  memset((void *)info64, 0, 232UL);
  info64->lo_number = (__u32 )info->lo_number;
  info64->lo_device = (__u64 )info->lo_device;
  info64->lo_inode = (__u64 )info->lo_inode;
  info64->lo_rdevice = (__u64 )info->lo_rdevice;
  info64->lo_offset = (__u64 )info->lo_offset;
  info64->lo_sizelimit = 0ULL;
  info64->lo_encrypt_type = (__u32 )info->lo_encrypt_type;
  info64->lo_encrypt_key_size = (__u32 )info->lo_encrypt_key_size;
  info64->lo_flags = (__u32 )info->lo_flags;
  info64->lo_init[0] = (__u64 )info->lo_init[0];
  info64->lo_init[1] = (__u64 )info->lo_init[1];
  }
  if ((int )info->lo_encrypt_type == 18) {
    {
    memcpy((void *)(& info64->lo_crypt_name), (void const *)(& info->lo_name), 64UL);
    }
  } else {
    {
    memcpy((void *)(& info64->lo_file_name), (void const *)(& info->lo_name), 64UL);
    }
  }
  {
  memcpy((void *)(& info64->lo_encrypt_key), (void const *)(& info->lo_encrypt_key),
         32UL);
  }
  return;
}
}
static int loop_info64_to_old(struct loop_info64 const *info64 , struct loop_info *info )
{
  {
  {
  memset((void *)info, 0, 168UL);
  info->lo_number = (int )info64->lo_number;
  info->lo_device = (__kernel_old_dev_t )info64->lo_device;
  info->lo_inode = (unsigned long )info64->lo_inode;
  info->lo_rdevice = (__kernel_old_dev_t )info64->lo_rdevice;
  info->lo_offset = (int )info64->lo_offset;
  info->lo_encrypt_type = (int )info64->lo_encrypt_type;
  info->lo_encrypt_key_size = (int )info64->lo_encrypt_key_size;
  info->lo_flags = (int )info64->lo_flags;
  info->lo_init[0] = (unsigned long )info64->lo_init[0];
  info->lo_init[1] = (unsigned long )info64->lo_init[1];
  }
  if (info->lo_encrypt_type == 18) {
    {
    memcpy((void *)(& info->lo_name), (void const *)(& info64->lo_crypt_name), 64UL);
    }
  } else {
    {
    memcpy((void *)(& info->lo_name), (void const *)(& info64->lo_file_name), 64UL);
    }
  }
  {
  memcpy((void *)(& info->lo_encrypt_key), (void const *)(& info64->lo_encrypt_key),
         32UL);
  }
  if ((((unsigned long long )info->lo_device != (unsigned long long )info64->lo_device || (unsigned long long )info->lo_rdevice != (unsigned long long )info64->lo_rdevice) || (unsigned long long )info->lo_inode != (unsigned long long )info64->lo_inode) || (unsigned long long )info->lo_offset != (unsigned long long )info64->lo_offset) {
    return (-75);
  } else {
  }
  return (0);
}
}
static int loop_set_status_old(struct loop_device *lo , struct loop_info const *arg )
{
  struct loop_info info ;
  struct loop_info64 info64 ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  {
  tmp = copy_from_user((void *)(& info), (void const *)arg, 168UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  {
  loop_info64_from_old((struct loop_info const *)(& info), & info64);
  tmp___0 = loop_set_status(lo, (struct loop_info64 const *)(& info64));
  }
  return (tmp___0);
}
}
static int loop_set_status64(struct loop_device *lo , struct loop_info64 const *arg )
{
  struct loop_info64 info64 ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  {
  tmp = copy_from_user((void *)(& info64), (void const *)arg, 232UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  {
  tmp___0 = loop_set_status(lo, (struct loop_info64 const *)(& info64));
  }
  return (tmp___0);
}
}
static int loop_get_status_old(struct loop_device *lo , struct loop_info *arg )
{
  struct loop_info info ;
  struct loop_info64 info64 ;
  int err ;
  unsigned long tmp ;
  {
  err = 0;
  if ((unsigned long )arg == (unsigned long )((struct loop_info *)0)) {
    err = -22;
  } else {
  }
  if (err == 0) {
    {
    err = loop_get_status(lo, & info64);
    }
  } else {
  }
  if (err == 0) {
    {
    err = loop_info64_to_old((struct loop_info64 const *)(& info64), & info);
    }
  } else {
  }
  if (err == 0) {
    {
    tmp = copy_to_user((void *)arg, (void const *)(& info), 168UL);
    }
    if (tmp != 0UL) {
      err = -14;
    } else {
    }
  } else {
  }
  return (err);
}
}
static int loop_get_status64(struct loop_device *lo , struct loop_info64 *arg )
{
  struct loop_info64 info64 ;
  int err ;
  unsigned long tmp ;
  {
  err = 0;
  if ((unsigned long )arg == (unsigned long )((struct loop_info64 *)0)) {
    err = -22;
  } else {
  }
  if (err == 0) {
    {
    err = loop_get_status(lo, & info64);
    }
  } else {
  }
  if (err == 0) {
    {
    tmp = copy_to_user((void *)arg, (void const *)(& info64), 232UL);
    }
    if (tmp != 0UL) {
      err = -14;
    } else {
    }
  } else {
  }
  return (err);
}
}
static int loop_set_capacity(struct loop_device *lo , struct block_device *bdev )
{
  long tmp ;
  int tmp___0 ;
  {
  {
  tmp = __builtin_expect(lo->lo_state != 1, 0L);
  }
  if (tmp != 0L) {
    return (-6);
  } else {
  }
  {
  tmp___0 = figure_loop_size(lo, lo->lo_offset, lo->lo_sizelimit);
  }
  return (tmp___0);
}
}
static int lo_ioctl(struct block_device *bdev , fmode_t mode , unsigned int cmd ,
                    unsigned long arg )
{
  struct loop_device *lo ;
  int err ;
  bool tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  lo = (struct loop_device *)(bdev->bd_disk)->private_data;
  ldv_mutex_lock_nested_64(& lo->lo_ctl_mutex, 1U);
  }
  {
  if (cmd == 19456U) {
    goto case_19456;
  } else {
  }
  if (cmd == 19462U) {
    goto case_19462;
  } else {
  }
  if (cmd == 19457U) {
    goto case_19457;
  } else {
  }
  if (cmd == 19458U) {
    goto case_19458;
  } else {
  }
  if (cmd == 19459U) {
    goto case_19459;
  } else {
  }
  if (cmd == 19460U) {
    goto case_19460;
  } else {
  }
  if (cmd == 19461U) {
    goto case_19461;
  } else {
  }
  if (cmd == 19463U) {
    goto case_19463;
  } else {
  }
  goto switch_default;
  case_19456:
  {
  err = loop_set_fd(lo, mode, bdev, (unsigned int )arg);
  }
  goto ldv_35470;
  case_19462:
  {
  err = loop_change_fd(lo, bdev, (unsigned int )arg);
  }
  goto ldv_35470;
  case_19457:
  {
  err = loop_clr_fd(lo);
  }
  if (err == 0) {
    goto out_unlocked;
  } else {
  }
  goto ldv_35470;
  case_19458:
  err = -1;
  if ((mode & 2U) != 0U) {
    {
    err = loop_set_status_old(lo, (struct loop_info const *)arg);
    }
  } else {
    {
    tmp = capable(21);
    }
    if ((int )tmp) {
      {
      err = loop_set_status_old(lo, (struct loop_info const *)arg);
      }
    } else {
    }
  }
  goto ldv_35470;
  case_19459:
  {
  err = loop_get_status_old(lo, (struct loop_info *)arg);
  }
  goto ldv_35470;
  case_19460:
  err = -1;
  if ((mode & 2U) != 0U) {
    {
    err = loop_set_status64(lo, (struct loop_info64 const *)arg);
    }
  } else {
    {
    tmp___0 = capable(21);
    }
    if ((int )tmp___0) {
      {
      err = loop_set_status64(lo, (struct loop_info64 const *)arg);
      }
    } else {
    }
  }
  goto ldv_35470;
  case_19461:
  {
  err = loop_get_status64(lo, (struct loop_info64 *)arg);
  }
  goto ldv_35470;
  case_19463:
  err = -1;
  if ((mode & 2U) != 0U) {
    {
    err = loop_set_capacity(lo, bdev);
    }
  } else {
    {
    tmp___1 = capable(21);
    }
    if ((int )tmp___1) {
      {
      err = loop_set_capacity(lo, bdev);
      }
    } else {
    }
  }
  goto ldv_35470;
  switch_default: ;
  if ((unsigned long )lo->ioctl != (unsigned long )((int (*)(struct loop_device * ,
                                                             int , unsigned long ))0)) {
    {
    tmp___2 = (*(lo->ioctl))(lo, (int )cmd, arg);
    err = tmp___2;
    }
  } else {
    err = -22;
  }
  switch_break: ;
  }
  ldv_35470:
  {
  ldv_mutex_unlock_65(& lo->lo_ctl_mutex);
  }
  out_unlocked: ;
  return (err);
}
}
static int loop_info64_from_compat(struct compat_loop_info const *arg , struct loop_info64 *info64 )
{
  struct compat_loop_info info ;
  unsigned long tmp ;
  {
  {
  tmp = copy_from_user((void *)(& info), (void const *)arg, 140UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  {
  memset((void *)info64, 0, 232UL);
  info64->lo_number = (__u32 )info.lo_number;
  info64->lo_device = (__u64 )info.lo_device;
  info64->lo_inode = (__u64 )info.lo_inode;
  info64->lo_rdevice = (__u64 )info.lo_rdevice;
  info64->lo_offset = (__u64 )info.lo_offset;
  info64->lo_sizelimit = 0ULL;
  info64->lo_encrypt_type = (__u32 )info.lo_encrypt_type;
  info64->lo_encrypt_key_size = (__u32 )info.lo_encrypt_key_size;
  info64->lo_flags = (__u32 )info.lo_flags;
  info64->lo_init[0] = (__u64 )info.lo_init[0];
  info64->lo_init[1] = (__u64 )info.lo_init[1];
  }
  if (info.lo_encrypt_type == 18) {
    {
    memcpy((void *)(& info64->lo_crypt_name), (void const *)(& info.lo_name), 64UL);
    }
  } else {
    {
    memcpy((void *)(& info64->lo_file_name), (void const *)(& info.lo_name), 64UL);
    }
  }
  {
  memcpy((void *)(& info64->lo_encrypt_key), (void const *)(& info.lo_encrypt_key),
         32UL);
  }
  return (0);
}
}
static int loop_info64_to_compat(struct loop_info64 const *info64 , struct compat_loop_info *arg )
{
  struct compat_loop_info info ;
  unsigned long tmp ;
  {
  {
  memset((void *)(& info), 0, 140UL);
  info.lo_number = (compat_int_t )info64->lo_number;
  info.lo_device = (compat_dev_t )info64->lo_device;
  info.lo_inode = (compat_ulong_t )info64->lo_inode;
  info.lo_rdevice = (compat_dev_t )info64->lo_rdevice;
  info.lo_offset = (compat_int_t )info64->lo_offset;
  info.lo_encrypt_type = (compat_int_t )info64->lo_encrypt_type;
  info.lo_encrypt_key_size = (compat_int_t )info64->lo_encrypt_key_size;
  info.lo_flags = (compat_int_t )info64->lo_flags;
  info.lo_init[0] = (compat_ulong_t )info64->lo_init[0];
  info.lo_init[1] = (compat_ulong_t )info64->lo_init[1];
  }
  if (info.lo_encrypt_type == 18) {
    {
    memcpy((void *)(& info.lo_name), (void const *)(& info64->lo_crypt_name), 64UL);
    }
  } else {
    {
    memcpy((void *)(& info.lo_name), (void const *)(& info64->lo_file_name), 64UL);
    }
  }
  {
  memcpy((void *)(& info.lo_encrypt_key), (void const *)(& info64->lo_encrypt_key),
         32UL);
  }
  if ((((((unsigned long long )info.lo_device != (unsigned long long )info64->lo_device || (unsigned long long )info.lo_rdevice != (unsigned long long )info64->lo_rdevice) || (unsigned long long )info.lo_inode != (unsigned long long )info64->lo_inode) || (unsigned long long )info.lo_offset != (unsigned long long )info64->lo_offset) || (unsigned long long )info.lo_init[0] != info64->lo_init[0]) || (unsigned long long )info.lo_init[1] != info64->lo_init[1]) {
    return (-75);
  } else {
  }
  {
  tmp = copy_to_user((void *)arg, (void const *)(& info), 140UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int loop_set_status_compat(struct loop_device *lo , struct compat_loop_info const *arg )
{
  struct loop_info64 info64 ;
  int ret ;
  int tmp ;
  {
  {
  ret = loop_info64_from_compat(arg, & info64);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp = loop_set_status(lo, (struct loop_info64 const *)(& info64));
  }
  return (tmp);
}
}
static int loop_get_status_compat(struct loop_device *lo , struct compat_loop_info *arg )
{
  struct loop_info64 info64 ;
  int err ;
  {
  err = 0;
  if ((unsigned long )arg == (unsigned long )((struct compat_loop_info *)0)) {
    err = -22;
  } else {
  }
  if (err == 0) {
    {
    err = loop_get_status(lo, & info64);
    }
  } else {
  }
  if (err == 0) {
    {
    err = loop_info64_to_compat((struct loop_info64 const *)(& info64), arg);
    }
  } else {
  }
  return (err);
}
}
static int lo_compat_ioctl(struct block_device *bdev , fmode_t mode , unsigned int cmd ,
                           unsigned long arg )
{
  struct loop_device *lo ;
  int err ;
  void *tmp ;
  {
  lo = (struct loop_device *)(bdev->bd_disk)->private_data;
  {
  if (cmd == 19458U) {
    goto case_19458;
  } else {
  }
  if (cmd == 19459U) {
    goto case_19459;
  } else {
  }
  if (cmd == 19463U) {
    goto case_19463;
  } else {
  }
  if (cmd == 19457U) {
    goto case_19457;
  } else {
  }
  if (cmd == 19461U) {
    goto case_19461;
  } else {
  }
  if (cmd == 19460U) {
    goto case_19460;
  } else {
  }
  if (cmd == 19456U) {
    goto case_19456;
  } else {
  }
  if (cmd == 19462U) {
    goto case_19462;
  } else {
  }
  goto switch_default;
  case_19458:
  {
  ldv_mutex_lock_66(& lo->lo_ctl_mutex);
  err = loop_set_status_compat(lo, (struct compat_loop_info const *)arg);
  ldv_mutex_unlock_67(& lo->lo_ctl_mutex);
  }
  goto ldv_35524;
  case_19459:
  {
  ldv_mutex_lock_68(& lo->lo_ctl_mutex);
  err = loop_get_status_compat(lo, (struct compat_loop_info *)arg);
  ldv_mutex_unlock_69(& lo->lo_ctl_mutex);
  }
  goto ldv_35524;
  case_19463: ;
  case_19457: ;
  case_19461: ;
  case_19460:
  {
  tmp = compat_ptr((compat_uptr_t )arg);
  arg = (unsigned long )tmp;
  }
  case_19456: ;
  case_19462:
  {
  err = lo_ioctl(bdev, mode, cmd, arg);
  }
  goto ldv_35524;
  switch_default:
  err = -515;
  goto ldv_35524;
  switch_break: ;
  }
  ldv_35524: ;
  return (err);
}
}
static int lo_open(struct block_device *bdev , fmode_t mode )
{
  struct loop_device *lo ;
  int err ;
  {
  {
  err = 0;
  ldv_mutex_lock_70(& loop_index_mutex);
  lo = (struct loop_device *)(bdev->bd_disk)->private_data;
  }
  if ((unsigned long )lo == (unsigned long )((struct loop_device *)0)) {
    err = -6;
    goto out;
  } else {
  }
  {
  ldv_mutex_lock_71(& lo->lo_ctl_mutex);
  lo->lo_refcnt = lo->lo_refcnt + 1;
  ldv_mutex_unlock_72(& lo->lo_ctl_mutex);
  }
  out:
  {
  ldv_mutex_unlock_73(& loop_index_mutex);
  }
  return (err);
}
}
static void lo_release(struct gendisk *disk , fmode_t mode )
{
  struct loop_device *lo ;
  int err ;
  {
  {
  lo = (struct loop_device *)disk->private_data;
  ldv_mutex_lock_74(& lo->lo_ctl_mutex);
  lo->lo_refcnt = lo->lo_refcnt - 1;
  }
  if (lo->lo_refcnt != 0) {
    goto out;
  } else {
  }
  if ((lo->lo_flags & 4) != 0) {
    {
    err = loop_clr_fd(lo);
    }
    if (err == 0) {
      return;
    } else {
    }
  } else {
    {
    loop_flush(lo);
    }
  }
  out:
  {
  ldv_mutex_unlock_75(& lo->lo_ctl_mutex);
  }
  return;
}
}
static struct block_device_operations const lo_fops =
     {& lo_open, & lo_release, & lo_ioctl, & lo_compat_ioctl, 0, 0, 0, 0, 0, 0, 0, & __this_module};
static int max_loop ;
int loop_register_transfer(struct loop_func_table *funcs )
{
  unsigned int n ;
  {
  n = (unsigned int )funcs->number;
  if (n > 19U || (unsigned long )xfer_funcs[n] != (unsigned long )((struct loop_func_table *)0)) {
    return (-22);
  } else {
  }
  xfer_funcs[n] = funcs;
  return (0);
}
}
static int unregister_transfer_cb(int id , void *ptr , void *data )
{
  struct loop_device *lo ;
  struct loop_func_table *xfer ;
  {
  {
  lo = (struct loop_device *)ptr;
  xfer = (struct loop_func_table *)data;
  ldv_mutex_lock_76(& lo->lo_ctl_mutex);
  }
  if ((unsigned long )lo->lo_encryption == (unsigned long )xfer) {
    {
    loop_release_xfer(lo);
    }
  } else {
  }
  {
  ldv_mutex_unlock_77(& lo->lo_ctl_mutex);
  }
  return (0);
}
}
int loop_unregister_transfer(int number )
{
  unsigned int n ;
  struct loop_func_table *xfer ;
  {
  n = (unsigned int )number;
  if (n - 1U > 18U) {
    return (-22);
  } else {
    xfer = xfer_funcs[n];
    if ((unsigned long )xfer == (unsigned long )((struct loop_func_table *)0)) {
      return (-22);
    } else {
    }
  }
  {
  xfer_funcs[n] = (struct loop_func_table *)0;
  idr_for_each(& loop_index_idr, & unregister_transfer_cb, (void *)xfer);
  }
  return (0);
}
}
static char const __kstrtab_loop_register_transfer[23U] =
  { 'l', 'o', 'o', 'p',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 't', 'r',
        'a', 'n', 's', 'f',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_loop_register_transfer ;
struct kernel_symbol const __ksymtab_loop_register_transfer = {(unsigned long )(& loop_register_transfer), (char const *)(& __kstrtab_loop_register_transfer)};
static char const __kstrtab_loop_unregister_transfer[25U] =
  { 'l', 'o', 'o', 'p',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        't', 'r', 'a', 'n',
        's', 'f', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_loop_unregister_transfer ;
struct kernel_symbol const __ksymtab_loop_unregister_transfer = {(unsigned long )(& loop_unregister_transfer), (char const *)(& __kstrtab_loop_unregister_transfer)};
static int loop_add(struct loop_device **l , int i )
{
  struct loop_device *lo ;
  struct gendisk *disk ;
  int err ;
  void *tmp ;
  int tmp_par_shift;
  struct gendisk *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  {
  {
  err = -12;
  tmp = kzalloc(744UL, 208U);
  lo = (struct loop_device *)tmp;
  }
  if ((unsigned long )lo == (unsigned long )((struct loop_device *)0)) {
    goto out;
  } else {
  }
  lo->lo_state = 0;
  if (i >= 0) {
    {
    err = idr_alloc(& loop_index_idr, (void *)lo, i, i + 1, 208U);
    }
    if (err == -28) {
      err = -17;
    } else {
    }
  } else {
    {
    err = idr_alloc(& loop_index_idr, (void *)lo, 0, 0, 208U);
    }
  }
  if (err < 0) {
    goto out_free_dev;
  } else {
  }
  {
  i = err;
  err = -12;
  lo->lo_queue = blk_alloc_queue(208U);
  }
  if ((unsigned long )lo->lo_queue == (unsigned long )((struct request_queue *)0)) {
    goto out_free_idr;
  } else {
  }
  {
  blk_queue_make_request(lo->lo_queue, & loop_make_request);
  (lo->lo_queue)->queuedata = (void *)lo;
  tmp_par_shift = part_shift;
  ldv_assert("", tmp_par_shift == part_shift);
  tmp___0 = alloc_disk(1 << part_shift);
  lo->lo_disk = tmp___0;
  disk = tmp___0;
  }
  if ((unsigned long )disk == (unsigned long )((struct gendisk *)0)) {
    goto out_free_queue;
  } else {
  }
  if (part_shift == 0) {
    disk->flags = disk->flags | 512;
  } else {
  }
  {
  disk->flags = disk->flags | 64;
  __mutex_init(& lo->lo_ctl_mutex, "&lo->lo_ctl_mutex", & __key);
  lo->lo_number = i;
  lo->lo_thread = (struct task_struct *)0;
  __init_waitqueue_head(& lo->lo_event, "&lo->lo_event", & __key___0);
  __init_waitqueue_head(& lo->lo_req_wait, "&lo->lo_req_wait", & __key___1);
  spinlock_check(& lo->lo_lock);
  __raw_spin_lock_init(& lo->lo_lock.__annonCompField19.rlock, "&(&lo->lo_lock)->rlock",
                       & __key___2);
  disk->major = 7;
  disk->first_minor = i << part_shift;
  disk->fops = & lo_fops;
  disk->private_data = (void *)lo;
  disk->queue = lo->lo_queue;
  sprintf((char *)(& disk->disk_name), "loop%d", i);
  ldv_add_disk_78(disk);
  *l = lo;
  }
  return (lo->lo_number);
  out_free_queue:
  {
  blk_cleanup_queue(lo->lo_queue);
  }
  out_free_idr:
  {
  idr_remove(& loop_index_idr, i);
  }
  out_free_dev:
  {
  kfree((void const *)lo);
  }
  out: ;
  return (err);
}
}
static void loop_remove(struct loop_device *lo )
{
  {
  {
  ldv_del_gendisk_79(lo->lo_disk);
  blk_cleanup_queue(lo->lo_queue);
  put_disk(lo->lo_disk);
  kfree((void const *)lo);
  }
  return;
}
}
static int find_free_cb(int id , void *ptr , void *data )
{
  struct loop_device *lo ;
  struct loop_device **l ;
  {
  lo = (struct loop_device *)ptr;
  l = (struct loop_device **)data;
  if (lo->lo_state == 0) {
    *l = lo;
    return (1);
  } else {
  }
  return (0);
}
}
static int loop_lookup(struct loop_device **l , int i )
{
  struct loop_device *lo ;
  int ret ;
  int err ;
  void *tmp ;
  {
  ret = -19;
  if (i < 0) {
    {
    err = idr_for_each(& loop_index_idr, & find_free_cb, (void *)(& lo));
    }
    if (err == 1) {
      *l = lo;
      ret = lo->lo_number;
    } else {
    }
    goto out;
  } else {
  }
  {
  tmp = idr_find(& loop_index_idr, i);
  lo = (struct loop_device *)tmp;
  }
  if ((unsigned long )lo != (unsigned long )((struct loop_device *)0)) {
    *l = lo;
    ret = lo->lo_number;
  } else {
  }
  out: ;
  return (ret);
}
}
static struct kobject *loop_probe(dev_t dev , int *part , void *data )
{
  struct loop_device *lo ;
  struct kobject *kobj ;
  int err ;
  {
  {
  ldv_mutex_lock_80(& loop_index_mutex);
  err = loop_lookup(& lo, (int )((dev & 1048575U) >> part_shift));
  }
  if (err < 0) {
    {
    err = loop_add(& lo, (int )((dev & 1048575U) >> part_shift));
    }
  } else {
  }
  if (err < 0) {
    kobj = (struct kobject *)0;
  } else {
    {
    kobj = get_disk(lo->lo_disk);
    }
  }
  {
  ldv_mutex_unlock_81(& loop_index_mutex);
  *part = 0;
  }
  return (kobj);
}
}
static long loop_control_ioctl(struct file *file , unsigned int cmd , unsigned long parm )
{
  struct loop_device *lo ;
  int ret ;
  {
  {
  ret = -38;
  ldv_mutex_lock_82(& loop_index_mutex);
  }
  {
  if (cmd == 19584U) {
    goto case_19584;
  } else {
  }
  if (cmd == 19585U) {
    goto case_19585;
  } else {
  }
  if (cmd == 19586U) {
    goto case_19586;
  } else {
  }
  goto switch_break;
  case_19584:
  {
  ret = loop_lookup(& lo, (int )parm);
  }
  if (ret >= 0) {
    ret = -17;
    goto ldv_35654;
  } else {
  }
  {
  ret = loop_add(& lo, (int )parm);
  }
  goto ldv_35654;
  case_19585:
  {
  ret = loop_lookup(& lo, (int )parm);
  }
  if (ret < 0) {
    goto ldv_35654;
  } else {
  }
  {
  ldv_mutex_lock_83(& lo->lo_ctl_mutex);
  }
  if (lo->lo_state != 0) {
    {
    ret = -16;
    ldv_mutex_unlock_84(& lo->lo_ctl_mutex);
    }
    goto ldv_35654;
  } else {
  }
  if (lo->lo_refcnt > 0) {
    {
    ret = -16;
    ldv_mutex_unlock_85(& lo->lo_ctl_mutex);
    }
    goto ldv_35654;
  } else {
  }
  {
  (lo->lo_disk)->private_data = (void *)0;
  ldv_mutex_unlock_86(& lo->lo_ctl_mutex);
  idr_remove(& loop_index_idr, lo->lo_number);
  loop_remove(lo);
  }
  goto ldv_35654;
  case_19586:
  {
  ret = loop_lookup(& lo, -1);
  }
  if (ret >= 0) {
    goto ldv_35654;
  } else {
  }
  {
  ret = loop_add(& lo, -1);
  }
  switch_break: ;
  }
  ldv_35654:
  {
  ldv_mutex_unlock_87(& loop_index_mutex);
  }
  return ((long )ret);
}
}
static struct file_operations const loop_ctl_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, & loop_control_ioctl, & loop_control_ioctl,
    0, & nonseekable_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct miscdevice loop_misc =
     {237, "loop-control", & loop_ctl_fops, {0, 0}, 0, 0, 0, (unsigned short)0};
static int loop_init(void)
{
  int i ;
  int nr ;
  unsigned long range ;
  struct loop_device *lo ;
  int err ;
  int tmp ;
  {
  {
  part_shift = 0;
  if (max_part > 0) {
    {
    part_shift = fls(max_part);
    max_part = (int )((unsigned int )(1UL << part_shift) - 1U);
    }
  } else {
  }
  if (1UL << part_shift > 256UL) {
    err = -22;
    return (err);
  } else {
  }
  err = ldv_misc_register_88(& loop_misc);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned long )max_loop > 1UL << (20 - part_shift)) {
    err = -22;
    goto misc_out;
  } else {
  }
  if (max_loop != 0) {
    nr = max_loop;
    range = (unsigned long )(max_loop << part_shift);
  } else {
    nr = 8;
    range = 1048576UL;
  }
  {
  tmp = register_blkdev(7U, "loop");
  }
  if (tmp != 0) {
    err = -5;
    goto misc_out;
  } else {
  }
  {
  blk_register_region(7340032U, range, & __this_module, & loop_probe, (int (*)(dev_t ,
                                                                               void * ))0,
                      (void *)0);
  ldv_mutex_lock_89(& loop_index_mutex);
  i = 0;
  }
  goto ldv_35671;
  ldv_35670:
  {
  loop_add(& lo, i);
  i = i + 1;
  }
  ldv_35671: ;
  if (i < nr) {
    goto ldv_35670;
  } else {
  }
  {
  ldv_mutex_unlock_90(& loop_index_mutex);
  printk("\016loop: module loaded\n");
  }
  return (0);
  misc_out:
  {
  ldv_misc_deregister_91(& loop_misc);
  }
  return (err);
}
}
static int loop_exit_cb(int id , void *ptr , void *data )
{
  struct loop_device *lo ;
  {
  {
  lo = (struct loop_device *)ptr;
  loop_remove(lo);
  }
  return (0);
}
}
static void loop_exit(void)
{
  unsigned long range ;
  {
  {
  range = max_loop != 0 ? (unsigned long )(max_loop << part_shift) : 1048576UL;
  idr_for_each(& loop_index_idr, & loop_exit_cb, (void *)0);
  idr_destroy(& loop_index_idr);
  blk_unregister_region(7340032U, range);
  unregister_blkdev(7U, "loop");
  ldv_misc_deregister_92(& loop_misc);
  }
  return;
}
}
void *ldv_block_scenario_2(void *arg0 ) ;
void ldv_block_scenario_callback_2_19(int (*arg0)(struct block_device * , fmode_t ,
                                                  fmode_t , unsigned long ) , struct block_device *arg1 ,
                                      unsigned int arg2 , unsigned int arg3 , unsigned long arg4 ) ;
void ldv_block_scenario_callback_2_5(int (*arg0)(struct block_device * , fmode_t ,
                                                 fmode_t , unsigned long ) , struct block_device *arg1 ,
                                     unsigned int arg2 , unsigned int arg3 , unsigned long arg4 ) ;
int ldv_block_scenario_open_2_12(int (*arg0)(struct block_device * , fmode_t ) ,
                                 struct block_device *arg1 , unsigned int arg2 ) ;
void ldv_block_scenario_release_2_3(void (*arg0)(struct gendisk * , fmode_t ) , struct gendisk *arg1 ,
                                    unsigned int arg2 ) ;
void *ldv_character_driver_scenario_3(void *arg0 ) ;
void ldv_character_driver_scenario_callback_3_18(loff_t (*arg0)(struct file * , loff_t ,
                                                                int ) , struct file *arg1 ,
                                                 long long arg2 , int arg3 ) ;
void ldv_character_driver_scenario_callback_3_21(ssize_t (*arg0)(struct file * , fmode_t ,
                                                                 unsigned long ) ,
                                                 struct file *arg1 , unsigned int arg2 ,
                                                 unsigned long arg3 ) ;
void ldv_character_driver_scenario_callback_3_5(ssize_t (*arg0)(struct file * , fmode_t ,
                                                                unsigned long ) ,
                                                struct file *arg1 , unsigned int arg2 ,
                                                unsigned long arg3 ) ;
int ldv_character_driver_scenario_probe_3_12(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
void ldv_dispatch_deregister_6_1(struct gendisk *arg0 ) ;
void ldv_dispatch_deregister_7_1(struct file_operations *arg0 ) ;
void ldv_dispatch_insmod_deregister_9_2(void) ;
void ldv_dispatch_insmod_register_9_3(void) ;
void ldv_dispatch_register_5_1(struct block_device *arg0 , struct gendisk *arg1 ) ;
void ldv_dispatch_register_8_3(struct file_operations *arg0 ) ;
void ldv_emg_add_disk(struct gendisk *arg0 ) ;
void ldv_emg_del_gendisk(struct gendisk *arg0 ) ;
void ldv_emg_misc_deregister(struct miscdevice *arg0 ) ;
int ldv_emg_misc_register(struct miscdevice *arg0 ) ;
void *ldv_insmod_4(void *arg0 ) ;
void ldv_insmod_loop_exit_4_2(void (*arg0)(void) ) ;
int ldv_insmod_loop_init_4_6(int (*arg0)(void) ) ;
void *ldv_main_9(void *arg0 ) ;
int main(void) ;
pthread_t ldv_thread_2 ;
pthread_t ldv_thread_3 ;
pthread_t ldv_thread_4 ;
void *ldv_block_scenario_2(void *arg0 )
{
  struct block_device *ldv_2_block_block_dev ;
  struct gendisk *ldv_2_block_gendisk ;
  int (*ldv_2_callback_compat_ioctl)(struct block_device * , fmode_t , fmode_t ,
                                     unsigned long ) ;
  int (*ldv_2_callback_ioctl)(struct block_device * , fmode_t , fmode_t , unsigned long ) ;
  struct gendisk *ldv_2_disk_gendisk ;
  unsigned int ldv_2_ldv_param_12_1_default ;
  unsigned int ldv_2_ldv_param_19_1_default ;
  unsigned int ldv_2_ldv_param_19_2_default ;
  unsigned long ldv_2_ldv_param_19_3_default ;
  unsigned int ldv_2_ldv_param_3_1_default ;
  unsigned int ldv_2_ldv_param_5_1_default ;
  unsigned int ldv_2_ldv_param_5_2_default ;
  unsigned long ldv_2_ldv_param_5_3_default ;
  struct block_device_operations *ldv_2_ops_block_device_operations ;
  int ldv_2_ret_default ;
  struct ldv_struct_block_scenario_2 *data ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  {
  data = (struct ldv_struct_block_scenario_2 *)arg0;
  tmp = external_allocated_data();
  ldv_2_block_block_dev = (struct block_device *)tmp;
  tmp___0 = external_allocated_data();
  ldv_2_block_gendisk = (struct gendisk *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_2_callback_compat_ioctl = (int (*)(struct block_device * , fmode_t , fmode_t ,
                                         unsigned long ))tmp___1;
  tmp___2 = external_allocated_data();
  ldv_2_callback_ioctl = (int (*)(struct block_device * , fmode_t , fmode_t , unsigned long ))tmp___2;
  tmp___3 = external_allocated_data();
  ldv_2_disk_gendisk = (struct gendisk *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_2_ops_block_device_operations = (struct block_device_operations *)tmp___4;
  ldv_2_ret_default = ldv_undef_int();
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_block_scenario_2 *)0)) {
    {
    ldv_2_block_block_dev = data->arg0;
    ldv_2_disk_gendisk = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_main_2;
  return ((void *)0);
  ldv_call_2:
  {
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    {
    tmp___5 = ldv_undef_int();
    }
    if (tmp___5 != 0) {
      {
      ldv_block_scenario_callback_2_19(ldv_2_callback_ioctl, ldv_2_block_block_dev,
                                       ldv_2_ldv_param_19_1_default, ldv_2_ldv_param_19_2_default,
                                       ldv_2_ldv_param_19_3_default);
      }
    } else {
      {
      ldv_block_scenario_callback_2_5(ldv_2_callback_compat_ioctl, ldv_2_block_block_dev,
                                      ldv_2_ldv_param_5_1_default, ldv_2_ldv_param_5_2_default,
                                      ldv_2_ldv_param_5_3_default);
      }
    }
    goto ldv_call_2;
  } else {
    {
    ldv_block_scenario_release_2_3(ldv_2_ops_block_device_operations->release, ldv_2_disk_gendisk,
                                   ldv_2_ldv_param_3_1_default);
    ldv_free((void *)ldv_2_block_block_dev);
    ldv_free((void *)ldv_2_block_gendisk);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_main_2:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    {
    ldv_2_ret_default = ldv_block_scenario_open_2_12(ldv_2_ops_block_device_operations->open,
                                                     ldv_2_block_block_dev, ldv_2_ldv_param_12_1_default);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___7 = ldv_undef_int();
    }
    if (tmp___7 != 0) {
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
    ldv_free((void *)ldv_2_block_block_dev);
    ldv_free((void *)ldv_2_block_gendisk);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
void ldv_block_scenario_callback_2_19(int (*arg0)(struct block_device * , fmode_t ,
                                                  fmode_t , unsigned long ) , struct block_device *arg1 ,
                                      unsigned int arg2 , unsigned int arg3 , unsigned long arg4 )
{
  {
  {
  lo_ioctl(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_block_scenario_callback_2_5(int (*arg0)(struct block_device * , fmode_t ,
                                                 fmode_t , unsigned long ) , struct block_device *arg1 ,
                                     unsigned int arg2 , unsigned int arg3 , unsigned long arg4 )
{
  {
  {
  lo_compat_ioctl(arg1, arg2, arg3, arg4);
  }
  return;
}
}
int ldv_block_scenario_open_2_12(int (*arg0)(struct block_device * , fmode_t ) ,
                                 struct block_device *arg1 , unsigned int arg2 )
{
  int tmp ;
  {
  {
  tmp = lo_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_block_scenario_release_2_3(void (*arg0)(struct gendisk * , fmode_t ) , struct gendisk *arg1 ,
                                    unsigned int arg2 )
{
  {
  {
  lo_release(arg1, arg2);
  }
  return;
}
}
void *ldv_character_driver_scenario_3(void *arg0 )
{
  ssize_t (*ldv_3_callback_compat_ioctl)(struct file * , fmode_t , unsigned long ) ;
  loff_t (*ldv_3_callback_llseek)(struct file * , loff_t , int ) ;
  ssize_t (*ldv_3_callback_unlocked_ioctl)(struct file * , fmode_t , unsigned long ) ;
  struct file_operations *ldv_3_container_file_operations ;
  long long ldv_3_ldv_param_18_1_default ;
  int ldv_3_ldv_param_18_2_default ;
  unsigned int ldv_3_ldv_param_21_1_default ;
  unsigned int ldv_3_ldv_param_5_1_default ;
  struct file *ldv_3_resource_file ;
  struct inode *ldv_3_resource_inode ;
  int ldv_3_ret_default ;
  size_t ldv_3_size_cnt_write_size ;
  struct ldv_struct_character_driver_scenario_3 *data ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  {
  data = (struct ldv_struct_character_driver_scenario_3 *)arg0;
  tmp = external_allocated_data();
  ldv_3_callback_compat_ioctl = (ssize_t (*)(struct file * , fmode_t , unsigned long ))tmp;
  tmp___0 = external_allocated_data();
  ldv_3_callback_llseek = (loff_t (*)(struct file * , loff_t , int ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_3_callback_unlocked_ioctl = (ssize_t (*)(struct file * , fmode_t , unsigned long ))tmp___1;
  tmp___2 = external_allocated_data();
  ldv_3_container_file_operations = (struct file_operations *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_3_resource_file = (struct file *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_3_resource_inode = (struct inode *)tmp___4;
  ldv_3_ret_default = ldv_undef_int();
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_character_driver_scenario_3 *)0)) {
    {
    ldv_3_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___5 = ldv_xmalloc(520UL);
  ldv_3_resource_file = (struct file *)tmp___5;
  tmp___6 = ldv_xmalloc(1032UL);
  ldv_3_resource_inode = (struct inode *)tmp___6;
  tmp___7 = ldv_undef_int();
  ldv_3_size_cnt_write_size = (size_t )tmp___7;
  }
  goto ldv_main_3;
  return ((void *)0);
  ldv_main_3:
  {
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    {
    ldv_3_ret_default = ldv_character_driver_scenario_probe_3_12(ldv_3_container_file_operations->open,
                                                                 ldv_3_resource_inode,
                                                                 ldv_3_resource_file);
    ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
    tmp___8 = ldv_undef_int();
    }
    if (tmp___8 != 0) {
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
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_3:
  {
  tmp___10 = ldv_undef_int();
  }
  {
  if (tmp___10 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___10 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___10 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1: ;
  goto ldv_call_3;
  case_2: ;
  goto ldv_main_3;
  case_3:
  {
  tmp___11 = ldv_undef_int();
  }
  {
  if (tmp___11 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___11 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___11 == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_character_driver_scenario_callback_3_21(ldv_3_callback_unlocked_ioctl, ldv_3_resource_file,
                                              ldv_3_ldv_param_21_1_default, ldv_3_size_cnt_write_size);
  }
  goto ldv_35903;
  case_2___0:
  {
  ldv_character_driver_scenario_callback_3_18(ldv_3_callback_llseek, ldv_3_resource_file,
                                              ldv_3_ldv_param_18_1_default, ldv_3_ldv_param_18_2_default);
  }
  goto ldv_35903;
  case_3___0:
  {
  ldv_character_driver_scenario_callback_3_5(ldv_3_callback_compat_ioctl, ldv_3_resource_file,
                                             ldv_3_ldv_param_5_1_default, ldv_3_size_cnt_write_size);
  }
  goto ldv_35903;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break___0: ;
  }
  ldv_35903: ;
  goto ldv_35907;
  switch_default___0:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  ldv_35907: ;
  goto ldv_call_3;
  return ((void *)0);
}
}
void ldv_character_driver_scenario_callback_3_18(loff_t (*arg0)(struct file * , loff_t ,
                                                                int ) , struct file *arg1 ,
                                                 long long arg2 , int arg3 )
{
  {
  {
  noop_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_3_21(ssize_t (*arg0)(struct file * , fmode_t ,
                                                                 unsigned long ) ,
                                                 struct file *arg1 , unsigned int arg2 ,
                                                 unsigned long arg3 )
{
  {
  {
  loop_control_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_3_5(ssize_t (*arg0)(struct file * , fmode_t ,
                                                                unsigned long ) ,
                                                struct file *arg1 , unsigned int arg2 ,
                                                unsigned long arg3 )
{
  {
  {
  loop_control_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_character_driver_scenario_probe_3_12(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = nonseekable_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_6_1(struct gendisk *arg0 )
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
void ldv_dispatch_deregister_7_1(struct file_operations *arg0 )
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
void ldv_dispatch_insmod_deregister_9_2(void)
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
void ldv_dispatch_insmod_register_9_3(void)
{
  int ret ;
  struct ldv_struct_main_9 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_main_9 *)tmp;
  ret = pthread_create(& ldv_thread_4, (pthread_attr_t const *)0, & ldv_insmod_4,
                       (void *)cf_arg_4);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_register_5_1(struct block_device *arg0 , struct gendisk *arg1 )
{
  int ret ;
  struct ldv_struct_block_scenario_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(24UL);
  cf_arg_2 = (struct ldv_struct_block_scenario_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  cf_arg_2->arg1 = arg1;
  ret = pthread_create(& ldv_thread_2, (pthread_attr_t const *)0, & ldv_block_scenario_2,
                       (void *)cf_arg_2);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_register_8_3(struct file_operations *arg0 )
{
  int ret ;
  struct ldv_struct_character_driver_scenario_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_character_driver_scenario_3 *)tmp;
  cf_arg_3->arg0 = arg0;
  ret = pthread_create(& ldv_thread_3, (pthread_attr_t const *)0, & ldv_character_driver_scenario_3,
                       (void *)cf_arg_3);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_emg_add_disk(struct gendisk *arg0 )
{
  struct block_device *ldv_5_block_block_dev ;
  struct gendisk *ldv_5_disk_gendisk ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_5_block_block_dev = (struct block_device *)tmp;
  tmp___0 = external_allocated_data();
  ldv_5_disk_gendisk = (struct gendisk *)tmp___0;
  tmp___1 = ldv_xmalloc(496UL);
  ldv_5_block_block_dev = (struct block_device *)tmp___1;
  ldv_5_disk_gendisk = arg0;
  ldv_5_block_block_dev->bd_disk = ldv_5_disk_gendisk;
  ldv_add_disk();
  ldv_dispatch_register_5_1(ldv_5_block_block_dev, ldv_5_disk_gendisk);
  }
  return;
  return;
}
}
void ldv_emg_del_gendisk(struct gendisk *arg0 )
{
  struct gendisk *ldv_6_disk_gendisk ;
  void *tmp ;
  {
  {
  tmp = external_allocated_data();
  ldv_6_disk_gendisk = (struct gendisk *)tmp;
  ldv_6_disk_gendisk = arg0;
  ldv_del_gendisk();
  ldv_dispatch_deregister_6_1(ldv_6_disk_gendisk);
  }
  return;
  return;
}
}
void ldv_emg_misc_deregister(struct miscdevice *arg0 )
{
  struct file_operations *ldv_7_file_operations_file_operations ;
  struct miscdevice *ldv_7_miscdevice_miscdevice ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = external_allocated_data();
  ldv_7_file_operations_file_operations = (struct file_operations *)tmp;
  tmp___0 = external_allocated_data();
  ldv_7_miscdevice_miscdevice = (struct miscdevice *)tmp___0;
  ldv_7_miscdevice_miscdevice = arg0;
  ldv_7_file_operations_file_operations = (struct file_operations *)ldv_7_miscdevice_miscdevice->fops;
  ldv_dispatch_deregister_7_1(ldv_7_file_operations_file_operations);
  }
  return;
  return;
}
}
int ldv_emg_misc_register(struct miscdevice *arg0 )
{
  struct file_operations *ldv_8_file_operations_file_operations ;
  struct miscdevice *ldv_8_miscdevice_miscdevice ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = external_allocated_data();
  ldv_8_file_operations_file_operations = (struct file_operations *)tmp;
  tmp___0 = external_allocated_data();
  ldv_8_miscdevice_miscdevice = (struct miscdevice *)tmp___0;
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_8_miscdevice_miscdevice = arg0;
    ldv_8_file_operations_file_operations = (struct file_operations *)ldv_8_miscdevice_miscdevice->fops;
    ldv_dispatch_register_8_3(ldv_8_file_operations_file_operations);
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
void *ldv_insmod_4(void *arg0 )
{
  void (*ldv_4_loop_exit_default)(void) ;
  int (*ldv_4_loop_init_default)(void) ;
  int ldv_4_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_4_loop_exit_default = (void (*)(void))tmp;
  tmp___0 = external_allocated_data();
  ldv_4_loop_init_default = (int (*)(void))tmp___0;
  ldv_free(arg0);
  ldv_4_ret_default = ldv_insmod_loop_init_4_6(ldv_4_loop_init_default);
  ldv_4_ret_default = ldv_post_init(ldv_4_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume(ldv_4_ret_default != 0);
    }
    return ((void *)0);
  } else {
    {
    __VERIFIER_assume(ldv_4_ret_default == 0);
    ldv_insmod_loop_exit_4_2(ldv_4_loop_exit_default);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
void ldv_insmod_loop_exit_4_2(void (*arg0)(void) )
{
  {
  {
  loop_exit();
  }
  return;
}
}
int ldv_insmod_loop_init_4_6(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = loop_init();
  }
  return (tmp);
}
}
void *ldv_main_9(void *arg0 )
{
  {
  {
  ldv_initialize();
  ldv_dispatch_insmod_register_9_3();
  ldv_dispatch_insmod_deregister_9_2();
  ldv_check_final_state();
  __VERIFIER_assume(0);
  }
  return ((void *)0);
  return ((void *)0);
}
}
int main(void)
{
  {
  {
  ldv_main_9((void *)0);
  }
  return (0);
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
__inline static long IS_ERR_OR_NULL(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err_or_null(ptr);
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
__inline static void ldv_spin_lock_irq_49(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lo_lock_of_loop_device();
  spin_lock_irq(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_50(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lo_lock_of_loop_device();
  spin_unlock_irq(lock);
  }
  return;
}
}
static void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_nested_64(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  ldv_mutex_lock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_66(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_70(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_loop_index_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_loop_index_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_add_disk_78(struct gendisk *ldv_func_arg1 )
{
  {
  {
  ldv_emg_add_disk(ldv_func_arg1);
  }
  return;
}
}
static void ldv_del_gendisk_79(struct gendisk *ldv_func_arg1 )
{
  {
  {
  ldv_emg_del_gendisk(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_80(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_loop_index_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_81(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_loop_index_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_82(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_loop_index_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_84(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_85(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_87(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_loop_index_mutex(ldv_func_arg1);
  }
  return;
}
}
static int ldv_misc_register_88(struct miscdevice *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_misc_register(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_loop_index_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_loop_index_mutex(ldv_func_arg1);
  }
  return;
}
}
static int ldv_misc_deregister_91(struct miscdevice *ldv_func_arg1 )
{
  {
  {
  ldv_emg_misc_deregister(ldv_func_arg1);
  }
  return (0);
}
}
static int ldv_misc_deregister_92(struct miscdevice *ldv_func_arg1 )
{
  {
  {
  ldv_emg_misc_deregister(ldv_func_arg1);
  }
  return (0);
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
void *ldv_xmalloc_unknown_size(size_t size ) ;
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
pthread_mutex_t pmutex_lo_ctl_mutex_of_loop_device ;
void ldv_mutex_lock_lo_ctl_mutex_of_loop_device(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_lo_ctl_mutex_of_loop_device);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lo_ctl_mutex_of_loop_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_lo_ctl_mutex_of_loop_device);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lo_ctl_mutex_of_loop_device(struct mutex *lock )
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
int ldv_mutex_trylock_lo_ctl_mutex_of_loop_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_lo_ctl_mutex_of_loop_device);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_lo_ctl_mutex_of_loop_device(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_lo_ctl_mutex_of_loop_device);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lo_ctl_mutex_of_loop_device(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_lo_ctl_mutex_of_loop_device);
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
pthread_mutex_t pmutex_loop_index_mutex ;
void ldv_mutex_lock_loop_index_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_loop_index_mutex);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_loop_index_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_loop_index_mutex);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_loop_index_mutex(struct mutex *lock )
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
int ldv_mutex_trylock_loop_index_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_loop_index_mutex);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_loop_index_mutex(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_loop_index_mutex);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_loop_index_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_loop_index_mutex);
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
pthread_mutex_t pmutex_pm_mutex ;
void ldv_mutex_lock_pm_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_pm_mutex);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_pm_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_pm_mutex);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_pm_mutex(struct mutex *lock )
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
int ldv_mutex_trylock_pm_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_pm_mutex);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_pm_mutex(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_pm_mutex);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_pm_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_pm_mutex);
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
pthread_mutex_t smutex_lo_lock_of_loop_device ;
void ldv_spin_lock_lo_lock_of_loop_device(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lo_lock_of_loop_device);
  }
  return;
}
}
void ldv_spin_unlock_lo_lock_of_loop_device(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lo_lock_of_loop_device);
  }
  return;
}
}
int ldv_spin_trylock_lo_lock_of_loop_device(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lo_lock_of_loop_device);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lo_lock_of_loop_device(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lo_lock_of_loop_device(void)
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
int ldv_spin_can_lock_lo_lock_of_loop_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lo_lock_of_loop_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lo_lock_of_loop_device(void)
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
int ldv_atomic_dec_and_lock_lo_lock_of_loop_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lo_lock_of_loop_device();
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
