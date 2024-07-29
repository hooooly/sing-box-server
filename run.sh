#!/bin/bash

if [ ! -f "./sing-box/config.json" ]; then
  ./build.sh
fi
cd ./sing-box
cat ./config.json
./sing-box run
