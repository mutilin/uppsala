#include <pthread.h>

extern void __VERIFIER_error() __attribute__ ((__noreturn__));
int __VERIFIER_nondet_int(void);
void ldv_assert(int expression) { if (!expression) { ERROR: __VERIFIER_error();}; return; }

pthread_t t1;
pthread_mutex_t mutex;
int pdev;
int init;

void *thread1(void *arg) {
   pthread_mutex_lock(&mutex);
   if (init ==0) {
       return;
   }
   pthread_mutex_unlock(&mutex);
   pdev = 6;
   ldv_assert(pdev==6);
}

void *thread2(void *arg) {
   if (init == 0) {
        pdev = 1;
        init = 1;
   }
}

int main(void) {
    pthread_t t1, t2;
    pthread_create(&t1, NULL, thread1, NULL);
    pthread_create(&t2, NULL, thread2, NULL);
    return 0;
}
