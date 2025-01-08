#!/usr/bin/env bash

sudo service zstunnel start &&
sudo service zsaservice start &&
/opt/zscaler/bin/ZSTray > /dev/null 2>&1 &

