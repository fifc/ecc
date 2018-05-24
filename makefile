CC=gcc
CFLAGS=-Wall -O3
all: ecc
ecc:  main.o ecies.o keys.o
	${CC} -o $@ $^ -lssl -lcrypto -Wall
clean:
	rm -f main.o ecies.o keys.o ecc
