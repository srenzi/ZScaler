#!/usr/bin/env bash

sudo service zsaservice stop &&
sudo service zstunnel stop &&
sudo killall -15 ZSTray > /dev/null 2>&1

