#!/bin/bash

if [ ! -f "./sing-box/config.json" ]; then
  ./build.sh
fi
./sing-box/sing-box -D ./sing-box run &
chmod 777 ./keep_alive.sh
./keep_alive.sh
