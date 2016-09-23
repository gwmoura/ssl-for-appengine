#!/babin/bash

echo "Adding new lines for .crt files"
sed -i -e '$a\' certificate.crt
sed -i -e '$a\' ca_bundle.crt

echo "Concat .crt files to generate full chain"
cat certificate.crt ca_bundle.crt >> cert_chain.crt
echo "Creating concat.crt"
cat certificate.crt ca_bundle.crt cert_chain.crt >> concat.crt

echo "Creating a .pem file"
openssl rsa -in private.key -out private.key.pem

echo "Verifing if the files"
# verify the cert
openssl x509 -noout -modulus -in concat.crt | openssl md5
openssl rsa -noout -modulus -in private.key.pem | openssl md5
