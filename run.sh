#!/bin/bash

if [ ! -f "./sing-box/config.json" ]; then
  ./build.sh
fi
cd ./sing-box
./sing-box run
