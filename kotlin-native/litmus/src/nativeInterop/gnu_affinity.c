#define _GNU_SOURCE
#include "affinity.h"
#include <stdio.h>

int set_affinity(pthread_t thread, int cpu) {
    cpu_set_t set;
    CPU_ZERO(&set);
    CPU_SET(cpu, &set);
    fprintf(stderr, "set\n");
    return pthread_setaffinity_np(thread, sizeof(set), &set);
}

int get_affinity(pthread_t thread) {
    cpu_set_t set;
    fprintf(stderr, "get\n");
    return pthread_getaffinity_np(thread, sizeof(set), &set);
}
