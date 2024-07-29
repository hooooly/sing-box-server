#!/bin/bash

port=$SING_BOX_PORT
uuid=$SING_BOX_UUID
host=$SING_BOX_HOST
path=$SING_BOX_PATH
cert_pem=$SING_BOX_CERT_PEM
cert_key=$SING_BOX_CERT_KEY

cd ./sing-box
rm -rf ./cert
mkdir ./cert
echo $cert_pem > ./cert/cert.pem
echo $cert_key > ./cert/cert.key
sed "s/SING_BOX_PORT/$port/g; s/SING_BOX_UUID/$uuid/g; s/SING_BOX_HOST/$host/g; s/SING_BOX_PATH/$path/g; " config.json.template > config.json
