#include "mypthread.h"
pthread_mutex_t mutex;
void __VERIFIER_assume(int);

int *ptr = 0;
int init_var = 0;

void get_ptr(int i) {
        pthread_mutex_lock(&mutex);
        if(ptr==0) {
		if(!init_var) {
			init_var = 1;
		        pthread_mutex_unlock(&mutex);
		        int *tmp;
		        tmp = (int *)malloc(sizeof(int));
	                __VERIFIER_assume(tmp!=0);
			*tmp = i;
		        pthread_mutex_lock(&mutex);
			ptr = tmp;
		        pthread_mutex_unlock(&mutex);
			//init_var && ptr!=0 makes a happens before edge 
			//preventing read before initialization
			ldv_assert(*ptr == i);
		} else {
			pthread_mutex_unlock(&mutex);
		}
        } else {
	        pthread_mutex_unlock(&mutex);
        }
}

void *t1(void* arg) {
        get_ptr(1);
	return 0;
}

void *t2(void* arg) {
        get_ptr(2);
	return 0;
}

int main() {
	pthread_t thread1, thread2;
	
	pthread_create(&thread1, 0, t1, 0);
	pthread_create(&thread2, 0, t2, 0);
	
	return 0;
}
