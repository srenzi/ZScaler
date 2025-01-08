#!/usr/bin/env bash

VPN=/usr/local/bin/VPN
noVPN=/usr/local/bin/noVPN

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

sudo systemctl disable zstunnel
sudo systemctl disable zsaservice

if [ ! -L $VPN ]; then
    sudo ln -s $PWD/VPN.sh /usr/local/bin/VPN
fi
if [ ! -L $noVPN ]; then
    sudo ln -s $PWD/noVPN.sh /usr/local/bin/noVPN
fi

echo -e "To ${GREEN}connect${ENDCOLOR} to the VPN, run the ${GREEN}'VPN'${ENDCOLOR} command"
echo -e "To ${RED}disconnect${ENDCOLOR} from the VPN, run the ${RED}'noVPN'${ENDCOLOR} command"
