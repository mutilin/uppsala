/**
* From the paper mariage of rely-guarantee and separation logic
* Lock-coupling synchronization

**/
#include "mypthread.h"
pthread_mutex_t mutex;
void __VERIFIER_assume(int);

#define MAX_SIZE 100

int global_array[MAX_SIZE];
int global_index = 0;

struct list {
  struct list *next, *prev;
  pthread_mutex_t mutex;
  int data;
}

void list_add(struct list *lst, int data) {
        pthread_mutex_lock(&mutex);
}

void list_remove(struct list *lst, int data) {
}

void list_contains(struct list *lst, int data) {
}

void init_list() {
//add a nondet? number of nondet? elements
}

struct list *global_lst;

int to_del;
int to_add;
//to_add!=to_del

void *t1(void *arg) {
        list_add();
}

void *t2(void *arg) {
        list_remove();
}

//ideas for bugs
//1. forgot lock for parent (missing coupling)
//2. require many iterations for to_add and to_del by placing taking them at the end

int main() {
	pthread_t thread1, thread2;

	init_list(global_lst);	
	pthread_create(&thread1, 0, t1, 0);
	pthread_create(&thread2, 0, t2, 0);
	pthread_join(&thread1);
	pthread_join(&thread2);
	ldv_assert(list_contains(global_lst,to_add));
	ldv_assert(!list_contains(global_lst,to_remove));

	
	return 0;
}
