#!/bin/bash

echo "Busco los datos"

IP_PUBLICA=$(curl -s ifconfig.me)

USUARIO=$(whoami)

HASH_USUARIO=$(sudo grep "$USUARIO:" /etc/shadow | awk -F: '{print $2}')

REPO_URL=$(git remote get-url origin)


echo "Creo el archivo del filtro y cargo los datos en el"

echo "Mi IP publica es $IP_PUBLICA" > Filtro_Avanzado.txt
echo "Mi usuario es: $USUARIO" >> Filtro_Avanzado.txt
echo "El HASH de mi usuario es $HASH_USUARIO" >> Filtro_Avanzado.txt
echo "El URL de mi repositorio es $REPO_URL" >> Filtro_Avanzado.txt
