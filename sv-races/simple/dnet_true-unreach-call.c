typedef unsigned long size_t;
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_error();

extern void* malloc(size_t size);

typedef unsigned long int pthread_t;
typedef union
{
  char __size[56];
  long int __align;
} pthread_attr_t;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;
    unsigned int __nusers;
    int __kind;
    int __spins;
    __pthread_list_t __list;
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

extern int pthread_create (pthread_t *__restrict __newthread,
      __const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));
extern int pthread_join (pthread_t __th, void **__thread_return);

struct driver {
    int field;
    int driver_data;
};

struct device {
    int x;
    struct driver* driver;
};

int global = 0;
pthread_t thread1, thread2;

void ldv_assert(int expr )
{
  if (expr == 0) {
    __VERIFIER_error();
  }
  return;
}

int writer(void* arg) {
    int tmp = global + 1;
    ldv_assert(tmp == 2);
}

int probe(struct device *dev) {
	int r = __VERIFIER_nondet_int();
    dev->driver = malloc(sizeof(struct driver)); 
    global = 1;

    if (!r) {
	    pthread_create(&thread1, 0, writer, 0);
    }
    return r;
}

int remove(struct device *dev) {
	int r = __VERIFIER_nondet_int();
    if (dev != 0) {
        struct driver *drv = dev->driver;
        if (drv != 0) {
            free(drv);
            dev->driver = 0;
	        pthread_join(&thread1, 0);
        }
    } 
}

int main() {
    int ret;
    struct device *ldv_device = calloc(sizeof(struct device), 1); 

    while(__VERIFIER_nondet_int()) {
        ret = probe(ldv_device);
        if (!ret) {
            remove(ldv_device);
        }
    }
}