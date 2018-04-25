#include "mypthread.h"
pthread_mutex_t mutex;

int global = 0;
int init_var = 0;

void *t1(void* arg) {
        pthread_mutex_lock(&mutex);
        if(!init_var) {
          init_var = 1;
        }
        pthread_mutex_unlock(&mutex);
        //init_var protects global variable from simultaneous access
        global = 1;
        ldv_assert(global == 1);
	return 0;
}

void *t2(void* arg) {
        pthread_mutex_lock(&mutex);
        if(!init_var) {
          init_var = 1;
        }
        pthread_mutex_unlock(&mutex);
        global = 2;
	return 0;
}

int main() {
	pthread_t thread1, thread2;
	
	pthread_create(&thread1, 0, t1, 0);
	pthread_create(&thread2, 0, t2, 0);
	
	return 0;
}
