# MatAcc -- Benchmarks on Matrix Accessing
Author: __Tydus Ken__

## TL;DR
`./test.sh`

## What is it
This is the homeworks of the Course __Practical Aspects 
in Algorithm and Programming__, holding by Prof. __Mary Inaba__.

## What does it do
It will do some benchmarks on acessing matrix, in many dimensions:
### Algorithms
Total of 5 algorithms can be benchmarked:
1. ijloop  
Access every cell, row first.
2. jiloop  
Access every cell, column first.
3. row  
Access only one row.
4. col  
Access only one column.
5. diag  
Access only the main diagonal.

### Scale of Matrix
It currently supports scale up to 1000x1000. Larger matrix will be supported later.
### Languages and Optimizations
Currently it includes C(with -O0 -O1 and -O2) and Python implemantations.

## How to use
### The manual approach
    make
    time ./O0 1000 1000 1
    time ./matacc.py 1000 100000 3
### The automatic approach
    ./test.sh

