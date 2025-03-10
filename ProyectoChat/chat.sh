#!/bin/bash

# Función para generar  número de puerto a partir del nombre de la habitación
generate_port() {
    local room_name="$1"
    local hash
    hash=$(echo -n "$room_name" | sha256sum | awk '{print $1}')  # Hash SHA-256
    local port=$(( 10000 + 0x${hash:0:4} % 55535 ))  # Rango de puertos 10000-65535
    echo "$port"
}

# Solicitar el nombre de la habitación
read -p "Introduce el nombre de la habitación: " room

# Obtener el puerto basado en el nombre
port=$(generate_port "$room")

echo "La habitación '$room' tiene el puerto: $port"

# Iniciar el servidor en el puerto generado
nc -l -p "$port"