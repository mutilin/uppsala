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
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
extern int pthread_create (pthread_t *__restrict __newthread,
      __const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg);
extern int pthread_join (pthread_t __th, void **__thread_return);
extern int pthread_mutex_trylock (pthread_mutex_t *__mutex);
extern int pthread_mutex_lock (pthread_mutex_t *__mutex);
extern int pthread_mutex_unlock (pthread_mutex_t *__mutex);
extern int __VERIFIER_nondet_int();

struct net_device {
    int x;
};

struct platform_device {
    struct net_device *netdev;
    int field;
};

int writer(void* arg) {
    struct platform_device *pdev = (struct platform_device*) arg;
    int a = pdev->field;
    g = a + 1;
}

pthread_t t1;
int g;

int func() {
    return 0;
}

void probe(struct platform_device *pdev) {
    struct net_device *ndev = malloc(sizeof (struct net_device));
    pdev->netdev = ndev;
    ndev->x = 1;
    pdev->field = 2;
    func();
    pthread_create(&t1, 0, writer, pdev);
}

void disconnect(struct platform_device *pdev) {
    void* ret;
    if (pdev->netdev != 0) {
      free(pdev->netdev);
      pthread_join(&t1, ret);
    }
}

int main() {
    struct platform_device *pdev = malloc(sizeof (struct platform_device));
    while (1) {
      probe(pdev);
      disconnect(pdev);
      if (__VERIFIER_nondet_int()) {
          break;
      }
    }
}