#include <pthread.h>

extern void __VERIFIER_error() __attribute__ ((__noreturn__));
int __VERIFIER_nondet_int(void);
void ldv_assert(int expression) { if (!expression) { ERROR: __VERIFIER_error();}; return; }

pthread_t t1;
pthread_mutex_t mutex;
int pdev;
int init;
int a = 1;

void *thread1(void *arg) {
   a = 1;
}

void *thread2(void *arg) {
   a = 2;
}

int main(void) {
    pthread_t t1, t2;
    for (int i = 1; i < 100; i++) {
      pthread_create(&t1, NULL, thread1, NULL);
      pthread_create(&t2, NULL, thread2, NULL);
    }
    ldv_assert(a < 5); 
    return 0;
}
