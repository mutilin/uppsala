extern void __VERIFIER_assume(int);
extern void __VERIFIER_error() __attribute__ ((__noreturn__));

#include <pthread.h>

#define assume(e) __VERIFIER_assume(e)
#define assert(e) { if(!(e)) { ERROR: __VERIFIER_error();(void)0; } }

int gcLevel=0;
int state = 0;
int __COUNT__ =0;
pthread_mutex_t mutex;

void js_MarkAtom()
{
    assert(__COUNT__ == 0 );
}

void* thr2(void* arg) {
  gcLevel=1;

  if (state == 1) {
      gcLevel = 0;
      return;
  }

  js_MarkAtom();

  return 0;
}

void js_UnpinPinnedAtom()
{
	__COUNT__ = 1;
}

void* thr1(void* arg) { 
  state = 1;
  while (gcLevel>0) {};
  js_UnpinPinnedAtom();
  return 0;
}

int main()
{
  pthread_t t;

  pthread_create(&t, 0, thr1, 0);
  thr2(0);

  return 0;
}

