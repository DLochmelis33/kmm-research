#define _GNU_SOURCE

#include "pthread.h"
#include "stdio.h"
#include "assert.h"
#include "unistd.h"

void say(const char* msg) {
    fprintf(stderr, "%s\n", msg);
}

void* routine(void* ptr) {
    say("hi");
    sleep(2);
    say("bye");
}

int main() {
    pthread_t t;
    int ret;

    ret = pthread_create(&t, NULL, &routine, "my thread 1");    
    assert(ret == 0);

    cpu_set_t set;
    CPU_ZERO(&set);
    CPU_SET(0, &set);
    ret = pthread_setaffinity_np(t, sizeof(set), &set);
    assert(ret == 0);

    sleep(2);
    cpu_set_t get;
    ret = pthread_getaffinity_np(t, sizeof(get), &get);
    assert(ret == 0);
    fprintf(stderr, "mask is %d", get);

    sleep(1);
    say("end");
}
