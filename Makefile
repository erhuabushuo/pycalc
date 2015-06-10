all:
	cython -3 -o calcpy.c calcpy.pyx
	gcc -g -O2 -fpic -c calcpy.c -o calcpy.o `python3-config --cflags`
	gcc -std=c99 -g -O2 -fpic -c calc.c -o calc.o
	gcc -std=c99 -g -O2 -fpic -c helpers.c -o helpers.o
	gcc -g -O2 -shared -o calcpy.so calc.o calcpy.o helpers.o -lm 

clean:
	-rm calcpy.c *.o *.so