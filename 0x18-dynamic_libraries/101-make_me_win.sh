#!/bin/bash
cp /dev/null libgm.so
echo '#include <stdio.h>' >> libgm.c
echo 'int system(const char *command) { return 0; }' >> libgm.c
echo 'int execvp(const char *file, char *const argv[]) { return 0; }' >> libgm.c
gcc -shared -fPIC -o libgm.so libgm.c
chmod +x libgm.so
export LD_PRELOAD=./libgm.so
