#!/bin/bash

# Variables colores
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
blanco="\033[1;37m"
reset="\033[0m"

# Variables emojis necesarios para el chat
emoji1="👉"
emoji2="👈"
emoji3="👍"
emoji4="👎"
emoji5="👏"
emoji6="👀"
emoji7="🔥"
emoji8="💥"

# Script para hacer el chat cifrado con openssl 
# y el cifrado simétrico AES-256-CBC

# Función para cifrar
cifrar() {
    echo -e "${azul}Introduce el mensaje a cifrar:${reset}"
    read mensaje
    echo -e "${azul}Introduce la contraseña para cifrar:${reset}"
    read -s pass
    echo -e "${azul}Cifrando...${reset}"
    echo $mensaje | openssl enc -aes-256-cbc -a -salt -pass pass:$pass
}

# Función para descifrar
