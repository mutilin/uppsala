#include "mypthread.h"
pthread_mutex_t mutex;

int* global;
int x = 0;

void *t1(void* arg) {
    int* l;
    pthread_mutex_lock(&mutex);
    l = global;
    global = 0;
    pthread_mutex_unlock(&mutex);
    if (l != 0) {
        *global = 1;
        ldv_assert(*global == 1);
    }
	return 0;
}

void *t2(void* arg) {
    int* l;
    pthread_mutex_lock(&mutex);
    l = global;
    global = 0;
    pthread_mutex_unlock(&mutex);
    if (l != 0) {
        *global = 2;
        ldv_assert(*global == 2);
    }
	return 0;
}

int main() {
	pthread_t thread1, thread2;
	
    global = &x;
	pthread_create(&thread1, 0, t1, 0);
	pthread_create(&thread2, 0, t2, 0);
	
	return 0;
}
