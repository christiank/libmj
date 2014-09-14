.PHONY: all clean
.SUFFIXES: .c .o

CC?= gcc
CFLAGS?= -Wall
AR?= ar

LDFLAGS=-L.
LIBS=-lmj

libmj.a: mj.o
	$(AR) rcs $(.TARGET) $(.ALLSRC) 

.c.o:
	$(CC) $(CFLAGS) -c -o $(.TARGET) $(.ALLSRC)

testmj: libmj.a testmj.o
	$(CC) -o $(.TARGET) $(.ALLSRC) $(LDFLAGS) $(LIBS)

testmj.o: testmj.c
	$(CC) -c -I. -o $(.TARGET) $(.ALLSRC)

clean:
	rm -f *.a *.core *.o testmj
