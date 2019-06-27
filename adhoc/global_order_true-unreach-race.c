extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

#define assert(e) { if(!(e)) { ERROR: __VERIFIER_error();(void)0; } }

int x=0;
int y=0;

extern int lock();
extern int unlock();

int writer(void* arg) {
  y=3;
  lock();
  x=1;
  unlock();
}

int main() {

  pthread_t t1;
  pthread_create(&t1, 0, &writer, 0);
  int a = 0;
  do {
    lock();
    a=x;
    unlock();
  } while(a!=1);

  y = 5;
  assert (y==5); 

}