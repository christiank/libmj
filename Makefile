.PHONY: all clean
.SUFFIXES: .c .o

CC?= gcc
CFLAGS?= -Wall
AR?= ar

libmj.a: mj.o
	$(AR) rcs $(.TARGET) $(.ALLSRC) 

.c.o:
	$(CC) $(CFLAGS) -c -o $(.TARGET) $(.ALLSRC)

clean:
	rm -f *.a *.core
