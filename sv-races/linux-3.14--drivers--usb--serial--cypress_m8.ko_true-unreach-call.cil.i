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
typedef __u16 __le16;
typedef __u32 __le32;
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
struct llist_head {
   struct llist_node *first ;
};
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
struct device_node;
struct block_device;
struct io_context;
struct export_operations;
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
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
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
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_struct;
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct proc_dir_entry;
struct tty_port;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion____missing_field_name_149 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion____missing_field_name_149 __annonCompField41 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct signal_struct;
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned char closing : 1 ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct class;
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
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
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
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
struct __anonstruct____missing_field_name_157 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_158 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_156 {
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
   struct __anonstruct____missing_field_name_158 __annonCompField45 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_156 __annonCompField46 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_159 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_161 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_165 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_164 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_165 __annonCompField49 ;
   int units ;
};
struct __anonstruct____missing_field_name_163 {
   union __anonunion____missing_field_name_164 __annonCompField50 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_162 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_163 __annonCompField51 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_160 {
   union __anonunion____missing_field_name_161 __annonCompField48 ;
   union __anonunion____missing_field_name_162 __annonCompField52 ;
};
struct __anonstruct____missing_field_name_167 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_166 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_167 __annonCompField54 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_168 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_159 __annonCompField47 ;
   struct __anonstruct____missing_field_name_160 __annonCompField53 ;
   union __anonunion____missing_field_name_166 __annonCompField55 ;
   union __anonunion____missing_field_name_168 __annonCompField56 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_170 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_169 {
   struct __anonstruct_linear_170 linear ;
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
   union __anonunion_shared_169 shared ;
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
struct __anonstruct_sigset_t_171 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_171 sigset_t;
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
struct __anonstruct__kill_173 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_174 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_175 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_176 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_177 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_178 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_179 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_172 {
   int _pad[28U] ;
   struct __anonstruct__kill_173 _kill ;
   struct __anonstruct__timer_174 _timer ;
   struct __anonstruct__rt_175 _rt ;
   struct __anonstruct__sigchld_176 _sigchld ;
   struct __anonstruct__sigfault_177 _sigfault ;
   struct __anonstruct__sigpoll_178 _sigpoll ;
   struct __anonstruct__sigsys_179 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_172 _sifields ;
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
struct nsproxy;
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_184 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_185 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_187 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_186 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_187 __annonCompField61 ;
};
union __anonunion_type_data_188 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_190 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_189 {
   union __anonunion_payload_190 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_184 __annonCompField59 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_185 __annonCompField60 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_186 __annonCompField62 ;
   union __anonunion_type_data_188 type_data ;
   union __anonunion____missing_field_name_189 __annonCompField63 ;
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
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int no_stop_on_short : 1 ;
   unsigned int no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_besl_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   unsigned int usb2_hw_lpm_allowed : 1 ;
   unsigned int usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   unsigned int port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned int no_dynamic_id : 1 ;
   unsigned int supports_autosuspend : 1 ;
   unsigned int disable_hub_initiated_lpm : 1 ;
   unsigned int soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned int poisoned : 1 ;
};
struct scatterlist;
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
struct serial_icounter_struct {
   int cts ;
   int dsr ;
   int rng ;
   int dcd ;
   int rx ;
   int tx ;
   int frame ;
   int overrun ;
   int parity ;
   int brk ;
   int buf_overrun ;
   int reserved[9U] ;
};
struct async_icount {
   __u32 cts ;
   __u32 dsr ;
   __u32 rng ;
   __u32 dcd ;
   __u32 tx ;
   __u32 rx ;
   __u32 frame ;
   __u32 parity ;
   __u32 overrun ;
   __u32 brk ;
   __u32 buf_overrun ;
};
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
struct __kfifo {
   unsigned int in ;
   unsigned int out ;
   unsigned int mask ;
   unsigned int esize ;
   void *data ;
};
union __anonunion____missing_field_name_192 {
   struct __kfifo kfifo ;
   unsigned char *type ;
   unsigned char const *const_type ;
   char (*rectype)[0U] ;
   void *ptr ;
   void const *ptr_const ;
};
struct kfifo {
   union __anonunion____missing_field_name_192 __annonCompField65 ;
   unsigned char buf[0U] ;
};
struct usb_serial;
struct usb_serial_port {
   struct usb_serial *serial ;
   struct tty_port port ;
   spinlock_t lock ;
   u32 minor ;
   u8 port_number ;
   unsigned char *interrupt_in_buffer ;
   struct urb *interrupt_in_urb ;
   __u8 interrupt_in_endpointAddress ;
   unsigned char *interrupt_out_buffer ;
   int interrupt_out_size ;
   struct urb *interrupt_out_urb ;
   __u8 interrupt_out_endpointAddress ;
   unsigned char *bulk_in_buffer ;
   int bulk_in_size ;
   struct urb *read_urb ;
   __u8 bulk_in_endpointAddress ;
   unsigned char *bulk_in_buffers[2U] ;
   struct urb *read_urbs[2U] ;
   unsigned long read_urbs_free ;
   unsigned char *bulk_out_buffer ;
   int bulk_out_size ;
   struct urb *write_urb ;
   struct kfifo write_fifo ;
   unsigned char *bulk_out_buffers[2U] ;
   struct urb *write_urbs[2U] ;
   unsigned long write_urbs_free ;
   __u8 bulk_out_endpointAddress ;
   struct async_icount icount ;
   int tx_bytes ;
   unsigned long flags ;
   wait_queue_head_t write_wait ;
   struct work_struct work ;
   char throttled ;
   char throttle_req ;
   unsigned long sysrq ;
   struct device dev ;
};
struct usb_serial_driver;
struct usb_serial {
   struct usb_device *dev ;
   struct usb_serial_driver *type ;
   struct usb_interface *interface ;
   unsigned char disconnected : 1 ;
   unsigned char suspending : 1 ;
   unsigned char attached : 1 ;
   unsigned char minors_reserved : 1 ;
   unsigned char num_ports ;
   unsigned char num_port_pointers ;
   char num_interrupt_in ;
   char num_interrupt_out ;
   char num_bulk_in ;
   char num_bulk_out ;
   struct usb_serial_port *port[8U] ;
   struct kref kref ;
   struct mutex disc_mutex ;
   void *private ;
};
struct usb_serial_driver {
   char const *description ;
   struct usb_device_id const *id_table ;
   char num_ports ;
   struct list_head driver_list ;
   struct device_driver driver ;
   struct usb_driver *usb_driver ;
   struct usb_dynids dynids ;
   size_t bulk_in_size ;
   size_t bulk_out_size ;
   int (*probe)(struct usb_serial * , struct usb_device_id const * ) ;
   int (*attach)(struct usb_serial * ) ;
   int (*calc_num_ports)(struct usb_serial * ) ;
   void (*disconnect)(struct usb_serial * ) ;
   void (*release)(struct usb_serial * ) ;
   int (*port_probe)(struct usb_serial_port * ) ;
   int (*port_remove)(struct usb_serial_port * ) ;
   int (*suspend)(struct usb_serial * , pm_message_t ) ;
   int (*resume)(struct usb_serial * ) ;
   int (*reset_resume)(struct usb_serial * ) ;
   int (*open)(struct tty_struct * , struct usb_serial_port * ) ;
   void (*close)(struct usb_serial_port * ) ;
   int (*write)(struct tty_struct * , struct usb_serial_port * , unsigned char const * ,
                int ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct usb_serial_port * , struct ktermios * ) ;
   void (*break_ctl)(struct tty_struct * , int ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , long ) ;
   bool (*tx_empty)(struct usb_serial_port * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*tiocmiwait)(struct tty_struct * , unsigned long ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   void (*dtr_rts)(struct usb_serial_port * , int ) ;
   int (*carrier_raised)(struct usb_serial_port * ) ;
   void (*init_termios)(struct tty_struct * ) ;
   void (*read_int_callback)(struct urb * ) ;
   void (*write_int_callback)(struct urb * ) ;
   void (*read_bulk_callback)(struct urb * ) ;
   void (*write_bulk_callback)(struct urb * ) ;
   void (*process_read_urb)(struct urb * ) ;
   int (*prepare_write_buffer)(struct usb_serial_port * , void * , size_t ) ;
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
struct __anonstruct____missing_field_name_196 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_197 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_195 {
   struct __anonstruct____missing_field_name_196 __annonCompField68 ;
   struct __anonstruct____missing_field_name_197 __annonCompField69 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_195 __annonCompField70 ;
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
union __anonunion____missing_field_name_202 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_202 __annonCompField71 ;
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
enum packet_format {
    packet_format_1 = 0,
    packet_format_2 = 1
} ;
struct cypress_private {
   spinlock_t lock ;
   int chiptype ;
   int bytes_in ;
   int bytes_out ;
   int cmd_count ;
   int cmd_ctrl ;
   struct kfifo write_fifo ;
   int write_urb_in_use ;
   int write_urb_interval ;
   int read_urb_interval ;
   int comm_is_ok ;
   int termios_initialized ;
   __u8 line_control ;
   __u8 current_status ;
   __u8 current_config ;
   __u8 rx_flags ;
   enum packet_format pkt_fmt ;
   int get_cfg_unsafe ;
   int baud_rate ;
   int isthrottled ;
   char prev_status ;
   struct ktermios tmp_termios ;
};
struct ldv_struct_main_8 {
   int signal_pending ;
};
struct ldv_struct_usb_serial_scenario_2 {
   struct usb_device_id *arg0 ;
   int signal_pending ;
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
long __builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
extern struct module __this_module ;
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern void *memset(void * , int , size_t ) ;
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_51(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_53(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_55(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_57(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_60(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_64(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_66(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_68(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_71(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_74(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_76(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_78(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_80(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_82(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_84(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_86(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_88(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_90(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_92(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_94(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_100(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_103(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_105(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_107(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_110(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_lock_of_cypress_private(void) ;
void ldv_spin_unlock_lock_of_cypress_private(void) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
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
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
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
__inline static void ldv_spin_lock_irq_62(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_62(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_62(spinlock_t *lock ) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_63(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_63(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_63(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void tty_kref_put(struct tty_struct * ) ;
extern struct ktermios tty_std_termios ;
extern void tty_hangup(struct tty_struct * ) ;
extern speed_t tty_termios_baud_rate(struct ktermios * ) ;
extern void tty_encode_baud_rate(struct tty_struct * , speed_t , speed_t ) ;
__inline static speed_t tty_get_baud_rate(struct tty_struct *tty )
{
  speed_t tmp ;
  {
  {
  tmp = tty_termios_baud_rate(& tty->termios);
  }
  return (tmp);
}
}
extern struct tty_struct *tty_port_tty_get(struct tty_port * ) ;
static void *ldv_dev_get_drvdata_48(struct device const *dev ) ;
static int ldv_dev_set_drvdata_49(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
__inline static void usb_fill_int_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                                      void *transfer_buffer , int buffer_length ,
                                      void (*complete_fn)(struct urb * ) , void *context ,
                                      int interval___0 )
{
  int __val ;
  int __min ;
  int __max ;
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    __val = interval___0;
    __min = 1;
    __max = 16;
    __val = __min > __val ? __min : __val;
    interval___0 = __max < __val ? __max : __val;
    urb->interval = 1 << (interval___0 + -1);
  } else {
    urb->interval = interval___0;
  }
  urb->start_frame = -1;
  return;
}
}
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern void usb_kill_urb(struct urb * ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_clear_halt(struct usb_device * , int ) ;
extern int usb_reset_configuration(struct usb_device * ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static unsigned int __kfifo_uint_must_check_helper(unsigned int val )
{
  {
  return (val);
}
}
__inline static int __kfifo_int_must_check_helper(int val )
{
  {
  return (val);
}
}
extern int __kfifo_alloc(struct __kfifo * , unsigned int , size_t , gfp_t ) ;
extern void __kfifo_free(struct __kfifo * ) ;
extern unsigned int __kfifo_in(struct __kfifo * , void const * , unsigned int ) ;
extern unsigned int __kfifo_out(struct __kfifo * , void * , unsigned int ) ;
int priv_comm_is_ok;
__inline static void *usb_get_serial_port_data(struct usb_serial_port *port )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_48((struct device const *)(& port->dev));
  }
  return (tmp);
}
}
__inline static void usb_set_serial_port_data(struct usb_serial_port *port , void *data )
{
  {
  {
  ldv_dev_set_drvdata_49(& port->dev, data);
  }
  return;
}
}
static int ldv_usb_serial_register_drivers_112(struct usb_serial_driver * const *ldv_func_arg1 ,
                                               char const *ldv_func_arg2 , struct usb_device_id const *ldv_func_arg3 ) ;
static void ldv_usb_serial_deregister_drivers_113(struct usb_serial_driver * const *ldv_func_arg1 ) ;
extern void usb_serial_port_softint(struct usb_serial_port * ) ;
extern int usb_serial_generic_tiocmiwait(struct tty_struct * , unsigned long ) ;
__inline static void usb_serial_debug_data(struct device *dev , char const *function ,
                                           int size , unsigned char const *data )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "cypress_m8";
  descriptor.function = "usb_serial_debug_data";
  descriptor.filename = "include/linux/usb/serial.h";
  descriptor.format = "%s - length = %d, data = %*ph\n";
  descriptor.lineno = 368U;
  descriptor.flags = 0U;
  tmp = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s - length = %d, data = %*ph\n",
                      function, size, size, data);
    }
  } else {
  }
  return;
}
}
extern void kfree(void const * ) ;
extern void *__kmalloc(size_t , gfp_t ) ;
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
extern int tty_insert_flip_string_fixed_flag(struct tty_port * , unsigned char const * ,
                                             char , size_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  }
  return (tmp);
}
}
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
static bool stats ;
static int interval ;
static bool unstable_bauds ;
static struct usb_device_id const id_table_earthmate[3U] = { {3U, 4451U, 256U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 4451U, 512U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL}};
static struct usb_device_id const id_table_cyphidcomrs232[4U] = { {3U, 1204U, 21760U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 3487U, 2U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 26423U, 1U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL}};
static struct usb_device_id const id_table_nokiaca42v2[2U] = { {3U, 2000U, 16641U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL}};
static struct usb_device_id const id_table_combined[7U] = { {3U, 4451U, 256U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 4451U, 512U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1204U, 21760U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 3487U, 2U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 26423U, 1U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2000U, 16641U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL}};
struct usb_device_id const __mod_usb_device_table ;
static int cypress_earthmate_port_probe(struct usb_serial_port *port ) ;
static int cypress_hidcom_port_probe(struct usb_serial_port *port ) ;
static int cypress_ca42v2_port_probe(struct usb_serial_port *port ) ;
static int cypress_port_remove(struct usb_serial_port *port ) ;
static int cypress_open(struct tty_struct *tty , struct usb_serial_port *port ) ;
static void cypress_close(struct usb_serial_port *port ) ;
static void cypress_dtr_rts(struct usb_serial_port *port , int on ) ;
static int cypress_write(struct tty_struct *tty , struct usb_serial_port *port , unsigned char const *buf ,
                         int count ) ;
static void cypress_send(struct usb_serial_port *port ) ;
static int cypress_write_room(struct tty_struct *tty ) ;
static void cypress_set_termios(struct tty_struct *tty , struct usb_serial_port *port ,
                                struct ktermios *old_termios ) ;
static int cypress_tiocmget(struct tty_struct *tty ) ;
static int cypress_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear ) ;
static int cypress_chars_in_buffer(struct tty_struct *tty ) ;
static void cypress_throttle(struct tty_struct *tty ) ;
static void cypress_unthrottle(struct tty_struct *tty ) ;
static void cypress_set_dead(struct usb_serial_port *port ) ;
static void cypress_read_int_callback(struct urb *urb ) ;
static void cypress_write_int_callback(struct urb *urb ) ;
static struct usb_serial_driver cypress_earthmate_device =
     {"DeLorme Earthmate USB", (struct usb_device_id const *)(& id_table_earthmate),
    1, {0, 0}, {"earthmate", 0, & __this_module, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                0, 0, 0}, 0, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                0}},
    0UL, 0UL, 0, 0, 0, 0, 0, & cypress_earthmate_port_probe, & cypress_port_remove,
    0, 0, 0, & cypress_open, & cypress_close, & cypress_write, & cypress_write_room,
    0, & cypress_set_termios, 0, & cypress_chars_in_buffer, 0, 0, & cypress_throttle,
    & cypress_unthrottle, & cypress_tiocmget, & cypress_tiocmset, & usb_serial_generic_tiocmiwait,
    0, & cypress_dtr_rts, 0, 0, & cypress_read_int_callback, & cypress_write_int_callback,
    0, 0, 0, 0};
static struct usb_serial_driver cypress_hidcom_device =
     {"HID->COM RS232 Adapter", (struct usb_device_id const *)(& id_table_cyphidcomrs232),
    1, {0, 0}, {"cyphidcom", 0, & __this_module, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                0, 0, 0}, 0, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                0}},
    0UL, 0UL, 0, 0, 0, 0, 0, & cypress_hidcom_port_probe, & cypress_port_remove, 0,
    0, 0, & cypress_open, & cypress_close, & cypress_write, & cypress_write_room,
    0, & cypress_set_termios, 0, & cypress_chars_in_buffer, 0, 0, & cypress_throttle,
    & cypress_unthrottle, & cypress_tiocmget, & cypress_tiocmset, & usb_serial_generic_tiocmiwait,
    0, & cypress_dtr_rts, 0, 0, & cypress_read_int_callback, & cypress_write_int_callback,
    0, 0, 0, 0};
static struct usb_serial_driver cypress_ca42v2_device =
     {"Nokia CA-42 V2 Adapter", (struct usb_device_id const *)(& id_table_nokiaca42v2),
    1, {0, 0}, {"nokiaca42v2", 0, & __this_module, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0}, 0, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                 {0, 0}}, 0UL, 0UL, 0, 0, 0, 0, 0, & cypress_ca42v2_port_probe,
    & cypress_port_remove, 0, 0, 0, & cypress_open, & cypress_close, & cypress_write,
    & cypress_write_room, 0, & cypress_set_termios, 0, & cypress_chars_in_buffer,
    0, 0, & cypress_throttle, & cypress_unthrottle, & cypress_tiocmget, & cypress_tiocmset,
    & usb_serial_generic_tiocmiwait, 0, & cypress_dtr_rts, 0, 0, & cypress_read_int_callback,
    & cypress_write_int_callback, 0, 0, 0, 0};
static struct usb_serial_driver * const serial_drivers[4U] = { & cypress_earthmate_device, & cypress_hidcom_device, & cypress_ca42v2_device, (struct usb_serial_driver *)0};
__inline static bool is_frwd(struct usb_device *dev )
{
  {
  return (*((unsigned int *)dev + 382UL) == 91959U);
}
}
static int analyze_baud_rate(struct usb_serial_port *port , speed_t new_rate )
{
  struct cypress_private *priv ;
  void *tmp ;
  bool tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  {
  {
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  }
  if ((int )unstable_bauds) {
    return ((int )new_rate);
  } else {
  }
  {
  tmp___0 = is_frwd((port->serial)->dev);
  }
  if ((int )tmp___0) {
    return ((int )new_rate);
  } else {
  }
  if ((unsigned int )((port->serial)->dev)->speed == 1U) {
    if (new_rate > 4800U) {
      {
      descriptor.modname = "cypress_m8";
      descriptor.function = "analyze_baud_rate";
      descriptor.filename = "drivers/usb/serial/cypress_m8.c";
      descriptor.format = "%s - failed setting baud rate, device incapable speed %d\n";
      descriptor.lineno = 271U;
      descriptor.flags = 0U;
      tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - failed setting baud rate, device incapable speed %d\n",
                          "analyze_baud_rate", new_rate);
        }
      } else {
      }
      return (-1);
    } else {
    }
  } else {
  }
  {
  if (priv->chiptype == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1: ;
  if (new_rate <= 600U) {
    {
    descriptor___0.modname = "cypress_m8";
    descriptor___0.function = "analyze_baud_rate";
    descriptor___0.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___0.format = "%s - failed setting baud rate, unsupported speed of %d on Earthmate GPS";
    descriptor___0.lineno = 283U;
    descriptor___0.flags = 0U;
    tmp___2 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& port->dev),
                        "%s - failed setting baud rate, unsupported speed of %d on Earthmate GPS",
                        "analyze_baud_rate", new_rate);
      }
    } else {
    }
    return (-1);
  } else {
  }
  goto ldv_31742;
  switch_default: ;
  goto ldv_31742;
  switch_break: ;
  }
  ldv_31742: ;
  return ((int )new_rate);
}
}
static int cypress_serial_control(struct tty_struct *tty , struct usb_serial_port *port ,
                                  speed_t baud_rate , int data_bits , int stop_bits ,
                                  int parity_enable , int parity_type , int reset ,
                                  int cypress_request_type )
{
  int new_baudrate ;
  int retval ;
  int tries ;
  struct cypress_private *priv ;
  struct device *dev ;
  u8 *feature_buffer ;
  unsigned int feature_len ;
  unsigned long flags ;
  void *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  struct _ddebug descriptor___3 ;
  long tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  struct _ddebug descriptor___4 ;
  long tmp___8 ;
  unsigned int tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  {
  {
  new_baudrate = 0;
  retval = 0;
  tries = 0;
  dev = & port->dev;
  feature_len = 5U;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  }
  if (priv->comm_is_ok == 0) {
    return (-19);
  } else {
  }
  {
  tmp___0 = kcalloc((size_t )feature_len, 1UL, 208U);
  feature_buffer = (u8 *)tmp___0;
  }
  if ((unsigned long )feature_buffer == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  {
  if (cypress_request_type == 1) {
    goto case_1;
  } else {
  }
  if (cypress_request_type == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_1:
  new_baudrate = priv->baud_rate;
  if (baud_rate != 0U && baud_rate != (speed_t )priv->baud_rate) {
    {
    descriptor.modname = "cypress_m8";
    descriptor.function = "cypress_serial_control";
    descriptor.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor.format = "%s - baud rate is changing\n";
    descriptor.lineno = 321U;
    descriptor.flags = 0U;
    tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s - baud rate is changing\n",
                        "cypress_serial_control");
      }
    } else {
    }
    {
    retval = analyze_baud_rate(port, baud_rate);
    }
    if (retval >= 0) {
      {
      new_baudrate = retval;
      descriptor___0.modname = "cypress_m8";
      descriptor___0.function = "cypress_serial_control";
      descriptor___0.filename = "drivers/usb/serial/cypress_m8.c";
      descriptor___0.format = "%s - New baud rate set to %d\n";
      descriptor___0.lineno = 326U;
      descriptor___0.flags = 0U;
      tmp___2 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "%s - New baud rate set to %d\n",
                          "cypress_serial_control", new_baudrate);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  descriptor___1.modname = "cypress_m8";
  descriptor___1.function = "cypress_serial_control";
  descriptor___1.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor___1.format = "%s - baud rate is being sent as %d\n";
  descriptor___1.lineno = 330U;
  descriptor___1.flags = 0U;
  tmp___3 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev, "%s - baud rate is being sent as %d\n",
                      "cypress_serial_control", new_baudrate);
    }
  } else {
  }
  {
  put_unaligned_le32((u32 )new_baudrate, (void *)feature_buffer);
  *(feature_buffer + 4UL) = (u8 )((int )((signed char )*(feature_buffer + 4UL)) | (int )((signed char )data_bits));
  *(feature_buffer + 4UL) = (u8 )((int )((signed char )*(feature_buffer + 4UL)) | (int )((signed char )(stop_bits << 3)));
  *(feature_buffer + 4UL) = (u8 )((int )((signed char )*(feature_buffer + 4UL)) | (int )((signed char )(parity_enable << 4)));
  *(feature_buffer + 4UL) = (u8 )((int )((signed char )*(feature_buffer + 4UL)) | (int )((signed char )(parity_type << 5)));
  *(feature_buffer + 4UL) = (u8 )((int )((signed char )*(feature_buffer + 4UL)) | (int )((signed char )(reset << 7)));
  descriptor___2.modname = "cypress_m8";
  descriptor___2.function = "cypress_serial_control";
  descriptor___2.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor___2.format = "%s - device is being sent this feature report:\n";
  descriptor___2.lineno = 342U;
  descriptor___2.flags = 0U;
  tmp___4 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev, "%s - device is being sent this feature report:\n",
                      "cypress_serial_control");
    }
  } else {
  }
  {
  descriptor___3.modname = "cypress_m8";
  descriptor___3.function = "cypress_serial_control";
  descriptor___3.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor___3.format = "%s - %02X - %02X - %02X - %02X - %02X\n";
  descriptor___3.lineno = 346U;
  descriptor___3.flags = 0U;
  tmp___5 = __builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)dev, "%s - %02X - %02X - %02X - %02X - %02X\n",
                      "cypress_serial_control", (int )*feature_buffer, (int )*(feature_buffer + 1UL),
                      (int )*(feature_buffer + 2UL), (int )*(feature_buffer + 3UL),
                      (int )*(feature_buffer + 4UL));
    }
  } else {
  }
  ldv_31771:
  {
  tmp___6 = __create_pipe((port->serial)->dev, 0U);
  retval = usb_control_msg((port->serial)->dev, tmp___6 | 2147483648U, 9, 33, 768,
                           0, (void *)feature_buffer, (int )((__u16 )feature_len),
                           500);
  tmp___7 = tries;
  tries = tries + 1;
  }
  if (tmp___7 > 2) {
    goto ldv_31770;
  } else {
  }
  if (retval != 5 && retval != -19) {
    goto ldv_31771;
  } else {
  }
  ldv_31770: ;
  if (retval != 5) {
    {
    dev_err((struct device const *)dev, "%s - failed sending serial line settings - %d\n",
            "cypress_serial_control", retval);
    cypress_set_dead(port);
    }
  } else {
    {
    ldv___ldv_spin_lock_51(& priv->lock);
    priv->baud_rate = new_baudrate;
    priv->current_config = *(feature_buffer + 4UL);
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    }
    if (baud_rate != 0U) {
      {
      tty_encode_baud_rate(tty, (speed_t )new_baudrate, (speed_t )new_baudrate);
      }
    } else {
    }
  }
  goto ldv_31772;
  case_2: ;
  if (priv->get_cfg_unsafe != 0) {
    retval = -25;
    goto out;
  } else {
  }
  {
  descriptor___4.modname = "cypress_m8";
  descriptor___4.function = "cypress_serial_control";
  descriptor___4.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor___4.format = "%s - retreiving serial line settings\n";
  descriptor___4.lineno = 385U;
  descriptor___4.flags = 0U;
  tmp___8 = __builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___8 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)dev, "%s - retreiving serial line settings\n",
                      "cypress_serial_control");
    }
  } else {
  }
  ldv_31777:
  {
  tmp___9 = __create_pipe((port->serial)->dev, 0U);
  retval = usb_control_msg((port->serial)->dev, tmp___9 | 2147483776U, 1, 161, 768,
                           0, (void *)feature_buffer, (int )((__u16 )feature_len),
                           500);
  tmp___10 = tries;
  tries = tries + 1;
  }
  if (tmp___10 > 2) {
    goto ldv_31776;
  } else {
  }
  if (retval != 5 && retval != -19) {
    goto ldv_31777;
  } else {
  }
  ldv_31776: ;
  if (retval != 5) {
    {
    dev_err((struct device const *)dev, "%s - failed to retrieve serial line settings - %d\n",
            "cypress_serial_control", retval);
    cypress_set_dead(port);
    }
    goto out;
  } else {
    {
    ldv___ldv_spin_lock_53(& priv->lock);
    priv->current_config = *(feature_buffer + 4UL);
    tmp___11 = get_unaligned_le32((void const *)feature_buffer);
    priv->baud_rate = (int )tmp___11;
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    }
  }
  switch_break: ;
  }
  ldv_31772:
  {
  ldv___ldv_spin_lock_55(& priv->lock);
  priv->cmd_count = priv->cmd_count + 1;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  }
  out:
  {
  kfree((void const *)feature_buffer);
  }
  return (retval);
}
}
static void cypress_set_dead(struct usb_serial_port *port )
{
  struct cypress_private *priv ;
  void *tmp ;
  unsigned long flags ;
  {
  {
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  ldv___ldv_spin_lock_57(& priv->lock);
  }
  if (priv->comm_is_ok == 0) {
    {
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    }
    return;
  } else {
  }
  {
  priv->comm_is_ok = 0;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  dev_err((struct device const *)(& port->dev), "cypress_m8 suspending failing port %d - interval might be too short\n",
          (int )port->port_number);
  }
  return;
}
}
static int cypress_generic_port_probe(struct usb_serial_port *port )
{
  struct usb_serial *serial ;
  struct cypress_private *priv ;
  void *tmp ;
  struct lock_class_key __key ;
  struct kfifo *__tmp ;
  struct __kfifo *__kfifo ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  struct _ddebug descriptor___0 ;
  long tmp___5 ;
  {
  {
  serial = port->serial;
  tmp = kzalloc(208UL, 208U);
  priv = (struct cypress_private *)tmp;
  }
  if ((unsigned long )priv == (unsigned long )((struct cypress_private *)0)) {
    return (-12);
  } else {
  }
  {
  ldv___ldv_spin_lock_57(& priv->lock);
  priv->comm_is_ok = 1;
    ldv_spin_unlock_irqrestore_52(& priv->lock, tmp___0);
  spinlock_check(& priv->lock);
  __raw_spin_lock_init(& priv->lock.__annonCompField19.rlock, "&(&priv->lock)->rlock",
                       & __key);
  __tmp = & priv->write_fifo;
  __kfifo = & __tmp->__annonCompField65.kfifo;
  tmp___0 = __kfifo_alloc(__kfifo, 1024U, 1UL, 208U);
  tmp___1 = __kfifo_int_must_check_helper(tmp___0);
  }
  if (tmp___1 != 0) {
    {
    kfree((void const *)priv);
    }
    return (-12);
  } else {
  }
  {
  tmp___2 = is_frwd(serial->dev);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    {
    usb_reset_configuration(serial->dev);
    }
  } else {
  }
  priv->cmd_ctrl = 0;
  priv->line_control = 0U;
  priv->termios_initialized = 0;
  priv->rx_flags = 0U;
  if (port->interrupt_out_size > 9) {
    priv->pkt_fmt = 0;
  } else {
    priv->pkt_fmt = 1;
  }
  if (interval > 0) {
    {
    priv->write_urb_interval = interval;
    priv->read_urb_interval = interval;
    descriptor.modname = "cypress_m8";
    descriptor.function = "cypress_generic_port_probe";
    descriptor.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor.format = "%s - read & write intervals forced to %d\n";
    descriptor.lineno = 486U;
    descriptor.flags = 0U;
    tmp___4 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - read & write intervals forced to %d\n",
                        "cypress_generic_port_probe", interval);
      }
    } else {
    }
  } else {
    {
    priv->write_urb_interval = (port->interrupt_out_urb)->interval;
    priv->read_urb_interval = (port->interrupt_in_urb)->interval;
    descriptor___0.modname = "cypress_m8";
    descriptor___0.function = "cypress_generic_port_probe";
    descriptor___0.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___0.format = "%s - intervals: read=%d write=%d\n";
    descriptor___0.lineno = 492U;
    descriptor___0.flags = 0U;
    tmp___5 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& port->dev),
                        "%s - intervals: read=%d write=%d\n", "cypress_generic_port_probe",
                        priv->read_urb_interval, priv->write_urb_interval);
      }
    } else {
    }
  }
  {
  usb_set_serial_port_data(port, (void *)priv);
  port->port.drain_delay = 256;
  }
  return (0);
}
}
static int cypress_earthmate_port_probe(struct usb_serial_port *port )
{
  struct usb_serial *serial ;
  struct cypress_private *priv ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  {
  serial = port->serial;
  ret = cypress_generic_port_probe(port);
  }
  if (ret != 0) {
    {
    descriptor.modname = "cypress_m8";
    descriptor.function = "cypress_earthmate_port_probe";
    descriptor.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor.format = "%s - Failed setting up port\n";
    descriptor.lineno = 510U;
    descriptor.flags = 0U;
    tmp = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - Failed setting up port\n",
                        "cypress_earthmate_port_probe");
      }
    } else {
    }
    return (ret);
  } else {
  }
  {
  tmp___0 = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp___0;
  priv->chiptype = 1;
  priv->pkt_fmt = 0;
  }
  if ((unsigned int )(serial->dev)->descriptor.idProduct != 256U) {
    {
    descriptor___0.modname = "cypress_m8";
    descriptor___0.function = "cypress_earthmate_port_probe";
    descriptor___0.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___0.format = "%s - Marking this device as unsafe for GET_CONFIG commands\n";
    descriptor___0.lineno = 527U;
    descriptor___0.flags = 0U;
    tmp___1 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& port->dev),
                        "%s - Marking this device as unsafe for GET_CONFIG commands\n",
                        "cypress_earthmate_port_probe");
      }
    } else {
    }
    priv->get_cfg_unsafe = 1;
  } else {
  }
  return (0);
}
}
static int cypress_hidcom_port_probe(struct usb_serial_port *port )
{
  struct cypress_private *priv ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  {
  {
  ret = cypress_generic_port_probe(port);
  }
  if (ret != 0) {
    {
    descriptor.modname = "cypress_m8";
    descriptor.function = "cypress_hidcom_port_probe";
    descriptor.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor.format = "%s - Failed setting up port\n";
    descriptor.lineno = 541U;
    descriptor.flags = 0U;
    tmp = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - Failed setting up port\n",
                        "cypress_hidcom_port_probe");
      }
    } else {
    }
    return (ret);
  } else {
  }
  {
  tmp___0 = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp___0;
  priv->chiptype = 2;
  }
  return (0);
}
}
static int cypress_ca42v2_port_probe(struct usb_serial_port *port )
{
  struct cypress_private *priv ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  {
  {
  ret = cypress_generic_port_probe(port);
  }
  if (ret != 0) {
    {
    descriptor.modname = "cypress_m8";
    descriptor.function = "cypress_ca42v2_port_probe";
    descriptor.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor.format = "%s - Failed setting up port\n";
    descriptor.lineno = 558U;
    descriptor.flags = 0U;
    tmp = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - Failed setting up port\n",
                        "cypress_ca42v2_port_probe");
      }
    } else {
    }
    return (ret);
  } else {
  }
  {
  tmp___0 = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp___0;
  priv->chiptype = 3;
  }
  return (0);
}
}
static int cypress_port_remove(struct usb_serial_port *port )
{
  struct cypress_private *priv ;
  void *tmp ;
  struct kfifo *__tmp ;
  struct __kfifo *__kfifo ;
  {
  {
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  __tmp = & priv->write_fifo;
  __kfifo = & __tmp->__annonCompField65.kfifo;
  __kfifo_free(__kfifo);
  kfree((void const *)priv);
  }
  return (0);
}
}
static int cypress_open(struct tty_struct *tty , struct usb_serial_port *port )
{
  struct cypress_private *priv ;
  void *tmp ;
  struct usb_serial *serial ;
  unsigned long flags ;
  int result ;
  unsigned int tmp___0 ;
  {
  {
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  serial = port->serial;
  result = 0;
  }
  if (priv->comm_is_ok == 0) {
    return (-5);
  } else {
  }
  {
  usb_clear_halt(serial->dev, 129);
  usb_clear_halt(serial->dev, 2);
  ldv___ldv_spin_lock_60(& priv->lock);
  priv->bytes_in = 0;
  priv->bytes_out = 0;
  priv->cmd_count = 0;
  priv->rx_flags = 0U;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  cypress_send(port);
  }
  if ((unsigned long )tty != (unsigned long )((struct tty_struct *)0)) {
    {
    cypress_set_termios(tty, port, & priv->tmp_termios);
    }
  } else {
  }
  if ((unsigned long )port->interrupt_in_urb == (unsigned long )((struct urb *)0)) {
    {
    dev_err((struct device const *)(& port->dev), "%s - interrupt_in_urb is empty!\n",
            "cypress_open");
    }
    return (-1);
  } else {
  }
  {
  tmp___0 = __create_pipe(serial->dev, (unsigned int )port->interrupt_in_endpointAddress);
  usb_fill_int_urb(port->interrupt_in_urb, serial->dev, tmp___0 | 1073741952U, (port->interrupt_in_urb)->transfer_buffer,
                   (int )(port->interrupt_in_urb)->transfer_buffer_length, & cypress_read_int_callback,
                   (void *)port, priv->read_urb_interval);
  result = usb_submit_urb(port->interrupt_in_urb, 208U);
  }
  if (result != 0) {
    {
    dev_err((struct device const *)(& port->dev), "%s - failed submitting read urb, error %d\n",
            "cypress_open", result);
    cypress_set_dead(port);
    }
  } else {
  }
  return (result);
}
}
static void cypress_dtr_rts(struct usb_serial_port *port , int on )
{
  struct cypress_private *priv ;
  void *tmp ;
  {
  {
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  ldv_spin_lock_irq_62(& priv->lock);
  }
  if (on == 0) {
    priv->line_control = 0U;
  } else {
    priv->line_control = 48U;
  }
  {
  priv->cmd_ctrl = 1;
  ldv_spin_unlock_irq_63(& priv->lock);
  cypress_write((struct tty_struct *)0, port, (unsigned char const *)0U, 0);
  }
  return;
}
}
static void cypress_close(struct usb_serial_port *port )
{
  struct cypress_private *priv ;
  void *tmp ;
  unsigned long flags ;
  struct kfifo *__tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  ldv___ldv_spin_lock_64(& priv->lock);
  __tmp = & priv->write_fifo;
  __tmp->__annonCompField65.kfifo.out = __tmp->__annonCompField65.kfifo.in;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  descriptor.modname = "cypress_m8";
  descriptor.function = "cypress_close";
  descriptor.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor.format = "%s - stopping urbs\n";
  descriptor.lineno = 655U;
  descriptor.flags = 0U;
  tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - stopping urbs\n",
                      "cypress_close");
    }
  } else {
  }
  {
  usb_kill_urb(port->interrupt_in_urb);
  usb_kill_urb(port->interrupt_out_urb);
  }
  if ((int )stats) {
    {
    _dev_info((struct device const *)(& port->dev), "Statistics: %d Bytes In | %d Bytes Out | %d Commands Issued\n",
              priv->bytes_in, priv->bytes_out, priv->cmd_count);
    }
  } else {
  }
  return;
}
}
static int cypress_write(struct tty_struct *tty , struct usb_serial_port *port , unsigned char const *buf ,
                         int count )
{
  struct cypress_private *priv ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned long __flags ;
  unsigned int __ret ;
  struct kfifo *__tmp ;
  void const *__buf ;
  unsigned long __n ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  unsigned int tmp___1 ;
  {
  {
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  descriptor.modname = "cypress_m8";
  descriptor.function = "cypress_write";
  descriptor.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor.format = "%s - %d bytes\n";
  descriptor.lineno = 670U;
  descriptor.flags = 0U;
  tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - %d bytes\n",
                      "cypress_write", count);
    }
  } else {
  }
  if (priv->cmd_ctrl != 0) {
    count = 0;
    goto finish;
  } else {
  }
  if (count == 0) {
    return (count);
  } else {
  }
  {
  ldv___ldv_spin_lock_66(& priv->lock);
  __tmp = & priv->write_fifo;
  __buf = (void const *)buf;
  __n = (unsigned long )count;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField65.kfifo;
  tmp___1 = __kfifo_in(__kfifo, __buf, (unsigned int )__n);
  __ret = tmp___1;
  ldv_spin_unlock_irqrestore_52(& priv->lock, __flags);
  count = (int )__ret;
  }
  finish:
  {
  cypress_send(port);
  }
  return (count);
}
}
static void cypress_send(struct usb_serial_port *port )
{
  int count ;
  int result ;
  int offset ;
  int actual_size ;
  struct cypress_private *priv ;
  void *tmp ;
  struct device *dev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  unsigned long __flags ;
  unsigned int __ret ;
  struct kfifo *__tmp ;
  void *__buf ;
  unsigned long __n ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  unsigned int tmp___6 ;
  bool __print_once ;
  struct usb_serial_port *__port ;
  {
  {
  count = 0;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  dev = & port->dev;
  }
  if (priv->comm_is_ok == 0) {
    return;
  } else {
  }
  {
  descriptor.modname = "cypress_m8";
  descriptor.function = "cypress_send";
  descriptor.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor.format = "%s - interrupt out size is %d\n";
  descriptor.lineno = 703U;
  descriptor.flags = 0U;
  tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s - interrupt out size is %d\n",
                      "cypress_send", port->interrupt_out_size);
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_68(& priv->lock);
  }
  if (priv->write_urb_in_use != 0) {
    {
    descriptor___0.modname = "cypress_m8";
    descriptor___0.function = "cypress_send";
    descriptor___0.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___0.format = "%s - can\'t write, urb in use\n";
    descriptor___0.lineno = 707U;
    descriptor___0.flags = 0U;
    tmp___1 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "%s - can\'t write, urb in use\n",
                        "cypress_send");
      }
    } else {
    }
    {
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    }
    return;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  memset((port->interrupt_out_urb)->transfer_buffer, 0, (size_t )port->interrupt_out_size);
  ldv___ldv_spin_lock_71(& priv->lock);
  }
  {
  if ((unsigned int )priv->pkt_fmt == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )priv->pkt_fmt == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  switch_default: ;
  case_0:
  offset = 2;
  *(port->interrupt_out_buffer) = priv->line_control;
  goto ldv_31881;
  case_1:
  offset = 1;
  *(port->interrupt_out_buffer) = priv->line_control;
  goto ldv_31881;
  switch_break: ;
  }
  ldv_31881: ;
  if (((int )priv->line_control & 8) != 0) {
    priv->line_control = (unsigned int )priv->line_control & 247U;
  } else {
  }
  if (priv->cmd_ctrl != 0) {
    {
    priv->cmd_count = priv->cmd_count + 1;
    descriptor___1.modname = "cypress_m8";
    descriptor___1.function = "cypress_send";
    descriptor___1.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___1.format = "%s - line control command being issued\n";
    descriptor___1.lineno = 737U;
    descriptor___1.flags = 0U;
    tmp___2 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev, "%s - line control command being issued\n",
                        "cypress_send");
      }
    } else {
    }
    {
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    }
    goto send;
  } else {
    {
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    }
  }
  {
  ldv___ldv_spin_lock_74(& priv->lock);
  __tmp = & priv->write_fifo;
  __buf = (void *)(port->interrupt_out_buffer + (unsigned long )offset);
  __n = (unsigned long )(port->interrupt_out_size - offset);
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField65.kfifo;
  tmp___3 = __kfifo_out(__kfifo, __buf, (unsigned int )__n);
  __ret = __kfifo_uint_must_check_helper(tmp___3);
  ldv_spin_unlock_irqrestore_52(& priv->lock, __flags);
  tmp___4 = __kfifo_uint_must_check_helper(__ret);
  count = (int )tmp___4;
  }
  if (count == 0) {
    return;
  } else {
  }
  {
  if ((unsigned int )priv->pkt_fmt == 0U) {
    goto case_0___0;
  } else {
  }
  if ((unsigned int )priv->pkt_fmt == 1U) {
    goto case_1___0;
  } else {
  }
  goto switch_default___0;
  switch_default___0: ;
  case_0___0:
  *(port->interrupt_out_buffer + 1UL) = (unsigned char )count;
  goto ldv_31896;
  case_1___0:
  *(port->interrupt_out_buffer) = (unsigned char )((int )((signed char )*(port->interrupt_out_buffer)) | (int )((signed char )count));
  switch_break___0: ;
  }
  ldv_31896:
  {
  descriptor___2.modname = "cypress_m8";
  descriptor___2.function = "cypress_send";
  descriptor___2.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor___2.format = "%s - count is %d\n";
  descriptor___2.lineno = 759U;
  descriptor___2.flags = 0U;
  tmp___5 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev, "%s - count is %d\n",
                      "cypress_send", count);
    }
  } else {
  }
  send:
  {
  ldv___ldv_spin_lock_76(& priv->lock);
  priv->write_urb_in_use = 1;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  }
  if (priv->cmd_ctrl != 0) {
    actual_size = 1;
  } else {
    actual_size = count + ((unsigned int )priv->pkt_fmt == 0U ? 2 : 1);
  }
  {
  usb_serial_debug_data(dev, "cypress_send", port->interrupt_out_size, (unsigned char const *)(port->interrupt_out_urb)->transfer_buffer);
  tmp___6 = __create_pipe((port->serial)->dev, (unsigned int )port->interrupt_out_endpointAddress);
  usb_fill_int_urb(port->interrupt_out_urb, (port->serial)->dev, tmp___6 | 1073741824U,
                   (void *)port->interrupt_out_buffer, port->interrupt_out_size, & cypress_write_int_callback,
                   (void *)port, priv->write_urb_interval);
  result = usb_submit_urb(port->interrupt_out_urb, 32U);
  }
  if (result != 0) {
    __port = port;
    if ((unsigned int )*((unsigned char *)__port + 704UL) == 0U || ! __print_once) {
      {
      __print_once = 1;
      dev_err((struct device const *)(& __port->dev), "%s - failed submitting write urb, error %d\n",
              "cypress_send", result);
      }
    } else {
    }
    {
    priv->write_urb_in_use = 0;
    cypress_set_dead(port);
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_78(& priv->lock);
  }
  if (priv->cmd_ctrl != 0) {
    priv->cmd_ctrl = 0;
  } else {
  }
  {
  priv->bytes_out = priv->bytes_out + count;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  usb_serial_port_softint(port);
  }
  return;
}
}
static int cypress_write_room(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct cypress_private *priv ;
  void *tmp ;
  int room ;
  unsigned long flags ;
  struct kfifo *__tmpq ;
  size_t __recsize ;
  unsigned int __avail ;
  struct kfifo *__tmpl ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  room = 0;
  ldv___ldv_spin_lock_80(& priv->lock);
  __tmpq = & priv->write_fifo;
  __recsize = 0UL;
  __tmpl = __tmpq;
  __avail = (__tmpq->__annonCompField65.kfifo.mask - (__tmpl->__annonCompField65.kfifo.in - __tmpl->__annonCompField65.kfifo.out)) + 1U;
  tmp___0 = __kfifo_uint_must_check_helper(__avail);
  room = (int )tmp___0;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  descriptor.modname = "cypress_m8";
  descriptor.function = "cypress_write_room";
  descriptor.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor.format = "%s - returns %d\n";
  descriptor.lineno = 812U;
  descriptor.flags = 0U;
  tmp___1 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - returns %d\n",
                      "cypress_write_room", room);
    }
  } else {
  }
  return (room);
}
}
static int cypress_tiocmget(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct cypress_private *priv ;
  void *tmp ;
  __u8 status ;
  __u8 control ;
  unsigned int result ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  result = 0U;
  ldv___ldv_spin_lock_82(& priv->lock);
  control = priv->line_control;
  status = priv->current_status;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  result = (unsigned int )((((((((int )control & 32) != 0 ? 2 : 0) | (((int )control & 16) != 0 ? 4 : 0)) | (((int )status & 16) != 0 ? 32 : 0)) | (((int )status & 32) != 0 ? 256 : 0)) | ((int )status & 128)) | ((int )status & 64));
  descriptor.modname = "cypress_m8";
  descriptor.function = "cypress_tiocmget";
  descriptor.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor.format = "%s - result = %x\n";
  descriptor.lineno = 837U;
  descriptor.flags = 0U;
  tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - result = %x\n",
                      "cypress_tiocmget", result);
    }
  } else {
  }
  return ((int )result);
}
}
static int cypress_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear )
{
  struct usb_serial_port *port ;
  struct cypress_private *priv ;
  void *tmp ;
  unsigned long flags ;
  int tmp___0 ;
  {
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  ldv___ldv_spin_lock_84(& priv->lock);
  }
  if ((set & 4U) != 0U) {
    priv->line_control = (__u8 )((unsigned int )priv->line_control | 16U);
  } else {
  }
  if ((set & 2U) != 0U) {
    priv->line_control = (__u8 )((unsigned int )priv->line_control | 32U);
  } else {
  }
  if ((clear & 4U) != 0U) {
    priv->line_control = (unsigned int )priv->line_control & 239U;
  } else {
  }
  if ((clear & 2U) != 0U) {
    priv->line_control = (unsigned int )priv->line_control & 223U;
  } else {
  }
  {
  priv->cmd_ctrl = 1;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  tmp___0 = cypress_write(tty, port, (unsigned char const *)0U, 0);
  }
  return (tmp___0);
}
}
static void cypress_set_termios(struct tty_struct *tty , struct usb_serial_port *port ,
                                struct ktermios *old_termios )
{
  struct cypress_private *priv ;
  void *tmp ;
  struct device *dev ;
  int data_bits ;
  int stop_bits ;
  int parity_type ;
  int parity_enable ;
  unsigned int cflag ;
  unsigned int iflag ;
  unsigned long flags ;
  __u8 oldlines ;
  int linechange ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  speed_t tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  {
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  dev = & port->dev;
  linechange = 0;
  ldv___ldv_spin_lock_86(& priv->lock);
  }
  if (priv->termios_initialized == 0) {
    if (priv->chiptype == 1) {
      tty->termios = tty_std_termios;
      tty->termios.c_cflag = 3260U;
      tty->termios.c_ispeed = 4800U;
      tty->termios.c_ospeed = 4800U;
    } else
    if (priv->chiptype == 2) {
      tty->termios = tty_std_termios;
      tty->termios.c_cflag = 3261U;
      tty->termios.c_ispeed = 9600U;
      tty->termios.c_ospeed = 9600U;
    } else
    if (priv->chiptype == 3) {
      tty->termios = tty_std_termios;
      tty->termios.c_cflag = 3261U;
      tty->termios.c_ispeed = 9600U;
      tty->termios.c_ospeed = 9600U;
    } else {
    }
    priv->termios_initialized = 1;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  tty->termios.c_cflag = tty->termios.c_cflag & 1073741823U;
  cflag = tty->termios.c_cflag;
  iflag = tty->termios.c_iflag;
  }
  if ((unsigned long )old_termios != (unsigned long )((struct ktermios *)0)) {
    {
    ldv___ldv_spin_lock_88(& priv->lock);
    priv->tmp_termios = tty->termios;
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    }
  } else {
  }
  stop_bits = (cflag & 64U) != 0U;
  if ((cflag & 256U) != 0U) {
    parity_enable = 1;
    parity_type = (cflag & 512U) != 0U;
  } else {
    parity_type = 0;
    parity_enable = parity_type;
  }
  {
  if ((cflag & 48U) == 0U) {
    goto case_0;
  } else {
  }
  if ((cflag & 48U) == 16U) {
    goto case_16;
  } else {
  }
  if ((cflag & 48U) == 32U) {
    goto case_32;
  } else {
  }
  if ((cflag & 48U) == 48U) {
    goto case_48;
  } else {
  }
  goto switch_default;
  case_0:
  data_bits = 0;
  goto ldv_31952;
  case_16:
  data_bits = 1;
  goto ldv_31952;
  case_32:
  data_bits = 2;
  goto ldv_31952;
  case_48:
  data_bits = 3;
  goto ldv_31952;
  switch_default:
  {
  dev_err((struct device const *)dev, "%s - CSIZE was set, but not CS5-CS8\n", "cypress_set_termios");
  data_bits = 3;
  }
  switch_break: ;
  }
  ldv_31952:
  {
  ldv___ldv_spin_lock_90(& priv->lock);
  oldlines = priv->line_control;
  }
  if ((cflag & 4111U) == 0U) {
    {
    descriptor.modname = "cypress_m8";
    descriptor.function = "cypress_set_termios";
    descriptor.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor.format = "%s - dropping the lines, baud rate 0bps\n";
    descriptor.lineno = 950U;
    descriptor.flags = 0U;
    tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s - dropping the lines, baud rate 0bps\n",
                        "cypress_set_termios");
      }
    } else {
    }
    priv->line_control = (unsigned int )priv->line_control & 207U;
  } else {
    priv->line_control = 48U;
  }
  {
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  descriptor___0.modname = "cypress_m8";
  descriptor___0.function = "cypress_set_termios";
  descriptor___0.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor___0.format = "%s - sending %d stop_bits, %d parity_enable, %d parity_type, %d data_bits (+5)\n";
  descriptor___0.lineno = 957U;
  descriptor___0.flags = 0U;
  tmp___1 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "%s - sending %d stop_bits, %d parity_enable, %d parity_type, %d data_bits (+5)\n",
                      "cypress_set_termios", stop_bits, parity_enable, parity_type,
                      data_bits);
    }
  } else {
  }
  {
  tmp___2 = tty_get_baud_rate(tty);
  cypress_serial_control(tty, port, tmp___2, data_bits, stop_bits, parity_enable,
                         parity_type, 0, 1);
  cypress_serial_control(tty, port, 0U, 0, 0, 0, 0, 0, 2);
  ldv___ldv_spin_lock_92(& priv->lock);
  }
  if (priv->chiptype == 1 && priv->baud_rate == 4800) {
    {
    descriptor___1.modname = "cypress_m8";
    descriptor___1.function = "cypress_set_termios";
    descriptor___1.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___1.format = "Using custom termios settings for a baud rate of 4800bps.\n";
    descriptor___1.lineno = 974U;
    descriptor___1.flags = 0U;
    tmp___3 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev, "Using custom termios settings for a baud rate of 4800bps.\n");
      }
    } else {
    }
    tty->termios.c_iflag = tty->termios.c_iflag & 4294965780U;
    tty->termios.c_oflag = tty->termios.c_oflag & 4294967294U;
    tty->termios.c_lflag = tty->termios.c_lflag & 4294934452U;
  } else {
  }
  {
  linechange = (int )priv->line_control != (int )oldlines;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  }
  if (linechange != 0) {
    {
    priv->cmd_ctrl = 1;
    cypress_write(tty, port, (unsigned char const *)0U, 0);
    }
  } else {
  }
  return;
}
}
static int cypress_chars_in_buffer(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct cypress_private *priv ;
  void *tmp ;
  int chars ;
  unsigned long flags ;
  struct kfifo *__tmpl ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  chars = 0;
  ldv___ldv_spin_lock_94(& priv->lock);
  __tmpl = & priv->write_fifo;
  chars = (int )(__tmpl->__annonCompField65.kfifo.in - __tmpl->__annonCompField65.kfifo.out);
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  descriptor.modname = "cypress_m8";
  descriptor.function = "cypress_chars_in_buffer";
  descriptor.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor.format = "%s - returns %d\n";
  descriptor.lineno = 1023U;
  descriptor.flags = 0U;
  tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - returns %d\n",
                      "cypress_chars_in_buffer", chars);
    }
  } else {
  }
  return (chars);
}
}
static void cypress_throttle(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct cypress_private *priv ;
  void *tmp ;
  {
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  ldv_spin_lock_irq_62(& priv->lock);
  priv->rx_flags = 1U;
  ldv_spin_unlock_irq_63(& priv->lock);
  }
  return;
}
}
static void cypress_unthrottle(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct cypress_private *priv ;
  void *tmp ;
  int actually_throttled ;
  int result ;
  {
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  ldv_spin_lock_irq_62(& priv->lock);
  actually_throttled = (int )priv->rx_flags & 2;
  priv->rx_flags = 0U;
  ldv_spin_unlock_irq_63(& priv->lock);
  }
  if (priv->comm_is_ok == 0) {
    return;
  } else {
  }
  if (actually_throttled != 0) {
    {
    result = usb_submit_urb(port->interrupt_in_urb, 208U);
    }
    if (result != 0) {
      {
      dev_err((struct device const *)(& port->dev), "%s - failed submitting read urb, error %d\n",
              "cypress_unthrottle", result);
      cypress_set_dead(port);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void cypress_read_int_callback(struct urb *urb )
{
  struct usb_serial_port *port ;
  struct cypress_private *priv ;
  void *tmp ;
  struct device *dev ;
  struct tty_struct *tty ;
  unsigned char *data ;
  unsigned long flags ;
  char tty_flag ;
  int havedata ;
  int bytes ;
  int result ;
  int i ;
  int status ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  u8 delta ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  unsigned int tmp___5 ;
  int tmp_comm_is_ok;
  {
  {
  port = (struct usb_serial_port *)urb->context;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  dev = & (urb->dev)->dev;
  data = (unsigned char *)urb->transfer_buffer;
  tty_flag = 0;
  havedata = 0;
  bytes = 0;
  i = 0;
  status = urb->status;
  }
  {
  if (status == 0) {
    goto case_0;
  } else {
  }
  if (status == -104) {
    goto case_neg_104;
  } else {
  }
  if (status == -2) {
    goto case_neg_2;
  } else {
  }
  if (status == -108) {
    goto case_neg_108;
  } else {
  }
  if (status == -32) {
    goto case_neg_32;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_32001;
  case_neg_104: ;
  case_neg_2: ;
  case_neg_108: ;
  return;
  case_neg_32: ;
  switch_default:
  {
  dev_err((struct device const *)dev, "%s - unexpected nonzero read status received: %d\n",
          "cypress_read_int_callback", status);
  cypress_set_dead(port);
  }
  return;
  switch_break: ;
  }
  ldv_32001:
  {
  ldv___ldv_spin_lock_100(& priv->lock);
  }
  if ((int )priv->rx_flags & 1) {
    {
    descriptor.modname = "cypress_m8";
    descriptor.function = "cypress_read_int_callback";
    descriptor.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor.format = "%s - now throttling\n";
    descriptor.lineno = 1100U;
    descriptor.flags = 0U;
    tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s - now throttling\n",
                        "cypress_read_int_callback");
      }
    } else {
    }
    {
    priv->rx_flags = (__u8 )((unsigned int )priv->rx_flags | 2U);
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    }
    return;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  tty = tty_port_tty_get(& port->port);
  }
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0)) {
    {
    descriptor___0.modname = "cypress_m8";
    descriptor___0.function = "cypress_read_int_callback";
    descriptor___0.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___0.format = "%s - bad tty pointer - exiting\n";
    descriptor___0.lineno = 1109U;
    descriptor___0.flags = 0U;
    tmp___1 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "%s - bad tty pointer - exiting\n",
                        "cypress_read_int_callback");
      }
    } else {
    }
    return;
  } else {
  }
  {
  ldv___ldv_spin_lock_103(& priv->lock);
  result = (int )urb->actual_length;
  }
  {
  if ((unsigned int )priv->pkt_fmt == 0U) {
    goto case_0___0;
  } else {
  }
  if ((unsigned int )priv->pkt_fmt == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default___0;
  switch_default___0: ;
  case_0___0:
  priv->current_status = (unsigned int )*data & 248U;
  bytes = (int )*(data + 1UL) + 2;
  i = 2;
  if (bytes > 2) {
    havedata = 1;
  } else {
  }
  goto ldv_32012;
  case_1:
  priv->current_status = (unsigned int )*data & 248U;
  bytes = ((int )*data & 7) + 1;
  i = 1;
  if (bytes > 1) {
    havedata = 1;
  } else {
  }
  goto ldv_32012;
  switch_break___0: ;
  }
  ldv_32012:
  {
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  }
  if (result < bytes) {
    {
    descriptor___1.modname = "cypress_m8";
    descriptor___1.function = "cypress_read_int_callback";
    descriptor___1.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___1.format = "%s - wrong packet size - received %d bytes but packet said %d bytes\n";
    descriptor___1.lineno = 1138U;
    descriptor___1.flags = 0U;
    tmp___2 = __builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev, "%s - wrong packet size - received %d bytes but packet said %d bytes\n",
                        "cypress_read_int_callback", result, bytes);
      }
    } else {
    }
    goto continue_read;
  } else {
  }
  {
  usb_serial_debug_data(& port->dev, "cypress_read_int_callback", (int )urb->actual_length,
                        (unsigned char const *)data);
  ldv___ldv_spin_lock_105(& priv->lock);
  }
  if ((int )priv->current_status != (int )priv->prev_status) {
    delta = (u8 )((int )((signed char )priv->current_status) ^ (int )((signed char )priv->prev_status));
    if (((int )delta & 240) != 0) {
      if (((int )delta & 16) != 0) {
        port->icount.cts = port->icount.cts + 1U;
      } else {
      }
      if (((int )delta & 32) != 0) {
        port->icount.dsr = port->icount.dsr + 1U;
      } else {
      }
      if ((int )((signed char )delta) < 0) {
        port->icount.rng = port->icount.rng + 1U;
      } else {
      }
      if (((int )delta & 64) != 0) {
        port->icount.dcd = port->icount.dcd + 1U;
      } else {
      }
      {
      __wake_up(& port->port.delta_msr_wait, 1U, 1, (void *)0);
      }
    } else {
    }
    priv->prev_status = (char )priv->current_status;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  }
  if (((unsigned long )tty != (unsigned long )((struct tty_struct *)0) && (tty->termios.c_cflag & 2048U) == 0U) && ((int )priv->current_status & 64) == 0) {
    {
    descriptor___2.modname = "cypress_m8";
    descriptor___2.function = "cypress_read_int_callback";
    descriptor___2.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___2.format = "%s - calling hangup\n";
    descriptor___2.lineno = 1170U;
    descriptor___2.flags = 0U;
    tmp___3 = __builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev, "%s - calling hangup\n",
                        "cypress_read_int_callback");
      }
    } else {
    }
    {
    tty_hangup(tty);
    }
    goto continue_read;
  } else {
  }
  {
  ldv___ldv_spin_lock_107(& priv->lock);
  }
  if (((int )priv->current_status & 8) != 0) {
    {
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    tty_flag = 3;
    descriptor___3.modname = "cypress_m8";
    descriptor___3.function = "cypress_read_int_callback";
    descriptor___3.filename = "drivers/usb/serial/cypress_m8.c";
    descriptor___3.format = "%s - Parity Error detected\n";
    descriptor___3.lineno = 1183U;
    descriptor___3.flags = 0U;
    tmp___4 = __builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)dev, "%s - Parity Error detected\n",
                        "cypress_read_int_callback");
      }
    } else {
    }
  } else {
    {
    ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
    }
  }
  if (bytes > i) {
    {
    tty_insert_flip_string_fixed_flag(& port->port, (unsigned char const *)(data + (unsigned long )i),
                                      (int )tty_flag, (size_t )(bytes - i));
    tty_flip_buffer_push(& port->port);
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_110(& priv->lock);
  priv->bytes_in = priv->bytes_in + bytes;
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  }
  continue_read:
  {
  tty_kref_put(tty);
  }
  ldv___ldv_spin_lock_57(& priv->lock);
  tmp_comm_is_ok = priv->comm_is_ok;
  ldv_assert("", tmp_comm_is_ok == priv->comm_is_ok);
  ldv_spin_unlock_irqrestore_52(& priv->lock, flags);
  if (priv->comm_is_ok != 0) {
    {
    tmp___5 = __create_pipe((port->serial)->dev, (unsigned int )port->interrupt_in_endpointAddress);
    usb_fill_int_urb(port->interrupt_in_urb, (port->serial)->dev, tmp___5 | 1073741952U,
                     (port->interrupt_in_urb)->transfer_buffer, (int )(port->interrupt_in_urb)->transfer_buffer_length,
                     & cypress_read_int_callback, (void *)port, priv->read_urb_interval);
    result = usb_submit_urb(port->interrupt_in_urb, 32U);
    }
    if ((unsigned int )result - 4294967295U > 1U) {
      {
      dev_err((struct device const *)dev, "%s - failed resubmitting read urb, error %d\n",
              "cypress_read_int_callback", result);
      cypress_set_dead(port);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void cypress_write_int_callback(struct urb *urb )
{
  struct usb_serial_port *port ;
  struct cypress_private *priv ;
  void *tmp ;
  struct device *dev ;
  int result ;
  int status ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  {
  port = (struct usb_serial_port *)urb->context;
  tmp = usb_get_serial_port_data(port);
  priv = (struct cypress_private *)tmp;
  dev = & (urb->dev)->dev;
  status = urb->status;
  }
  {
  if (status == 0) {
    goto case_0;
  } else {
  }
  if (status == -104) {
    goto case_neg_104;
  } else {
  }
  if (status == -2) {
    goto case_neg_2;
  } else {
  }
  if (status == -108) {
    goto case_neg_108;
  } else {
  }
  if (status == -32) {
    goto case_neg_32;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_32028;
  case_neg_104: ;
  case_neg_2: ;
  case_neg_108:
  {
  descriptor.modname = "cypress_m8";
  descriptor.function = "cypress_write_int_callback";
  descriptor.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor.format = "%s - urb shutting down with status: %d\n";
  descriptor.lineno = 1239U;
  descriptor.flags = 0U;
  tmp___0 = __builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s - urb shutting down with status: %d\n",
                      "cypress_write_int_callback", status);
    }
  } else {
  }
  priv->write_urb_in_use = 0;
  return;
  case_neg_32: ;
  if (priv->comm_is_ok == 0) {
    goto ldv_32028;
  } else {
  }
  {
  usb_clear_halt((port->serial)->dev, 2);
  descriptor___0.modname = "cypress_m8";
  descriptor___0.function = "cypress_write_int_callback";
  descriptor___0.filename = "drivers/usb/serial/cypress_m8.c";
  descriptor___0.format = "%s - nonzero write bulk status received: %d\n";
  descriptor___0.lineno = 1248U;
  descriptor___0.flags = 0U;
  tmp___1 = __builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "%s - nonzero write bulk status received: %d\n",
                      "cypress_write_int_callback", status);
    }
  } else {
  }
  {
  (port->interrupt_out_urb)->transfer_buffer_length = 1U;
  result = usb_submit_urb(port->interrupt_out_urb, 32U);
  }
  if (result == 0) {
    return;
  } else {
  }
  {
  dev_err((struct device const *)dev, "%s - failed resubmitting write urb, error %d\n",
          "cypress_write_int_callback", result);
  cypress_set_dead(port);
  }
  goto ldv_32028;
  switch_default:
  {
  dev_err((struct device const *)dev, "%s - unexpected nonzero write status received: %d\n",
          "cypress_write_int_callback", status);
  cypress_set_dead(port);
  }
  goto ldv_32028;
  switch_break: ;
  }
  ldv_32028:
  {
  priv->write_urb_in_use = 0;
  cypress_send(port);
  }
  return;
}
}
static int usb_serial_module_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_usb_serial_register_drivers_112((struct usb_serial_driver * const *)(& serial_drivers),
                                            "cypress_m8", (struct usb_device_id const *)(& id_table_combined));
  }
  return (tmp);
}
}
static void usb_serial_module_exit(void)
{
  {
  {
  ldv_usb_serial_deregister_drivers_113((struct usb_serial_driver * const *)(& serial_drivers));
  }
  return;
}
}
void ldv_dispatch_deregister_6_1(struct usb_device_id *arg0 ) ;
void ldv_dispatch_insmod_deregister_8_2(void) ;
void ldv_dispatch_insmod_register_8_3(void) ;
void ldv_dispatch_register_7_3(struct usb_device_id *arg0 ) ;
void ldv_emg_usb_serial_deregister_drivers(struct usb_serial_driver **arg0 ) ;
int ldv_emg_usb_serial_register_drivers(struct usb_serial_driver **arg0 , char *arg1 ,
                                        struct usb_device_id *arg2 ) ;
void *ldv_insmod_5(void *arg0 ) ;
void ldv_insmod_usb_serial_module_exit_5_2(void (*arg0)(void) ) ;
int ldv_insmod_usb_serial_module_init_5_6(int (*arg0)(void) ) ;
void *ldv_main_8(void *arg0 ) ;
void *ldv_usb_serial_scenario_2(void *arg0 ) ;
void *ldv_usb_serial_scenario_3(void *arg0 ) ;
void *ldv_usb_serial_scenario_4(void *arg0 ) ;
void ldv_usb_serial_scenario_close_2_30(void (*arg0)(struct usb_serial_port * ) ,
                                        struct usb_serial_port *arg1 ) ;
void ldv_usb_serial_scenario_close_3_30(void (*arg0)(struct usb_serial_port * ) ,
                                        struct usb_serial_port *arg1 ) ;
void ldv_usb_serial_scenario_close_4_30(void (*arg0)(struct usb_serial_port * ) ,
                                        struct usb_serial_port *arg1 ) ;
void ldv_usb_serial_scenario_irq_write_2_34(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                        unsigned char * , int ) ,
                                            struct tty_struct *arg1 , struct usb_serial_port *arg2 ,
                                            unsigned char *arg3 , int arg4 ) ;
void ldv_usb_serial_scenario_irq_write_3_34(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                        unsigned char * , int ) ,
                                            struct tty_struct *arg1 , struct usb_serial_port *arg2 ,
                                            unsigned char *arg3 , int arg4 ) ;
void ldv_usb_serial_scenario_irq_write_4_34(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                        unsigned char * , int ) ,
                                            struct tty_struct *arg1 , struct usb_serial_port *arg2 ,
                                            unsigned char *arg3 , int arg4 ) ;
void ldv_usb_serial_scenario_open_2_19(int (*arg0)(struct tty_struct * , struct usb_serial_port * ) ,
                                       struct tty_struct *arg1 , struct usb_serial_port *arg2 ) ;
void ldv_usb_serial_scenario_open_3_19(int (*arg0)(struct tty_struct * , struct usb_serial_port * ) ,
                                       struct tty_struct *arg1 , struct usb_serial_port *arg2 ) ;
void ldv_usb_serial_scenario_open_4_19(int (*arg0)(struct tty_struct * , struct usb_serial_port * ) ,
                                       struct tty_struct *arg1 , struct usb_serial_port *arg2 ) ;
int ldv_usb_serial_scenario_port_probe_2_23(int (*arg0)(struct usb_serial_port * ) ,
                                            struct usb_serial_port *arg1 ) ;
int ldv_usb_serial_scenario_port_probe_3_23(int (*arg0)(struct usb_serial_port * ) ,
                                            struct usb_serial_port *arg1 ) ;
int ldv_usb_serial_scenario_port_probe_4_23(int (*arg0)(struct usb_serial_port * ) ,
                                            struct usb_serial_port *arg1 ) ;
void ldv_usb_serial_scenario_port_remove_2_21(int (*arg0)(struct usb_serial_port * ) ,
                                              struct usb_serial_port *arg1 ) ;
void ldv_usb_serial_scenario_port_remove_3_21(int (*arg0)(struct usb_serial_port * ) ,
                                              struct usb_serial_port *arg1 ) ;
void ldv_usb_serial_scenario_port_remove_4_21(int (*arg0)(struct usb_serial_port * ) ,
                                              struct usb_serial_port *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_32(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_39(void (*arg0)(struct usb_serial_port * ,
                                                                            int ) ,
                                                               struct usb_serial_port *arg1 ,
                                                               int arg2 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_42(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_43(void (*arg0)(struct tty_struct * ,
                                                                            struct usb_serial_port * ,
                                                                            struct ktermios * ) ,
                                                               struct tty_struct *arg1 ,
                                                               struct usb_serial_port *arg2 ,
                                                               struct ktermios *arg3 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_46(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_47(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_48(int (*arg0)(struct tty_struct * ,
                                                                           size_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned long arg2 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_51(int (*arg0)(struct tty_struct * ,
                                                                           speed_t ,
                                                                           speed_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned int arg2 ,
                                                               unsigned int arg3 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_54(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_55(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_56(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_32(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_39(void (*arg0)(struct usb_serial_port * ,
                                                                            int ) ,
                                                               struct usb_serial_port *arg1 ,
                                                               int arg2 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_42(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_43(void (*arg0)(struct tty_struct * ,
                                                                            struct usb_serial_port * ,
                                                                            struct ktermios * ) ,
                                                               struct tty_struct *arg1 ,
                                                               struct usb_serial_port *arg2 ,
                                                               struct ktermios *arg3 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_46(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_47(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_48(int (*arg0)(struct tty_struct * ,
                                                                           size_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned long arg2 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_51(int (*arg0)(struct tty_struct * ,
                                                                           speed_t ,
                                                                           speed_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned int arg2 ,
                                                               unsigned int arg3 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_54(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_55(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_56(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_32(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_39(void (*arg0)(struct usb_serial_port * ,
                                                                            int ) ,
                                                               struct usb_serial_port *arg1 ,
                                                               int arg2 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_42(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_43(void (*arg0)(struct tty_struct * ,
                                                                            struct usb_serial_port * ,
                                                                            struct ktermios * ) ,
                                                               struct tty_struct *arg1 ,
                                                               struct usb_serial_port *arg2 ,
                                                               struct ktermios *arg3 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_46(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_47(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_48(int (*arg0)(struct tty_struct * ,
                                                                           size_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned long arg2 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_51(int (*arg0)(struct tty_struct * ,
                                                                           speed_t ,
                                                                           speed_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned int arg2 ,
                                                               unsigned int arg3 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_54(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_55(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 ) ;
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_56(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 ) ;
void ldv_usb_serial_scenario_write_2_33(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                    unsigned char * , int ) , struct tty_struct *arg1 ,
                                        struct usb_serial_port *arg2 , unsigned char *arg3 ,
                                        int arg4 ) ;
void ldv_usb_serial_scenario_write_3_33(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                    unsigned char * , int ) , struct tty_struct *arg1 ,
                                        struct usb_serial_port *arg2 , unsigned char *arg3 ,
                                        int arg4 ) ;
void ldv_usb_serial_scenario_write_4_33(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                    unsigned char * , int ) , struct tty_struct *arg1 ,
                                        struct usb_serial_port *arg2 , unsigned char *arg3 ,
                                        int arg4 ) ;
int main(void) ;
pthread_t ldv_thread_2 ;
pthread_t ldv_thread_3 ;
pthread_t ldv_thread_4 ;
pthread_t ldv_thread_5 ;
void ldv_dispatch_deregister_6_1(struct usb_device_id *arg0 )
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
void ldv_dispatch_insmod_deregister_8_2(void)
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
void ldv_dispatch_insmod_register_8_3(void)
{
  int ret ;
  struct ldv_struct_main_8 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_main_8 *)tmp;
  ret = pthread_create(& ldv_thread_5, (pthread_attr_t const *)0, & ldv_insmod_5,
                       (void *)cf_arg_5);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_register_7_3(struct usb_device_id *arg0 )
{
  int ret ;
  struct ldv_struct_usb_serial_scenario_2 *cf_arg_2 ;
  struct ldv_struct_usb_serial_scenario_2 *cf_arg_3 ;
  struct ldv_struct_usb_serial_scenario_2 *cf_arg_4 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_usb_serial_scenario_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  ret = pthread_create(& ldv_thread_2, (pthread_attr_t const *)0, & ldv_usb_serial_scenario_2,
                       (void *)cf_arg_2);
  __VERIFIER_assume(ret == 0);
  tmp___0 = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_usb_serial_scenario_2 *)tmp___0;
  cf_arg_3->arg0 = arg0;
  ret = pthread_create(& ldv_thread_3, (pthread_attr_t const *)0, & ldv_usb_serial_scenario_3,
                       (void *)cf_arg_3);
  __VERIFIER_assume(ret == 0);
  tmp___1 = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_usb_serial_scenario_2 *)tmp___1;
  cf_arg_4->arg0 = arg0;
  ret = pthread_create(& ldv_thread_4, (pthread_attr_t const *)0, & ldv_usb_serial_scenario_4,
                       (void *)cf_arg_4);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_emg_usb_serial_deregister_drivers(struct usb_serial_driver **arg0 )
{
  struct usb_device_id *ldv_6_usb_device_id_usb_device_id ;
  void *tmp ;
  {
  {
  tmp = external_allocated_data();
  ldv_6_usb_device_id_usb_device_id = (struct usb_device_id *)tmp;
  ldv_6_usb_device_id_usb_device_id = (struct usb_device_id *)arg0;
  ldv_dispatch_deregister_6_1(ldv_6_usb_device_id_usb_device_id);
  }
  return;
  return;
}
}
int ldv_emg_usb_serial_register_drivers(struct usb_serial_driver **arg0 , char *arg1 ,
                                        struct usb_device_id *arg2 )
{
  struct usb_device_id *ldv_7_usb_device_id_usb_device_id ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_7_usb_device_id_usb_device_id = (struct usb_device_id *)tmp;
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_7_usb_device_id_usb_device_id = arg2;
    ldv_dispatch_register_7_3(ldv_7_usb_device_id_usb_device_id);
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
void *ldv_insmod_5(void *arg0 )
{
  int ldv_5_ret_default ;
  void (*ldv_5_usb_serial_module_exit_default)(void) ;
  int (*ldv_5_usb_serial_module_init_default)(void) ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_5_usb_serial_module_exit_default = (void (*)(void))tmp;
  tmp___0 = external_allocated_data();
  ldv_5_usb_serial_module_init_default = (int (*)(void))tmp___0;
  ldv_free(arg0);
  ldv_5_ret_default = ldv_insmod_usb_serial_module_init_5_6(ldv_5_usb_serial_module_init_default);
  ldv_5_ret_default = ldv_post_init(ldv_5_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume(ldv_5_ret_default != 0);
    }
    return ((void *)0);
  } else {
    {
    __VERIFIER_assume(ldv_5_ret_default == 0);
    ldv_insmod_usb_serial_module_exit_5_2(ldv_5_usb_serial_module_exit_default);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
void ldv_insmod_usb_serial_module_exit_5_2(void (*arg0)(void) )
{
  {
  {
  usb_serial_module_exit();
  }
  return;
}
}
int ldv_insmod_usb_serial_module_init_5_6(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = usb_serial_module_init();
  }
  return (tmp);
}
}
void *ldv_main_8(void *arg0 )
{
  {
  {
  ldv_initialize();
  ldv_dispatch_insmod_register_8_3();
  ldv_dispatch_insmod_deregister_8_2();
  ldv_check_final_state();
  __VERIFIER_assume(0);
  }
  return ((void *)0);
  return ((void *)0);
}
}
void *ldv_usb_serial_scenario_2(void *arg0 )
{
  struct usb_serial_driver *ldv_2_driver_usb_serial_driver ;
  unsigned char *ldv_2_ldv_param_33_2_default ;
  int ldv_2_ldv_param_33_3_default ;
  unsigned char *ldv_2_ldv_param_34_2_default ;
  int ldv_2_ldv_param_34_3_default ;
  int ldv_2_ldv_param_39_1_default ;
  struct ktermios *ldv_2_ldv_param_43_2_default ;
  unsigned long ldv_2_ldv_param_48_1_default ;
  unsigned int ldv_2_ldv_param_51_1_default ;
  unsigned int ldv_2_ldv_param_51_2_default ;
  struct urb *ldv_2_resource_struct_urb_ptr ;
  struct tty_struct *ldv_2_resource_tty_struct ;
  struct usb_serial *ldv_2_resource_usb_serial ;
  struct usb_serial_port *ldv_2_resource_usb_serial_port ;
  int (*ldv_2_rest_line_attached_callbacks_chars_in_buffer)(struct tty_struct * ) ;
  void (*ldv_2_rest_line_attached_callbacks_dtr_rts)(struct usb_serial_port * , int ) ;
  void (*ldv_2_rest_line_attached_callbacks_read_int_callback)(struct urb * ) ;
  void (*ldv_2_rest_line_attached_callbacks_set_termios)(struct tty_struct * , struct usb_serial_port * ,
                                                         struct ktermios * ) ;
  void (*ldv_2_rest_line_attached_callbacks_throttle)(struct tty_struct * ) ;
  int (*ldv_2_rest_line_attached_callbacks_tiocmget)(struct tty_struct * ) ;
  int (*ldv_2_rest_line_attached_callbacks_tiocmiwait)(struct tty_struct * , size_t ) ;
  int (*ldv_2_rest_line_attached_callbacks_tiocmset)(struct tty_struct * , speed_t ,
                                                     speed_t ) ;
  void (*ldv_2_rest_line_attached_callbacks_unthrottle)(struct tty_struct * ) ;
  void (*ldv_2_rest_line_attached_callbacks_write_int_callback)(struct urb * ) ;
  int (*ldv_2_rest_line_attached_callbacks_write_room)(struct tty_struct * ) ;
  int ldv_2_ret_default ;
  struct usb_device_id *ldv_2_usb_device_id_usb_device_id ;
  struct ldv_struct_usb_serial_scenario_2 *data ;
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
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  void *tmp___33 ;
  void *tmp___34 ;
  void *tmp___35 ;
  {
  {
  data = (struct ldv_struct_usb_serial_scenario_2 *)arg0;
  tmp = external_allocated_data();
  ldv_2_driver_usb_serial_driver = (struct usb_serial_driver *)tmp;
  tmp___0 = external_allocated_data();
  ldv_2_ldv_param_33_2_default = (unsigned char *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_2_ldv_param_34_2_default = (unsigned char *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_2_ldv_param_43_2_default = (struct ktermios *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_2_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_2_resource_tty_struct = (struct tty_struct *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_2_resource_usb_serial = (struct usb_serial *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_2_resource_usb_serial_port = (struct usb_serial_port *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_chars_in_buffer = (int (*)(struct tty_struct * ))tmp___7;
  tmp___8 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_dtr_rts = (void (*)(struct usb_serial_port * ,
                                                         int ))tmp___8;
  tmp___9 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_read_int_callback = (void (*)(struct urb * ))tmp___9;
  tmp___10 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_set_termios = (void (*)(struct tty_struct * ,
                                                             struct usb_serial_port * ,
                                                             struct ktermios * ))tmp___10;
  tmp___11 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_throttle = (void (*)(struct tty_struct * ))tmp___11;
  tmp___12 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_tiocmget = (int (*)(struct tty_struct * ))tmp___12;
  tmp___13 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_tiocmiwait = (int (*)(struct tty_struct * , size_t ))tmp___13;
  tmp___14 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_tiocmset = (int (*)(struct tty_struct * , speed_t ,
                                                         speed_t ))tmp___14;
  tmp___15 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_unthrottle = (void (*)(struct tty_struct * ))tmp___15;
  tmp___16 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_write_int_callback = (void (*)(struct urb * ))tmp___16;
  tmp___17 = external_allocated_data();
  ldv_2_rest_line_attached_callbacks_write_room = (int (*)(struct tty_struct * ))tmp___17;
  ldv_2_ret_default = ldv_undef_int();
  tmp___18 = external_allocated_data();
  ldv_2_usb_device_id_usb_device_id = (struct usb_device_id *)tmp___18;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_serial_scenario_2 *)0)) {
    {
    ldv_2_usb_device_id_usb_device_id = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___23 = ldv_undef_int();
  }
  if (tmp___23 != 0) {
    return ((void *)0);
  } else {
    {
    tmp___19 = ldv_xmalloc_unknown_size(0UL);
    ldv_2_resource_struct_urb_ptr = (struct urb *)tmp___19;
    tmp___20 = ldv_xmalloc(1736UL);
    ldv_2_resource_tty_struct = (struct tty_struct *)tmp___20;
    tmp___21 = ldv_xmalloc(280UL);
    ldv_2_resource_usb_serial = (struct usb_serial *)tmp___21;
    tmp___22 = ldv_xmalloc(3000UL);
    ldv_2_resource_usb_serial_port = (struct usb_serial_port *)tmp___22;
    }
    goto ldv_insert_device_2;
  }
  return ((void *)0);
  ldv_insert_device_2:
  {
  tmp___26 = ldv_undef_int();
  }
  if (tmp___26 != 0) {
    {
    tmp___25 = ldv_undef_int();
    }
    if (tmp___25 != 0) {
      {
      __VERIFIER_assume(ldv_2_ret_default == 0);
      tmp___24 = ldv_undef_int();
      }
      if (tmp___24 != 0) {
        {
        __VERIFIER_assume(ldv_2_ret_default == 0);
        }
        goto ldv_main_workflow_2;
      } else {
        {
        __VERIFIER_assume(ldv_2_ret_default != 0);
        }
        goto ldv_insert_device_2;
      }
    } else {
      {
      __VERIFIER_assume(ldv_2_ret_default != 0);
      }
      goto ldv_insert_device_2;
    }
  } else {
    {
    ldv_free((void *)ldv_2_resource_struct_urb_ptr);
    ldv_free((void *)ldv_2_resource_tty_struct);
    ldv_free((void *)ldv_2_resource_usb_serial);
    ldv_free((void *)ldv_2_resource_usb_serial_port);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_main_workflow_2:
  {
  tmp___27 = ldv_undef_int();
  }
  {
  if (tmp___27 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___27 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___27 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___27 == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___29 = ldv_undef_int();
  }
  if (tmp___29 != 0) {
    {
    __VERIFIER_assume(ldv_2_ret_default == 0);
    tmp___28 = ldv_undef_int();
    }
    if (tmp___28 != 0) {
      goto ldv_main_workflow_2;
    } else {
      goto ldv_main_workflow_2;
    }
  } else {
    {
    __VERIFIER_assume(ldv_2_ret_default != 0);
    }
    goto ldv_main_workflow_2;
  }
  case_2:
  {
  ldv_2_ret_default = ldv_usb_serial_scenario_port_probe_2_23(ldv_2_driver_usb_serial_driver->port_probe,
                                                              ldv_2_resource_usb_serial_port);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  tmp___30 = ldv_undef_int();
  }
  if (tmp___30 != 0) {
    {
    __VERIFIER_assume(ldv_2_ret_default == 0);
    ldv_usb_serial_scenario_port_remove_2_21(ldv_2_driver_usb_serial_driver->port_remove,
                                             ldv_2_resource_usb_serial_port);
    }
    goto ldv_main_workflow_2;
  } else {
    {
    __VERIFIER_assume(ldv_2_ret_default != 0);
    }
    goto ldv_main_workflow_2;
  }
  case_3:
  {
  ldv_usb_serial_scenario_open_2_19(ldv_2_driver_usb_serial_driver->open, ldv_2_resource_tty_struct,
                                    ldv_2_resource_usb_serial_port);
  tmp___31 = ldv_undef_int();
  }
  if (tmp___31 != 0) {
    {
    __VERIFIER_assume(ldv_2_ret_default == 0);
    }
    goto ldv_tty_layer_2;
  } else {
    {
    __VERIFIER_assume(ldv_2_ret_default != 0);
    }
    goto ldv_main_workflow_2;
  }
  case_4: ;
  goto ldv_insert_device_2;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
  ldv_tty_layer_2:
  {
  tmp___32 = ldv_undef_int();
  }
  {
  if (tmp___32 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___32 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___32 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___32 == 4) {
    goto case_4___0;
  } else {
  }
  if (tmp___32 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___32 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___32 == 7) {
    goto case_7;
  } else {
  }
  if (tmp___32 == 8) {
    goto case_8;
  } else {
  }
  if (tmp___32 == 9) {
    goto case_9;
  } else {
  }
  if (tmp___32 == 10) {
    goto case_10;
  } else {
  }
  if (tmp___32 == 11) {
    goto case_11;
  } else {
  }
  if (tmp___32 == 12) {
    goto case_12;
  } else {
  }
  if (tmp___32 == 13) {
    goto case_13;
  } else {
  }
  if (tmp___32 == 14) {
    goto case_14;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  {
  tmp___33 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_34_2_default = (unsigned char *)tmp___33;
  ldv_switch_to_interrupt_context();
  ldv_usb_serial_scenario_irq_write_2_34((int (*)(struct tty_struct * , struct usb_serial_port * ,
                                                  unsigned char * , int ))ldv_2_driver_usb_serial_driver->write,
                                         ldv_2_resource_tty_struct, ldv_2_resource_usb_serial_port,
                                         ldv_2_ldv_param_34_2_default, ldv_2_ldv_param_34_3_default);
  ldv_switch_to_process_context();
  ldv_free((void *)ldv_2_ldv_param_34_2_default);
  }
  goto ldv_tty_layer_2;
  case_2___0:
  {
  tmp___34 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_33_2_default = (unsigned char *)tmp___34;
  ldv_usb_serial_scenario_write_2_33((int (*)(struct tty_struct * , struct usb_serial_port * ,
                                              unsigned char * , int ))ldv_2_driver_usb_serial_driver->write,
                                     ldv_2_resource_tty_struct, ldv_2_resource_usb_serial_port,
                                     ldv_2_ldv_param_33_2_default, ldv_2_ldv_param_33_3_default);
  ldv_free((void *)ldv_2_ldv_param_33_2_default);
  }
  goto ldv_tty_layer_2;
  case_3___0:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_56(ldv_2_rest_line_attached_callbacks_write_room,
                                                            ldv_2_resource_tty_struct);
  }
  goto ldv_tty_layer_2;
  case_4___0:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_55(ldv_2_rest_line_attached_callbacks_write_int_callback,
                                                            ldv_2_resource_struct_urb_ptr);
  }
  goto ldv_tty_layer_2;
  case_5:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_54(ldv_2_rest_line_attached_callbacks_unthrottle,
                                                            ldv_2_resource_tty_struct);
  }
  goto ldv_tty_layer_2;
  case_6:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_51(ldv_2_rest_line_attached_callbacks_tiocmset,
                                                            ldv_2_resource_tty_struct,
                                                            ldv_2_ldv_param_51_1_default,
                                                            ldv_2_ldv_param_51_2_default);
  }
  goto ldv_tty_layer_2;
  case_7:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_48(ldv_2_rest_line_attached_callbacks_tiocmiwait,
                                                            ldv_2_resource_tty_struct,
                                                            ldv_2_ldv_param_48_1_default);
  }
  goto ldv_tty_layer_2;
  case_8:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_47(ldv_2_rest_line_attached_callbacks_tiocmget,
                                                            ldv_2_resource_tty_struct);
  }
  goto ldv_tty_layer_2;
  case_9:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_46(ldv_2_rest_line_attached_callbacks_throttle,
                                                            ldv_2_resource_tty_struct);
  }
  goto ldv_tty_layer_2;
  case_10:
  {
  tmp___35 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_43_2_default = (struct ktermios *)tmp___35;
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_43(ldv_2_rest_line_attached_callbacks_set_termios,
                                                            ldv_2_resource_tty_struct,
                                                            ldv_2_resource_usb_serial_port,
                                                            ldv_2_ldv_param_43_2_default);
  ldv_free((void *)ldv_2_ldv_param_43_2_default);
  }
  goto ldv_tty_layer_2;
  case_11:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_42(ldv_2_rest_line_attached_callbacks_read_int_callback,
                                                            ldv_2_resource_struct_urb_ptr);
  }
  goto ldv_tty_layer_2;
  case_12:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_39(ldv_2_rest_line_attached_callbacks_dtr_rts,
                                                            ldv_2_resource_usb_serial_port,
                                                            ldv_2_ldv_param_39_1_default);
  }
  goto ldv_tty_layer_2;
  case_13:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_2_32(ldv_2_rest_line_attached_callbacks_chars_in_buffer,
                                                            ldv_2_resource_tty_struct);
  }
  goto ldv_tty_layer_2;
  case_14:
  {
  ldv_usb_serial_scenario_close_2_30(ldv_2_driver_usb_serial_driver->close, ldv_2_resource_usb_serial_port);
  }
  goto ldv_main_workflow_2;
  switch_default___0:
  {
  __VERIFIER_assume(0);
  }
  switch_break___0: ;
  }
  return ((void *)0);
}
}
void *ldv_usb_serial_scenario_3(void *arg0 )
{
  struct usb_serial_driver *ldv_3_driver_usb_serial_driver ;
  unsigned char *ldv_3_ldv_param_33_2_default ;
  int ldv_3_ldv_param_33_3_default ;
  unsigned char *ldv_3_ldv_param_34_2_default ;
  int ldv_3_ldv_param_34_3_default ;
  int ldv_3_ldv_param_39_1_default ;
  struct ktermios *ldv_3_ldv_param_43_2_default ;
  unsigned long ldv_3_ldv_param_48_1_default ;
  unsigned int ldv_3_ldv_param_51_1_default ;
  unsigned int ldv_3_ldv_param_51_2_default ;
  struct urb *ldv_3_resource_struct_urb_ptr ;
  struct tty_struct *ldv_3_resource_tty_struct ;
  struct usb_serial *ldv_3_resource_usb_serial ;
  struct usb_serial_port *ldv_3_resource_usb_serial_port ;
  int (*ldv_3_rest_line_attached_callbacks_chars_in_buffer)(struct tty_struct * ) ;
  void (*ldv_3_rest_line_attached_callbacks_dtr_rts)(struct usb_serial_port * , int ) ;
  void (*ldv_3_rest_line_attached_callbacks_read_int_callback)(struct urb * ) ;
  void (*ldv_3_rest_line_attached_callbacks_set_termios)(struct tty_struct * , struct usb_serial_port * ,
                                                         struct ktermios * ) ;
  void (*ldv_3_rest_line_attached_callbacks_throttle)(struct tty_struct * ) ;
  int (*ldv_3_rest_line_attached_callbacks_tiocmget)(struct tty_struct * ) ;
  int (*ldv_3_rest_line_attached_callbacks_tiocmiwait)(struct tty_struct * , size_t ) ;
  int (*ldv_3_rest_line_attached_callbacks_tiocmset)(struct tty_struct * , speed_t ,
                                                     speed_t ) ;
  void (*ldv_3_rest_line_attached_callbacks_unthrottle)(struct tty_struct * ) ;
  void (*ldv_3_rest_line_attached_callbacks_write_int_callback)(struct urb * ) ;
  int (*ldv_3_rest_line_attached_callbacks_write_room)(struct tty_struct * ) ;
  int ldv_3_ret_default ;
  struct usb_device_id *ldv_3_usb_device_id_usb_device_id ;
  struct ldv_struct_usb_serial_scenario_2 *data ;
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
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  void *tmp___33 ;
  void *tmp___34 ;
  void *tmp___35 ;
  {
  {
  data = (struct ldv_struct_usb_serial_scenario_2 *)arg0;
  tmp = external_allocated_data();
  ldv_3_driver_usb_serial_driver = (struct usb_serial_driver *)tmp;
  tmp___0 = external_allocated_data();
  ldv_3_ldv_param_33_2_default = (unsigned char *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_3_ldv_param_34_2_default = (unsigned char *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_3_ldv_param_43_2_default = (struct ktermios *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_3_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_3_resource_tty_struct = (struct tty_struct *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_3_resource_usb_serial = (struct usb_serial *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_3_resource_usb_serial_port = (struct usb_serial_port *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_chars_in_buffer = (int (*)(struct tty_struct * ))tmp___7;
  tmp___8 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_dtr_rts = (void (*)(struct usb_serial_port * ,
                                                         int ))tmp___8;
  tmp___9 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_read_int_callback = (void (*)(struct urb * ))tmp___9;
  tmp___10 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_set_termios = (void (*)(struct tty_struct * ,
                                                             struct usb_serial_port * ,
                                                             struct ktermios * ))tmp___10;
  tmp___11 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_throttle = (void (*)(struct tty_struct * ))tmp___11;
  tmp___12 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_tiocmget = (int (*)(struct tty_struct * ))tmp___12;
  tmp___13 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_tiocmiwait = (int (*)(struct tty_struct * , size_t ))tmp___13;
  tmp___14 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_tiocmset = (int (*)(struct tty_struct * , speed_t ,
                                                         speed_t ))tmp___14;
  tmp___15 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_unthrottle = (void (*)(struct tty_struct * ))tmp___15;
  tmp___16 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_write_int_callback = (void (*)(struct urb * ))tmp___16;
  tmp___17 = external_allocated_data();
  ldv_3_rest_line_attached_callbacks_write_room = (int (*)(struct tty_struct * ))tmp___17;
  ldv_3_ret_default = ldv_undef_int();
  tmp___18 = external_allocated_data();
  ldv_3_usb_device_id_usb_device_id = (struct usb_device_id *)tmp___18;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_serial_scenario_2 *)0)) {
    {
    ldv_3_usb_device_id_usb_device_id = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___23 = ldv_undef_int();
  }
  if (tmp___23 != 0) {
    return ((void *)0);
  } else {
    {
    tmp___19 = ldv_xmalloc_unknown_size(0UL);
    ldv_3_resource_struct_urb_ptr = (struct urb *)tmp___19;
    tmp___20 = ldv_xmalloc(1736UL);
    ldv_3_resource_tty_struct = (struct tty_struct *)tmp___20;
    tmp___21 = ldv_xmalloc(280UL);
    ldv_3_resource_usb_serial = (struct usb_serial *)tmp___21;
    tmp___22 = ldv_xmalloc(3000UL);
    ldv_3_resource_usb_serial_port = (struct usb_serial_port *)tmp___22;
    }
    goto ldv_insert_device_3;
  }
  return ((void *)0);
  ldv_insert_device_3:
  {
  tmp___26 = ldv_undef_int();
  }
  if (tmp___26 != 0) {
    {
    tmp___25 = ldv_undef_int();
    }
    if (tmp___25 != 0) {
      {
      __VERIFIER_assume(ldv_3_ret_default == 0);
      tmp___24 = ldv_undef_int();
      }
      if (tmp___24 != 0) {
        {
        __VERIFIER_assume(ldv_3_ret_default == 0);
        }
        goto ldv_main_workflow_3;
      } else {
        {
        __VERIFIER_assume(ldv_3_ret_default != 0);
        }
        goto ldv_insert_device_3;
      }
    } else {
      {
      __VERIFIER_assume(ldv_3_ret_default != 0);
      }
      goto ldv_insert_device_3;
    }
  } else {
    {
    ldv_free((void *)ldv_3_resource_struct_urb_ptr);
    ldv_free((void *)ldv_3_resource_tty_struct);
    ldv_free((void *)ldv_3_resource_usb_serial);
    ldv_free((void *)ldv_3_resource_usb_serial_port);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_main_workflow_3:
  {
  tmp___27 = ldv_undef_int();
  }
  {
  if (tmp___27 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___27 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___27 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___27 == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___29 = ldv_undef_int();
  }
  if (tmp___29 != 0) {
    {
    __VERIFIER_assume(ldv_3_ret_default == 0);
    tmp___28 = ldv_undef_int();
    }
    if (tmp___28 != 0) {
      goto ldv_main_workflow_3;
    } else {
      goto ldv_main_workflow_3;
    }
  } else {
    {
    __VERIFIER_assume(ldv_3_ret_default != 0);
    }
    goto ldv_main_workflow_3;
  }
  case_2:
  {
  ldv_3_ret_default = ldv_usb_serial_scenario_port_probe_3_23(ldv_3_driver_usb_serial_driver->port_probe,
                                                              ldv_3_resource_usb_serial_port);
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  tmp___30 = ldv_undef_int();
  }
  if (tmp___30 != 0) {
    {
    __VERIFIER_assume(ldv_3_ret_default == 0);
    ldv_usb_serial_scenario_port_remove_3_21(ldv_3_driver_usb_serial_driver->port_remove,
                                             ldv_3_resource_usb_serial_port);
    }
    goto ldv_main_workflow_3;
  } else {
    {
    __VERIFIER_assume(ldv_3_ret_default != 0);
    }
    goto ldv_main_workflow_3;
  }
  case_3:
  {
  ldv_usb_serial_scenario_open_3_19(ldv_3_driver_usb_serial_driver->open, ldv_3_resource_tty_struct,
                                    ldv_3_resource_usb_serial_port);
  tmp___31 = ldv_undef_int();
  }
  if (tmp___31 != 0) {
    {
    __VERIFIER_assume(ldv_3_ret_default == 0);
    }
    goto ldv_tty_layer_3;
  } else {
    {
    __VERIFIER_assume(ldv_3_ret_default != 0);
    }
    goto ldv_main_workflow_3;
  }
  case_4: ;
  goto ldv_insert_device_3;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
  ldv_tty_layer_3:
  {
  tmp___32 = ldv_undef_int();
  }
  {
  if (tmp___32 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___32 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___32 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___32 == 4) {
    goto case_4___0;
  } else {
  }
  if (tmp___32 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___32 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___32 == 7) {
    goto case_7;
  } else {
  }
  if (tmp___32 == 8) {
    goto case_8;
  } else {
  }
  if (tmp___32 == 9) {
    goto case_9;
  } else {
  }
  if (tmp___32 == 10) {
    goto case_10;
  } else {
  }
  if (tmp___32 == 11) {
    goto case_11;
  } else {
  }
  if (tmp___32 == 12) {
    goto case_12;
  } else {
  }
  if (tmp___32 == 13) {
    goto case_13;
  } else {
  }
  if (tmp___32 == 14) {
    goto case_14;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  {
  tmp___33 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_ldv_param_34_2_default = (unsigned char *)tmp___33;
  ldv_switch_to_interrupt_context();
  ldv_usb_serial_scenario_irq_write_3_34((int (*)(struct tty_struct * , struct usb_serial_port * ,
                                                  unsigned char * , int ))ldv_3_driver_usb_serial_driver->write,
                                         ldv_3_resource_tty_struct, ldv_3_resource_usb_serial_port,
                                         ldv_3_ldv_param_34_2_default, ldv_3_ldv_param_34_3_default);
  ldv_switch_to_process_context();
  ldv_free((void *)ldv_3_ldv_param_34_2_default);
  }
  goto ldv_tty_layer_3;
  case_2___0:
  {
  tmp___34 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_ldv_param_33_2_default = (unsigned char *)tmp___34;
  ldv_usb_serial_scenario_write_3_33((int (*)(struct tty_struct * , struct usb_serial_port * ,
                                              unsigned char * , int ))ldv_3_driver_usb_serial_driver->write,
                                     ldv_3_resource_tty_struct, ldv_3_resource_usb_serial_port,
                                     ldv_3_ldv_param_33_2_default, ldv_3_ldv_param_33_3_default);
  ldv_free((void *)ldv_3_ldv_param_33_2_default);
  }
  goto ldv_tty_layer_3;
  case_3___0:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_56(ldv_3_rest_line_attached_callbacks_write_room,
                                                            ldv_3_resource_tty_struct);
  }
  goto ldv_tty_layer_3;
  case_4___0:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_55(ldv_3_rest_line_attached_callbacks_write_int_callback,
                                                            ldv_3_resource_struct_urb_ptr);
  }
  goto ldv_tty_layer_3;
  case_5:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_54(ldv_3_rest_line_attached_callbacks_unthrottle,
                                                            ldv_3_resource_tty_struct);
  }
  goto ldv_tty_layer_3;
  case_6:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_51(ldv_3_rest_line_attached_callbacks_tiocmset,
                                                            ldv_3_resource_tty_struct,
                                                            ldv_3_ldv_param_51_1_default,
                                                            ldv_3_ldv_param_51_2_default);
  }
  goto ldv_tty_layer_3;
  case_7:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_48(ldv_3_rest_line_attached_callbacks_tiocmiwait,
                                                            ldv_3_resource_tty_struct,
                                                            ldv_3_ldv_param_48_1_default);
  }
  goto ldv_tty_layer_3;
  case_8:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_47(ldv_3_rest_line_attached_callbacks_tiocmget,
                                                            ldv_3_resource_tty_struct);
  }
  goto ldv_tty_layer_3;
  case_9:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_46(ldv_3_rest_line_attached_callbacks_throttle,
                                                            ldv_3_resource_tty_struct);
  }
  goto ldv_tty_layer_3;
  case_10:
  {
  tmp___35 = ldv_xmalloc_unknown_size(0UL);
  ldv_3_ldv_param_43_2_default = (struct ktermios *)tmp___35;
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_43(ldv_3_rest_line_attached_callbacks_set_termios,
                                                            ldv_3_resource_tty_struct,
                                                            ldv_3_resource_usb_serial_port,
                                                            ldv_3_ldv_param_43_2_default);
  ldv_free((void *)ldv_3_ldv_param_43_2_default);
  }
  goto ldv_tty_layer_3;
  case_11:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_42(ldv_3_rest_line_attached_callbacks_read_int_callback,
                                                            ldv_3_resource_struct_urb_ptr);
  }
  goto ldv_tty_layer_3;
  case_12:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_39(ldv_3_rest_line_attached_callbacks_dtr_rts,
                                                            ldv_3_resource_usb_serial_port,
                                                            ldv_3_ldv_param_39_1_default);
  }
  goto ldv_tty_layer_3;
  case_13:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_3_32(ldv_3_rest_line_attached_callbacks_chars_in_buffer,
                                                            ldv_3_resource_tty_struct);
  }
  goto ldv_tty_layer_3;
  case_14:
  {
  ldv_usb_serial_scenario_close_3_30(ldv_3_driver_usb_serial_driver->close, ldv_3_resource_usb_serial_port);
  }
  goto ldv_main_workflow_3;
  switch_default___0:
  {
  __VERIFIER_assume(0);
  }
  switch_break___0: ;
  }
  return ((void *)0);
}
}
void *ldv_usb_serial_scenario_4(void *arg0 )
{
  struct usb_serial_driver *ldv_4_driver_usb_serial_driver ;
  unsigned char *ldv_4_ldv_param_33_2_default ;
  int ldv_4_ldv_param_33_3_default ;
  unsigned char *ldv_4_ldv_param_34_2_default ;
  int ldv_4_ldv_param_34_3_default ;
  int ldv_4_ldv_param_39_1_default ;
  struct ktermios *ldv_4_ldv_param_43_2_default ;
  unsigned long ldv_4_ldv_param_48_1_default ;
  unsigned int ldv_4_ldv_param_51_1_default ;
  unsigned int ldv_4_ldv_param_51_2_default ;
  struct urb *ldv_4_resource_struct_urb_ptr ;
  struct tty_struct *ldv_4_resource_tty_struct ;
  struct usb_serial *ldv_4_resource_usb_serial ;
  struct usb_serial_port *ldv_4_resource_usb_serial_port ;
  int (*ldv_4_rest_line_attached_callbacks_chars_in_buffer)(struct tty_struct * ) ;
  void (*ldv_4_rest_line_attached_callbacks_dtr_rts)(struct usb_serial_port * , int ) ;
  void (*ldv_4_rest_line_attached_callbacks_read_int_callback)(struct urb * ) ;
  void (*ldv_4_rest_line_attached_callbacks_set_termios)(struct tty_struct * , struct usb_serial_port * ,
                                                         struct ktermios * ) ;
  void (*ldv_4_rest_line_attached_callbacks_throttle)(struct tty_struct * ) ;
  int (*ldv_4_rest_line_attached_callbacks_tiocmget)(struct tty_struct * ) ;
  int (*ldv_4_rest_line_attached_callbacks_tiocmiwait)(struct tty_struct * , size_t ) ;
  int (*ldv_4_rest_line_attached_callbacks_tiocmset)(struct tty_struct * , speed_t ,
                                                     speed_t ) ;
  void (*ldv_4_rest_line_attached_callbacks_unthrottle)(struct tty_struct * ) ;
  void (*ldv_4_rest_line_attached_callbacks_write_int_callback)(struct urb * ) ;
  int (*ldv_4_rest_line_attached_callbacks_write_room)(struct tty_struct * ) ;
  int ldv_4_ret_default ;
  struct usb_device_id *ldv_4_usb_device_id_usb_device_id ;
  struct ldv_struct_usb_serial_scenario_2 *data ;
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
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  void *tmp___33 ;
  void *tmp___34 ;
  void *tmp___35 ;
  {
  {
  data = (struct ldv_struct_usb_serial_scenario_2 *)arg0;
  tmp = external_allocated_data();
  ldv_4_driver_usb_serial_driver = (struct usb_serial_driver *)tmp;
  tmp___0 = external_allocated_data();
  ldv_4_ldv_param_33_2_default = (unsigned char *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_4_ldv_param_34_2_default = (unsigned char *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_4_ldv_param_43_2_default = (struct ktermios *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_4_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_4_resource_tty_struct = (struct tty_struct *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_4_resource_usb_serial = (struct usb_serial *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_4_resource_usb_serial_port = (struct usb_serial_port *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_chars_in_buffer = (int (*)(struct tty_struct * ))tmp___7;
  tmp___8 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_dtr_rts = (void (*)(struct usb_serial_port * ,
                                                         int ))tmp___8;
  tmp___9 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_read_int_callback = (void (*)(struct urb * ))tmp___9;
  tmp___10 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_set_termios = (void (*)(struct tty_struct * ,
                                                             struct usb_serial_port * ,
                                                             struct ktermios * ))tmp___10;
  tmp___11 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_throttle = (void (*)(struct tty_struct * ))tmp___11;
  tmp___12 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_tiocmget = (int (*)(struct tty_struct * ))tmp___12;
  tmp___13 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_tiocmiwait = (int (*)(struct tty_struct * , size_t ))tmp___13;
  tmp___14 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_tiocmset = (int (*)(struct tty_struct * , speed_t ,
                                                         speed_t ))tmp___14;
  tmp___15 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_unthrottle = (void (*)(struct tty_struct * ))tmp___15;
  tmp___16 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_write_int_callback = (void (*)(struct urb * ))tmp___16;
  tmp___17 = external_allocated_data();
  ldv_4_rest_line_attached_callbacks_write_room = (int (*)(struct tty_struct * ))tmp___17;
  ldv_4_ret_default = ldv_undef_int();
  tmp___18 = external_allocated_data();
  ldv_4_usb_device_id_usb_device_id = (struct usb_device_id *)tmp___18;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_serial_scenario_2 *)0)) {
    {
    ldv_4_usb_device_id_usb_device_id = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___23 = ldv_undef_int();
  }
  if (tmp___23 != 0) {
    return ((void *)0);
  } else {
    {
    tmp___19 = ldv_xmalloc_unknown_size(0UL);
    ldv_4_resource_struct_urb_ptr = (struct urb *)tmp___19;
    tmp___20 = ldv_xmalloc(1736UL);
    ldv_4_resource_tty_struct = (struct tty_struct *)tmp___20;
    tmp___21 = ldv_xmalloc(280UL);
    ldv_4_resource_usb_serial = (struct usb_serial *)tmp___21;
    tmp___22 = ldv_xmalloc(3000UL);
    ldv_4_resource_usb_serial_port = (struct usb_serial_port *)tmp___22;
    }
    goto ldv_insert_device_4;
  }
  return ((void *)0);
  ldv_insert_device_4:
  {
  tmp___26 = ldv_undef_int();
  }
  if (tmp___26 != 0) {
    {
    tmp___25 = ldv_undef_int();
    }
    if (tmp___25 != 0) {
      {
      __VERIFIER_assume(ldv_4_ret_default == 0);
      tmp___24 = ldv_undef_int();
      }
      if (tmp___24 != 0) {
        {
        __VERIFIER_assume(ldv_4_ret_default == 0);
        }
        goto ldv_main_workflow_4;
      } else {
        {
        __VERIFIER_assume(ldv_4_ret_default != 0);
        }
        goto ldv_insert_device_4;
      }
    } else {
      {
      __VERIFIER_assume(ldv_4_ret_default != 0);
      }
      goto ldv_insert_device_4;
    }
  } else {
    {
    ldv_free((void *)ldv_4_resource_struct_urb_ptr);
    ldv_free((void *)ldv_4_resource_tty_struct);
    ldv_free((void *)ldv_4_resource_usb_serial);
    ldv_free((void *)ldv_4_resource_usb_serial_port);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_main_workflow_4:
  {
  tmp___27 = ldv_undef_int();
  }
  {
  if (tmp___27 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___27 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___27 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___27 == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___29 = ldv_undef_int();
  }
  if (tmp___29 != 0) {
    {
    __VERIFIER_assume(ldv_4_ret_default == 0);
    tmp___28 = ldv_undef_int();
    }
    if (tmp___28 != 0) {
      goto ldv_main_workflow_4;
    } else {
      goto ldv_main_workflow_4;
    }
  } else {
    {
    __VERIFIER_assume(ldv_4_ret_default != 0);
    }
    goto ldv_main_workflow_4;
  }
  case_2:
  {
  ldv_4_ret_default = ldv_usb_serial_scenario_port_probe_4_23(ldv_4_driver_usb_serial_driver->port_probe,
                                                              ldv_4_resource_usb_serial_port);
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  tmp___30 = ldv_undef_int();
  }
  if (tmp___30 != 0) {
    {
    __VERIFIER_assume(ldv_4_ret_default == 0);
    ldv_usb_serial_scenario_port_remove_4_21(ldv_4_driver_usb_serial_driver->port_remove,
                                             ldv_4_resource_usb_serial_port);
    }
    goto ldv_main_workflow_4;
  } else {
    {
    __VERIFIER_assume(ldv_4_ret_default != 0);
    }
    goto ldv_main_workflow_4;
  }
  case_3:
  {
  ldv_usb_serial_scenario_open_4_19(ldv_4_driver_usb_serial_driver->open, ldv_4_resource_tty_struct,
                                    ldv_4_resource_usb_serial_port);
  tmp___31 = ldv_undef_int();
  }
  if (tmp___31 != 0) {
    {
    __VERIFIER_assume(ldv_4_ret_default == 0);
    }
    goto ldv_tty_layer_4;
  } else {
    {
    __VERIFIER_assume(ldv_4_ret_default != 0);
    }
    goto ldv_main_workflow_4;
  }
  case_4: ;
  goto ldv_insert_device_4;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
  ldv_tty_layer_4:
  {
  tmp___32 = ldv_undef_int();
  }
  {
  if (tmp___32 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___32 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___32 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___32 == 4) {
    goto case_4___0;
  } else {
  }
  if (tmp___32 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___32 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___32 == 7) {
    goto case_7;
  } else {
  }
  if (tmp___32 == 8) {
    goto case_8;
  } else {
  }
  if (tmp___32 == 9) {
    goto case_9;
  } else {
  }
  if (tmp___32 == 10) {
    goto case_10;
  } else {
  }
  if (tmp___32 == 11) {
    goto case_11;
  } else {
  }
  if (tmp___32 == 12) {
    goto case_12;
  } else {
  }
  if (tmp___32 == 13) {
    goto case_13;
  } else {
  }
  if (tmp___32 == 14) {
    goto case_14;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  {
  tmp___33 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_34_2_default = (unsigned char *)tmp___33;
  ldv_switch_to_interrupt_context();
  ldv_usb_serial_scenario_irq_write_4_34((int (*)(struct tty_struct * , struct usb_serial_port * ,
                                                  unsigned char * , int ))ldv_4_driver_usb_serial_driver->write,
                                         ldv_4_resource_tty_struct, ldv_4_resource_usb_serial_port,
                                         ldv_4_ldv_param_34_2_default, ldv_4_ldv_param_34_3_default);
  ldv_switch_to_process_context();
  ldv_free((void *)ldv_4_ldv_param_34_2_default);
  }
  goto ldv_tty_layer_4;
  case_2___0:
  {
  tmp___34 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_33_2_default = (unsigned char *)tmp___34;
  ldv_usb_serial_scenario_write_4_33((int (*)(struct tty_struct * , struct usb_serial_port * ,
                                              unsigned char * , int ))ldv_4_driver_usb_serial_driver->write,
                                     ldv_4_resource_tty_struct, ldv_4_resource_usb_serial_port,
                                     ldv_4_ldv_param_33_2_default, ldv_4_ldv_param_33_3_default);
  ldv_free((void *)ldv_4_ldv_param_33_2_default);
  }
  goto ldv_tty_layer_4;
  case_3___0:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_56(ldv_4_rest_line_attached_callbacks_write_room,
                                                            ldv_4_resource_tty_struct);
  }
  goto ldv_tty_layer_4;
  case_4___0:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_55(ldv_4_rest_line_attached_callbacks_write_int_callback,
                                                            ldv_4_resource_struct_urb_ptr);
  }
  goto ldv_tty_layer_4;
  case_5:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_54(ldv_4_rest_line_attached_callbacks_unthrottle,
                                                            ldv_4_resource_tty_struct);
  }
  goto ldv_tty_layer_4;
  case_6:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_51(ldv_4_rest_line_attached_callbacks_tiocmset,
                                                            ldv_4_resource_tty_struct,
                                                            ldv_4_ldv_param_51_1_default,
                                                            ldv_4_ldv_param_51_2_default);
  }
  goto ldv_tty_layer_4;
  case_7:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_48(ldv_4_rest_line_attached_callbacks_tiocmiwait,
                                                            ldv_4_resource_tty_struct,
                                                            ldv_4_ldv_param_48_1_default);
  }
  goto ldv_tty_layer_4;
  case_8:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_47(ldv_4_rest_line_attached_callbacks_tiocmget,
                                                            ldv_4_resource_tty_struct);
  }
  goto ldv_tty_layer_4;
  case_9:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_46(ldv_4_rest_line_attached_callbacks_throttle,
                                                            ldv_4_resource_tty_struct);
  }
  goto ldv_tty_layer_4;
  case_10:
  {
  tmp___35 = ldv_xmalloc_unknown_size(0UL);
  ldv_4_ldv_param_43_2_default = (struct ktermios *)tmp___35;
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_43(ldv_4_rest_line_attached_callbacks_set_termios,
                                                            ldv_4_resource_tty_struct,
                                                            ldv_4_resource_usb_serial_port,
                                                            ldv_4_ldv_param_43_2_default);
  ldv_free((void *)ldv_4_ldv_param_43_2_default);
  }
  goto ldv_tty_layer_4;
  case_11:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_42(ldv_4_rest_line_attached_callbacks_read_int_callback,
                                                            ldv_4_resource_struct_urb_ptr);
  }
  goto ldv_tty_layer_4;
  case_12:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_39(ldv_4_rest_line_attached_callbacks_dtr_rts,
                                                            ldv_4_resource_usb_serial_port,
                                                            ldv_4_ldv_param_39_1_default);
  }
  goto ldv_tty_layer_4;
  case_13:
  {
  ldv_usb_serial_scenario_rest_line_attached_callbacks_4_32(ldv_4_rest_line_attached_callbacks_chars_in_buffer,
                                                            ldv_4_resource_tty_struct);
  }
  goto ldv_tty_layer_4;
  case_14:
  {
  ldv_usb_serial_scenario_close_4_30(ldv_4_driver_usb_serial_driver->close, ldv_4_resource_usb_serial_port);
  }
  goto ldv_main_workflow_4;
  switch_default___0:
  {
  __VERIFIER_assume(0);
  }
  switch_break___0: ;
  }
  return ((void *)0);
}
}
void ldv_usb_serial_scenario_close_2_30(void (*arg0)(struct usb_serial_port * ) ,
                                        struct usb_serial_port *arg1 )
{
  {
  {
  cypress_close(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_close_3_30(void (*arg0)(struct usb_serial_port * ) ,
                                        struct usb_serial_port *arg1 )
{
  {
  {
  cypress_close(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_close_4_30(void (*arg0)(struct usb_serial_port * ) ,
                                        struct usb_serial_port *arg1 )
{
  {
  {
  cypress_close(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_irq_write_2_34(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                        unsigned char * , int ) ,
                                            struct tty_struct *arg1 , struct usb_serial_port *arg2 ,
                                            unsigned char *arg3 , int arg4 )
{
  {
  {
  cypress_write(arg1, arg2, (unsigned char const *)arg3, arg4);
  }
  return;
}
}
void ldv_usb_serial_scenario_irq_write_3_34(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                        unsigned char * , int ) ,
                                            struct tty_struct *arg1 , struct usb_serial_port *arg2 ,
                                            unsigned char *arg3 , int arg4 )
{
  {
  {
  cypress_write(arg1, arg2, (unsigned char const *)arg3, arg4);
  }
  return;
}
}
void ldv_usb_serial_scenario_irq_write_4_34(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                        unsigned char * , int ) ,
                                            struct tty_struct *arg1 , struct usb_serial_port *arg2 ,
                                            unsigned char *arg3 , int arg4 )
{
  {
  {
  cypress_write(arg1, arg2, (unsigned char const *)arg3, arg4);
  }
  return;
}
}
void ldv_usb_serial_scenario_open_2_19(int (*arg0)(struct tty_struct * , struct usb_serial_port * ) ,
                                       struct tty_struct *arg1 , struct usb_serial_port *arg2 )
{
  {
  {
  cypress_open(arg1, arg2);
  }
  return;
}
}
void ldv_usb_serial_scenario_open_3_19(int (*arg0)(struct tty_struct * , struct usb_serial_port * ) ,
                                       struct tty_struct *arg1 , struct usb_serial_port *arg2 )
{
  {
  {
  cypress_open(arg1, arg2);
  }
  return;
}
}
void ldv_usb_serial_scenario_open_4_19(int (*arg0)(struct tty_struct * , struct usb_serial_port * ) ,
                                       struct tty_struct *arg1 , struct usb_serial_port *arg2 )
{
  {
  {
  cypress_open(arg1, arg2);
  }
  return;
}
}
int ldv_usb_serial_scenario_port_probe_2_23(int (*arg0)(struct usb_serial_port * ) ,
                                            struct usb_serial_port *arg1 )
{
  int tmp ;
  {
  {
  tmp = cypress_ca42v2_port_probe(arg1);
  }
  return (tmp);
}
}
int ldv_usb_serial_scenario_port_probe_3_23(int (*arg0)(struct usb_serial_port * ) ,
                                            struct usb_serial_port *arg1 )
{
  int tmp ;
  {
  {
  tmp = cypress_earthmate_port_probe(arg1);
  }
  return (tmp);
}
}
int ldv_usb_serial_scenario_port_probe_4_23(int (*arg0)(struct usb_serial_port * ) ,
                                            struct usb_serial_port *arg1 )
{
  int tmp ;
  {
  {
  tmp = cypress_hidcom_port_probe(arg1);
  }
  return (tmp);
}
}
void ldv_usb_serial_scenario_port_remove_2_21(int (*arg0)(struct usb_serial_port * ) ,
                                              struct usb_serial_port *arg1 )
{
  {
  {
  cypress_port_remove(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_port_remove_3_21(int (*arg0)(struct usb_serial_port * ) ,
                                              struct usb_serial_port *arg1 )
{
  {
  {
  cypress_port_remove(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_port_remove_4_21(int (*arg0)(struct usb_serial_port * ) ,
                                              struct usb_serial_port *arg1 )
{
  {
  {
  cypress_port_remove(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_32(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_chars_in_buffer(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_39(void (*arg0)(struct usb_serial_port * ,
                                                                            int ) ,
                                                               struct usb_serial_port *arg1 ,
                                                               int arg2 )
{
  {
  {
  cypress_dtr_rts(arg1, arg2);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_42(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 )
{
  {
  {
  cypress_read_int_callback(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_43(void (*arg0)(struct tty_struct * ,
                                                                            struct usb_serial_port * ,
                                                                            struct ktermios * ) ,
                                                               struct tty_struct *arg1 ,
                                                               struct usb_serial_port *arg2 ,
                                                               struct ktermios *arg3 )
{
  {
  {
  cypress_set_termios(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_46(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_throttle(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_47(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_tiocmget(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_48(int (*arg0)(struct tty_struct * ,
                                                                           size_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned long arg2 )
{
  {
  {
  usb_serial_generic_tiocmiwait(arg1, arg2);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_51(int (*arg0)(struct tty_struct * ,
                                                                           speed_t ,
                                                                           speed_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned int arg2 ,
                                                               unsigned int arg3 )
{
  {
  {
  cypress_tiocmset(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_54(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_unthrottle(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_55(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 )
{
  {
  {
  cypress_write_int_callback(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_2_56(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_write_room(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_32(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_chars_in_buffer(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_39(void (*arg0)(struct usb_serial_port * ,
                                                                            int ) ,
                                                               struct usb_serial_port *arg1 ,
                                                               int arg2 )
{
  {
  {
  cypress_dtr_rts(arg1, arg2);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_42(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 )
{
  {
  {
  cypress_read_int_callback(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_43(void (*arg0)(struct tty_struct * ,
                                                                            struct usb_serial_port * ,
                                                                            struct ktermios * ) ,
                                                               struct tty_struct *arg1 ,
                                                               struct usb_serial_port *arg2 ,
                                                               struct ktermios *arg3 )
{
  {
  {
  cypress_set_termios(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_46(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_throttle(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_47(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_tiocmget(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_48(int (*arg0)(struct tty_struct * ,
                                                                           size_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned long arg2 )
{
  {
  {
  usb_serial_generic_tiocmiwait(arg1, arg2);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_51(int (*arg0)(struct tty_struct * ,
                                                                           speed_t ,
                                                                           speed_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned int arg2 ,
                                                               unsigned int arg3 )
{
  {
  {
  cypress_tiocmset(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_54(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_unthrottle(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_55(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 )
{
  {
  {
  cypress_write_int_callback(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_3_56(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_write_room(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_32(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_chars_in_buffer(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_39(void (*arg0)(struct usb_serial_port * ,
                                                                            int ) ,
                                                               struct usb_serial_port *arg1 ,
                                                               int arg2 )
{
  {
  {
  cypress_dtr_rts(arg1, arg2);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_42(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 )
{
  {
  {
  cypress_read_int_callback(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_43(void (*arg0)(struct tty_struct * ,
                                                                            struct usb_serial_port * ,
                                                                            struct ktermios * ) ,
                                                               struct tty_struct *arg1 ,
                                                               struct usb_serial_port *arg2 ,
                                                               struct ktermios *arg3 )
{
  {
  {
  cypress_set_termios(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_46(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_throttle(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_47(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_tiocmget(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_48(int (*arg0)(struct tty_struct * ,
                                                                           size_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned long arg2 )
{
  {
  {
  usb_serial_generic_tiocmiwait(arg1, arg2);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_51(int (*arg0)(struct tty_struct * ,
                                                                           speed_t ,
                                                                           speed_t ) ,
                                                               struct tty_struct *arg1 ,
                                                               unsigned int arg2 ,
                                                               unsigned int arg3 )
{
  {
  {
  cypress_tiocmset(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_54(void (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_unthrottle(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_55(void (*arg0)(struct urb * ) ,
                                                               struct urb *arg1 )
{
  {
  {
  cypress_write_int_callback(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_rest_line_attached_callbacks_4_56(int (*arg0)(struct tty_struct * ) ,
                                                               struct tty_struct *arg1 )
{
  {
  {
  cypress_write_room(arg1);
  }
  return;
}
}
void ldv_usb_serial_scenario_write_2_33(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                    unsigned char * , int ) , struct tty_struct *arg1 ,
                                        struct usb_serial_port *arg2 , unsigned char *arg3 ,
                                        int arg4 )
{
  {
  {
  cypress_write(arg1, arg2, (unsigned char const *)arg3, arg4);
  }
  return;
}
}
void ldv_usb_serial_scenario_write_3_33(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                    unsigned char * , int ) , struct tty_struct *arg1 ,
                                        struct usb_serial_port *arg2 , unsigned char *arg3 ,
                                        int arg4 )
{
  {
  {
  cypress_write(arg1, arg2, (unsigned char const *)arg3, arg4);
  }
  return;
}
}
void ldv_usb_serial_scenario_write_4_33(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                    unsigned char * , int ) , struct tty_struct *arg1 ,
                                        struct usb_serial_port *arg2 , unsigned char *arg3 ,
                                        int arg4 )
{
  {
  {
  cypress_write(arg1, arg2, (unsigned char const *)arg3, arg4);
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_main_8((void *)0);
  }
  return (0);
}
}
static void *ldv_dev_get_drvdata_48(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_49(struct device *dev , void *data )
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
static void ldv___ldv_spin_lock_51(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_52(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_lock_of_cypress_private();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_53(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_55(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_57(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_60(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_62(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  spin_lock_irq(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_63(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_cypress_private();
  spin_unlock_irq(lock);
  }
  return;
}
}
static void ldv___ldv_spin_lock_64(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_66(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_68(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_71(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_74(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_76(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_78(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_80(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_82(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_84(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_86(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_88(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_90(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_92(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_94(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_100(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_103(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_105(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_107(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_110(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_cypress_private();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_usb_serial_register_drivers_112(struct usb_serial_driver * const *ldv_func_arg1 ,
                                               char const *ldv_func_arg2 , struct usb_device_id const *ldv_func_arg3 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_usb_serial_register_drivers((struct usb_serial_driver **)ldv_func_arg1,
                                            (char *)ldv_func_arg2, (struct usb_device_id *)ldv_func_arg3);
  }
  return (tmp);
}
}
static void ldv_usb_serial_deregister_drivers_113(struct usb_serial_driver * const *ldv_func_arg1 )
{
  {
  {
  ldv_emg_usb_serial_deregister_drivers((struct usb_serial_driver **)ldv_func_arg1);
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
pthread_mutex_t smutex_lock_of_cypress_private ;
void ldv_spin_lock_lock_of_cypress_private(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_cypress_private);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_cypress_private(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_cypress_private);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_cypress_private(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_cypress_private);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_cypress_private(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_cypress_private(void)
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
int ldv_spin_can_lock_lock_of_cypress_private(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_cypress_private();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_cypress_private(void)
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
int ldv_atomic_dec_and_lock_lock_of_cypress_private(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_cypress_private();
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
