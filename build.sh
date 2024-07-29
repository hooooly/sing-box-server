#!/bin/bash

port=$SING_BOX_PORT
uuid=$SING_BOX_UUID
host=$SING_BOX_HOST
path=$SING_BOX_PATH
cert_pem=$SING_BOX_CERT_PEM
cert_key=$SING_BOX_CERT_KEY

filename="sing-box-1.9.3-linux-amd64"
curl -L -o "$filename.tar.gz" "https://github.com/SagerNet/sing-box/releases/download/v1.9.3/$filename.tar.gz"
tar -zxvf "$filename.tar.gz"
mv "./$filename/sing-box" ./sing-box
rm -rf "./$filename"

cd ./sing-box
chmod 777 ./sing-box
rm -rf ./cert
mkdir ./cert
cat <<< "$cert_pem" > ./cert/cert.pem
cat <<< "$cert_key" > ./cert/cert.key
sed "s#SING_BOX_PORT#$port#g; s#SING_BOX_UUID#$uuid#g; s#SING_BOX_HOST#$host#g; s#SING_BOX_PATH#$path#g; " config.json.template > config.json
