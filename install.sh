#!/bin/bash
vermelho="\e[31m"
verde="\e[32m"
amarelo="\e[33m"
azul="\e[34m"
roxo="\e[38;2;128;0;128m"
reset="\e[0m"

echo -e "\033[1;37m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[38;5;118m        ⇱ BEM VINDO AO SCRIPT CHECKUSER DO MODDER!! ⇲             "
echo -e "\033[1;37m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo -e "             \033[1;31mATENCAO! \033[1;37mESSE SCRIPT IRA !\033[0m"
echo ""
echo -e "\033[1;31m• \033[1;37mATUALIZAR O SISTEMA DA MÁQUINA\033[0m"
echo -e "\033[1;37m  ANTES DE INICIAR A INSTALAÇÃO DO CHECKUSER\033[0m"
echo ""
echo -e "\033[1;32m• \033[1;32mDICA! \033[1;37mULTILIZE O TEMA DARK EM SEU TERMINAL PARA\033[0m"
echo -e "\033[1;37m  UMA MELHOR EXPERIÊNCIA E VISUALIZACAO DO MESMO!\033[0m"
echo ""
echo -e "\033[1;37m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "            \033[1;37m • \033[1;32mEDIT:@donomodderajuda\033[1;37m •           "
echo -e "\033[1;37m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
#-----------------------------------------------------------------------------------------------------------------
echo -ne "\033[38;5;118mENTER \033[1;37mpara continuar a \033[1;31mINSTALACAO : \033[0m"; read x
[[ $x = @(n|N) ]] && exit
rm -rf /root/checkuser/
rm -f /usr/local/bin/iniciar
sudo kill -9 $(lsof -t -i:5454)
pkill -9 -f "/root/checkuser/checkuser.py"


apt update && apt upgrade -y && apt install python3 git -y
git clone https://github.com/modderajuda/checkuser.git
chmod +x /root/checkuser/checkuserMenu.sh
ln -s /root/checkuser/checkuserMenu.sh /usr/local/bin/iniciar

clear
echo -e "Para iniciar o menu digite: ${amarelo}iniciar${reset}"
#-----------------------------------------------------------------------------------------------------------------
