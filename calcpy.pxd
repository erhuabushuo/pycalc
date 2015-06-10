cimport cython
from libc.stdlib cimport malloc, free
from libc.stdio cimport printf

cdef extern from "calc.h":
    int parseOptions(int, char**);
    void evaluate(char*, int);