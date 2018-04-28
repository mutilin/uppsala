#include "mypthread.h"
pthread_mutex_t mutex;
void __VERIFIER_assume(int);

#define MAX_SIZE 100

int global_array[MAX_SIZE];
int global_index = 0;

void get(void) {
        pthread_mutex_lock(&mutex);
        if(global_index < MAX_SIZE) {
           int i = global_index++;
           //we always get a new index
           pthread_mutex_unlock(&mutex);
           int v = __VERIFIER_nondet_int();
           global_array[i] = v;
           ldv_assert(global_array[i] == v);
        } else {
           pthread_mutex_unlock(&mutex);
        }
}

void *t1(void *arg) {
        get();
}

void *t2(void *arg) {
        get();
}

int main() {
	pthread_t thread1, thread2;
	
	pthread_create(&thread1, 0, t1, 0);
	pthread_create(&thread2, 0, t2, 0);
	
	return 0;
}
