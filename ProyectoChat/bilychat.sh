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
descifrar() {
    echo -e "${azul}Introduce el mensaje a descifrar:${reset}"
    read mensaje
    echo -e "${azul}Introduce la contraseña para descifrar:${reset}"
    read -s pass
    echo -e

    echo -e "${azul}Descifrando...${reset}"

    echo $mensaje | openssl enc -aes-256-cbc -a -d -salt -pass pass:$pass

}

# Función para enviar mensaje
enviar() {
    echo -e "${emoji1}${azul}Introduce el mensaje a enviar:${reset}"
    read mensaje
    echo -e "${emoji1}${azul}Introduce la contraseña para cifrar:${reset}"
    read -s pass
    echo -e "${emoji1}${azul}Cifrando...${reset}"
    mensaje_cifrado=$(echo $mensaje | openssl enc -aes-256-cbc -a -salt -pass pass:$pass)
    echo -e "${emoji1}${azul}Mensaje cifrado: ${reset}${mensaje_cifrado}"
    echo -e "${emoji1}${azul}Introduce la contraseña para descifrar:${reset}"
    read -s pass
    echo -e "${emoji1}${azul}Descifrando...${reset}"
    mensaje_descifrado=$(echo $mensaje_cifrado | openssl enc -aes-256-cbc -a -d -salt -pass pass:$pass)
    echo -e "${emoji1}${azul}Mensaje descifrado: ${reset}${mensaje_descifrado}"
    echo -e "${emoji1}${azul}Introduce el mensaje cifrado:${reset}"
    read mensaje
    echo -e "${emoji1}${azul}Introduce la contraseña para descifrar:${reset}"
    read -s pass
    echo -e "${emoji1}${azul}Descifrando...${reset}"
    mensaje_descifrado=$(echo $mensaje | openssl enc -aes-256-cbc -a -d -salt -pass pass:$pass)
    echo -e "${emoji1}${azul}Mensaje descifrado: ${reset}${mensaje_descifrado}"
}

# Función para recibir mensaje 
recibir() {
echo -e "${emoji2}${azul}Introduce el mensaje cifrado:${reset}"
    read mensaje
    echo -e "${emoji2}${azul}Introduce la contraseña para descifrar:${reset}"
    read -s pass
    echo -e "${emoji2}${azul}Descifrando...${reset}"
    mensaje_descifrado=$(echo $mensaje | openssl enc -aes-256-cbc -a -d -salt -pass pass:$pass)
    echo -e "${emoji2}${azul}Mensaje descifrado: ${reset}${mensaje_descifrado}"
    echo -e "${emoji2}${azul}Introduce el mensaje a cifrar:${reset}"
    read mensaje
    echo -e "${emoji2}${azul}Introduce la contraseña para cifrar:${reset}"
    read -s pass
    echo -e "${emoji2}${azul}Cifrando...${reset}"
    mensaje_cifrado=$(echo $mensaje | openssl enc -aes-256-cbc -a -salt -pass pass:$pass)
    echo -e "${emoji2}${azul}Mensaje cifrado: ${reset}${mensaje_cifrado}"
}

# Menú principal
    echo -e "${azul}Bienvenido a BilyChat${reset}"
echo -e "${azul}Selecciona una opción:${reset}"
echo -e "${azul}1. Cifrar mensaje${reset}"
echo -e "${azul}2. Descifrar mensaje${reset}"
echo -e "${azul}3. Enviar mensaje${reset}"
echo -e "${azul}4. Recibir mensaje${reset}"
read opcion

case $opcion in
    1)
        cifrar
        ;;
    2)
        descifrar
        ;;
    3)
        enviar
        ;;
    4)
        recibir
        ;;
    *)
        echo -e "${rojo}Opción no válida${reset}"

esac

# Fin del script

# Ahora sera un chat en donde se mande a los equipos en la habitacion. En cuanto
# inicias el script, te pedira un nombre de habitacion. Entonces, se asignara 
# un puerto, tiene que haber una referencia de asignaciones de puertos.
# Por ejemplo: la habitacion adros 