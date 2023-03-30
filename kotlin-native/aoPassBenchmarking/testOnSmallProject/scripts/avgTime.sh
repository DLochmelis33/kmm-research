#! /usr/bin/bash

command=$1
declare -i repeats=${2:-5}
sum=0
TIMEFORMAT=%R

for ((i = 0; i < repeats; i++)); do
    t=$({ time $command &>/dev/null; } 2>&1)
    sum=$(echo "$sum+$t" | sed -u 's/,/./g' | bc -l)
done

echo $(echo "scale=3;$sum/$repeats" | bc) s
