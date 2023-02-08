#include <pthread.h>

int set_affinity(pthread_t thread, int cpu);
int get_affinity(pthread_t thread);

