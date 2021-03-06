CFLAGS=-Wall -O3 -D__HMAC__
all: ecc rsa aes
ecc:  main.o ecies.o keys.o
	${CC} -o $@ $^ -lssl -lcrypto
rsa:  rsa.o
	${CC} -o $@ $^ -lssl -lcrypto
aes:  aes.o
	${CC} -o $@ $^ -lssl -lcrypto
clean:
	rm -f *.o ecc aes rsa
