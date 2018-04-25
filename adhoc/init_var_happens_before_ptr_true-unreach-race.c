#include "mypthread.h"
pthread_mutex_t mutex;
void __VERIFIER_assume(int);

int *ptr = 0;
int init_var = 0;

int *get_ptr(void) {
        pthread_mutex_lock(&mutex);
        if(ptr==0) {
		if(!init_var) {
		  init_var = 1;
		}
	        pthread_mutex_unlock(&mutex);
	        int *tmp;
	        tmp = (int *)malloc(sizeof(int));
                __VERIFIER_assume(ptr!=0);
	        pthread_mutex_lock(&mutex);
		ptr = tmp;
	        pthread_mutex_unlock(&mutex);
        } else {
	        pthread_mutex_unlock(&mutex);
        }
	return 0;
}

void *t1(void* arg) {
        int *p = get_ptr();
        //init_var && ptr!=0 makes a happens before edge 
        //preventing read before initialization
        ldv_assert(*p == 1);
	return 0;
}

void *t2(void* arg) {
        int *p = get_ptr();
        //init_var && ptr!=0 makes a happens before edge 
        //preventing read before initialization
        ldv_assert(*p == 1);
	return 0;
}

int main() {
	pthread_t thread1, thread2;
	
	pthread_create(&thread1, 0, t1, 0);
	pthread_create(&thread2, 0, t2, 0);
	
	return 0;
}
