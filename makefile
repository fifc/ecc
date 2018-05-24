CC=gcc
CFLAGS=-Wall -O3 -D__HMAC__
all: ecc rsa
ecc:  main.o ecies.o keys.o
	${CC} -o $@ $^ -lssl -lcrypto
rsa:  rsa.o
	${CC} -o $@ $^ -lssl -lcrypto
clean:
	rm -f main.o ecies.o keys.o ecc
