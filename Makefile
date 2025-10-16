# Makefile for NameAge program


CC = gcc
CFLAGS = -Wall -O6
LD = $(CC)


CFILES    = \
	mystrings.c \
	Person.c \
	NameAge.c

HFILES    = \
	boolean.h \
	mystrings.h \
	Person.h

OFILES    = $(CFILES:%.c=%.o)

.PHONY: all clean

all: NameAge.out

NameAge.out: $(OFILES)
	$(LD) $(CFLAGS) -o $@ $(OFILES)


mystrings.o: mystrings.c mystrings.h boolean.h

Person.o: Person.c $(HFILES)

NameAge.o: NameAge.c $(HFILES)

clean:
	rm -f *.o *.bak
