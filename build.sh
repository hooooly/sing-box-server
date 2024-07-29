#!/bin/bash

port=$SING_BOX_PORT
uuid=$SING_BOX_UUID
host=$SING_BOX_HOST
path=$SING_BOX_PATH

cd ./sing-box
sed "s/SING_BOX_PORT/$port/g; s/SING_BOX_UUID/$uuid/g; s/SING_BOX_HOST/$host/g; s/SING_BOX_PATH/$path/g; " config.json.template > config.json
