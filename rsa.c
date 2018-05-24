#include <openssl/rsa.h>
#include <openssl/pem.h>

int main() {
        FILE *fp = fopen("public.key", "r");
        if (fp == NULL) {
                printf("error open key file\n");
                return 1;
        }
        RSA *rsa = PEM_read_RSA_PUBKEY(fp, NULL, NULL, NULL);
        if (rsa == NULL) {
                printf("error read public key\n");
                return 1;
        }
        fclose(fp);
        printf("rsa size: %d\n", (int)RSA_size(rsa));

        RSA_free(rsa);
        return 0;
}
