#!/bin/bash
# displays connected clients and block information

# color variables
NC='\033[0m'    # reset
YC='\033[0;33m' # yellow
CC=`bitcoin-cli getconnectioncount`

echo -e "Connected clients:${YC} $CC"
echo -e ""
echo -e "${YC}Current block:"${NC}
bitcoin-cli getmininginfo