#!/usr/bin/env bash

openssl genrsa -out rsaPrivateKey.pem 2048
openssl rsa -pubout -in rsaPrivateKey.pem -out src/main/resources/pk/publicKey.pem
openssl pkcs8 -topk8 -nocrypt \
                 -inform pem \
                 -in rsaPrivateKey.pem \
                 -outform pem \
                 -out src/main/resources/pk/privateKey.pem
rm rsaPrivateKey.pem
