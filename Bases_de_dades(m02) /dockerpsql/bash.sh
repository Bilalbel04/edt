#!/bin/bash

# Entramos a la ruta correcta
cd /home/users/inf/hisx1/a241482bb/edt/Bases_de_dades(m02)/bash.sh

#Comprobación de dependencias
if ! command -v docker &>/dev/null; then
    echo "Docker no está instalado o no está en el PATH. Por favor, instala Docker antes de continuar."
    exit 1
fi

# Función para abrir una nueva terminal y ejecutar un comando
open_new_terminal() {
    if command -v gnome-terminal &>/dev/null; then
        kitty -- bash -c "$*; exec bash"
    elif command -v x-terminal-emulator &>/dev/null; then
        x-terminal-emulator -e "$*"
    elif command -v konsole &>/dev/null; then
        konsole -e "$*"
    else
        echo "No se encontró un terminal compatible. Ejecuta manualmente:"
        echo "$*"
    fi
}

# Levantar el servidor PostgreSQL
echo "Iniciando el servidor PostgreSQL..."
docker compose up -d postgres
if [ $? -ne 0 ]; then
    echo "Error al iniciar el contenedor de PostgreSQL."
    exit 1
fi

# Esperar unos segundos para garantizar que el contenedor arranque correctamente
sleep 6

# Obtener el container ID del servidor PostgreSQL
container_id=$(docker ps --filter "name=postgres" --format "{{.ID}}")
if [ -z "$container_id" ]; then
    echo "No se encontró un contenedor PostgreSQL en ejecución. Verifica con 'docker ps'."
    exit 1
fi

echo "Contenedor PostgreSQL encontrado. ID: $container_id"

# Abrir una nueva terminal, acceder al contenedor y ejecutar psql
echo "Abriendo una nueva terminal para acceder a PostgreSQL..."
open_new_terminal "docker exec -it $container_id psql -U admin -d template1"

# Mensaje final
echo "Para detener el contenedor y limpiar recursos, ejecuta:"
echo "docker compose down"
echo "Para eliminar contenedores huérfanos, ejecuta:"
echo "docker compose down --remove-orphans"
echo "docker exec -it $container_id psql -U admin -d template1"
