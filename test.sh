#!/bin/bash


TIME_BIN=/usr/bin/time

function _time(){
    printf "%-6s: " $1
    shift
    turn=$3
    $TIME_BIN -p $@ 2>&1 | awk "NR==1{print \$2*10000000/$turn\"ns\"}"
}

make clean all > /dev/null

for i in O0 O1 O2; do
    echo $i
    _time ijloop ./$i 1000 1000 0
    _time jiloop ./$i 1000 1000 1
    _time row    ./$i 1000 1000000 2
    _time col    ./$i 1000 1000000 3
    _time diag   ./$i 1000 1000000 4
    echo ""
done

# We use 100/100k loop here because Python is slower
for i in matacc.py; do
    echo $i
    _time ijloop ./$i 1000 100 0
    _time jiloop ./$i 1000 100 1
    _time row    ./$i 1000 100000 2
    _time col    ./$i 1000 100000 3
    _time diag   ./$i 1000 100000 4
    echo ""
done
