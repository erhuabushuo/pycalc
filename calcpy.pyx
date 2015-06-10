import calcpy

def calculcate():
    import sys
    argc = len(sys.argv)
    cdef char **argv

    argv = <char **>malloc(sizeof(char *) * len(sys.argv))
    for idx, s in enumerate(sys.argv):
        ss = s.encode("UTF-8")
        argv[idx] = ss

    i = parseOptions(argc, argv);
    for j in range(i, argc):
        evaluate(argv[j], argc - j != 1)

    free(argv)

    cdef char *new_line = "\n"
    printf("%s", new_line)
