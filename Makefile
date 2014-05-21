CC=gcc
FLAG=-lpthread -lpcl

all: cobench cothread 

cobench: cobench.o
	$(CC) $(FLAG) -o $@ $^
	rm $^

cothread: cothread.o
	$(CC) $(FLAG) -o $@ $^
	rm $^

cobench.o: cobench.c
cothread.o: cothread.c

clean:
	rm cobench cothread

