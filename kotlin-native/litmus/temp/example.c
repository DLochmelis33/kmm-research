#define _GNU_SOURCE
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <unistd.h>

#define handle_error_en(en, msg) \
    do { \
        errno = en; \
        perror(msg); \
        exit(EXIT_FAILURE); \
    } while (0)

void say(const char* msg) {
    fprintf(stderr, "%s\n", msg);
}

void* routine(void* ptr) {
    say("hi");
    sleep(2);
    say("bye");
}

int main(int argc, char* argv[]) {
    int s;
    cpu_set_t cpuset;
    pthread_t thread;

    s = pthread_create(&thread, NULL, *routine, "my thread");
    if (s != 0) handle_error_en(s, "pthread_create");

    /* Set affinity mask to include CPUs 0 to 7. */

    CPU_ZERO(&cpuset);
    // for (int j = 0; j < 20; j++) CPU_SET(j, &cpuset);
    CPU_SET(5, &cpuset);

    s = pthread_setaffinity_np(thread, sizeof(cpuset), &cpuset);
    if (s != 0) handle_error_en(s, "pthread_setaffinity_np");

    sleep(1);
    /* Check the actual affinity mask assigned to the thread. */

    s = pthread_getaffinity_np(thread, sizeof(cpuset), &cpuset);
    if (s != 0) handle_error_en(s, "pthread_getaffinity_np");

    printf("Set returned by pthread_getaffinity_np() contained:\n");
    for (int j = 0; j < CPU_SETSIZE; j++)
        if (CPU_ISSET(j, &cpuset)) printf("    CPU %d\n", j);

    exit(EXIT_SUCCESS);
}
