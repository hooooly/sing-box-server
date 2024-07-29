#!/bin/bash

if [ ! -f "./sing-box/config.json" ]; then
  ./build.sh
fi
./sing-box/sing-box -D ./sing-box run
