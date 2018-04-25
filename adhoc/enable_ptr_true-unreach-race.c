#include "mypthread.h"
pthread_mutex_t mutex;
void __VERIFIER_assume(int);

int *enable_ptr = 0;
int global = 0;

void *t1(void *arg) {
        pthread_mutex_lock(&mutex);
        if(enable_ptr) {
                enable_ptr = 0;
	        pthread_mutex_unlock(&mutex);
	        global = 1;
                //enable_ptr protects global variable from simultaneous access
                ldv_assert(global == 1);
        } else {
	        pthread_mutex_unlock(&mutex);
        }
	return 0;
}

void *t2(void* arg) {
        pthread_mutex_lock(&mutex);
        if(enable_ptr) {
                enable_ptr = 0;
	        pthread_mutex_unlock(&mutex);
	        global = 2;
                ldv_assert(global == 2);
        } else {
	        pthread_mutex_unlock(&mutex);
        }
	return 0;
}

void *t3(void* arg) {
        int enabled;
        pthread_mutex_lock(&mutex);
        enabled = (enable_ptr!=0)?1:0;
        pthread_mutex_unlock(&mutex);
        if(!enabled) {
		enable_ptr = (int *)malloc(sizeof(int));
        }
	return 0;
}

int main() {
	pthread_t thread1, thread2;
	
	pthread_create(&thread1, 0, t1, 0);
	pthread_create(&thread2, 0, t2, 0);
	pthread_create(&thread2, 0, t3, 0);
	
	return 0;
}
