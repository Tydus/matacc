#!/usr/bin/python

from sys import exit, argv, stderr

def ij_loop(m):
    N = len(m)
    for i in xrange(N):
        for j in xrange(N):
            m[i][j] = 42

def ji_loop(m):
    N = len(m)
    for j in xrange(N):
        for i in xrange(N):
            m[i][j] = 42

def one_row(m):
    N = len(m)
    for i in xrange(N):
        m[0][i] = 42

def one_col(m):
    N = len(m)
    for i in xrange(N):
        m[i][0] = 42

def diag(m):
    N = len(m)
    for i in xrange(N):
        m[i][i] = 42

def main():
    if len(argv) != 4:
        stderr.write('''Usage: time %s N time type

    type: 0 - ij loop
          1 - ji loop
          2 - one row
          3 - one col
          4 - diag
''' % argv[0])
        exit(-1)


    N = int(argv[1])
    T = int(argv[2])
    m = [[0 for x in xrange(N)] for x in xrange(N)] 

    for i in xrange(T):
        [ij_loop, ji_loop, one_row, one_col, diag][int(argv[3])](m)

    exit(0)

if __name__ == "__main__":
    main()
