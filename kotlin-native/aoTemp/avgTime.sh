#! /usr/bin/bash

command=$1
declare -i repeats=${2:-5}
declare -i sum=0
TIMEFORMAT=%R

for ((i = 0; i < repeats; i++)); do
    t=$({ time $command &>/dev/null; } 2>&1)
    sum+=t
done

declare -i avgTime=$sum/$repeats
echo $avgTime ms
