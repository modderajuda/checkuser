#!/bin/bash
vermelho="\e[31m"
verde="\e[32m"
amarelo="\e[33m"
azul="\e[34m"
roxo="\e[38;2;128;0;128m"
reset="\e[0m"

rm -rf /root/modderajuda/
rm -f /usr/local/bin/modderajuda
sudo kill -9 $(lsof -t -i:5454)
pkill -9 -f "/root/modderajuda/checkuser.py"


apt update && apt upgrade -y && apt install python3 git -y
git clone https://github.com/modderajuda/checkuser.git
chmod +x /root/modderajuda/checkuserMenu.sh
ln -s /root/modderajuda/checkuserMenu.sh /usr/local/bin/modderajuda

clear
echo -e "Para iniciar o menu digite: ${verde}iniciar${reset}"
