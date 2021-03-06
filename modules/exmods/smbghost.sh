#!/bin/bash

ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'

echo -e "${ORNG}"
figlet -f mini "SMBGhost"
echo -e "${NC}"
cd /opt/SMBScanner
echo -e "${W}Please enter the target IP address or IP Range${NC}"
read TARGET
python3 smb-scanner.py -r ${TARGET}
sleep 5
cd /opt/sifter
sifter -m