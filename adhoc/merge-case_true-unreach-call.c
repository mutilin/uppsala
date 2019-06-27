extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

#define assert(e) { if(!(e)) { ERROR: __VERIFIER_error();(void)0; } }

int state = 0;

void* thr2(void* arg) {
  assert(state != 3);
}

void* thr1(void* arg) {  
    if (__VERIFIER_nondet_int()) {
        state = 1;
    } else {
        state = 2;
    }
}

int main()
{
  pthread_t t;

  pthread_create(&t, 0, thr1, 0);
  thr2(0);

  return 0;
}

