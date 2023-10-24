import os
import subprocess
import sys
import socket
import urllib.request
import json

# Seus imports e definições de cores...

if __name__ == "__main__":
    while True:
        os.system('clear')

        if verificar_processo(nome_do_script):
            status = f'{cor_verde}ativo{cor_reset} - porta em uso: {obter_do_cache("porta")}'
        else:
            status = f'{cor_vermelha}parado{cor_reset} - porta que será usada: {obter_do_cache("porta")}'

        print(f"Status: {status}")
        # Outras partes do menu...

        option = input("Digite a opção: ")

        if option == "1":
            print("Liberando a porta 5454!")

            # Use subprocess para executar o comando 'lsof' e pegar o PID do processo na porta 5454
            try:
                output = subprocess.check_output(["lsof", "-t", "-i:5454"])
                pid = int(output.strip())

                # Use subprocess para matar o processo com o PID obtido
                subprocess.run(["sudo", "kill", str(pid)])

                print("Porta 5454 liberada, volte ao menu e inicie o checkUser na porta 5454")

            input("\nPressione a tecla Enter para voltar ao menu\n\n")
        elif option == "2":
            # Resto do código...
        elif option == "3":
            # Resto do código...
        elif option == "4":
            # Resto do código...
        elif option == "5":
            # Resto do código...
        elif option == "0":
            sys.exit(0)
        else:
            os.system('clear')
            print(f"Selecionado uma opção inválida, tente novamente !")
            input(f"Pressione a tecla Enter para voltar ao menu")
