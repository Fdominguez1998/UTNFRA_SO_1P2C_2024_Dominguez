#!/bin/bash

echo "Busco los datos"

mkdir -p RTA_ARCHIVOS_Examen_2024-10-09

echo "Obtener el total de memoria RAM"
RAM_TOTAL=$(grep -i 'MemTotal:' /proc/meminfo)

echo "Obtener la información del fabricante del chasis"
FABRICANTE_CHASIS=$(sudo dmidecode -t chassis | grep "Manufacturer" | awk -F: '{print $2}' )

echo "Creo el archivo del filtro y cargo los datos en él"

echo "Crear y cargar los datos en el archivo Filtro_Basico.txt"

echo "$RAM_TOTAL" > "RTA_ARCHIVOS_Examen_2024-10-09/Filtro_Basico.txt"
echo "Fabricante del chasis: $FABRICANTE_CHASIS" >> "RTA_ARCHIVOS_Examen_2024-10-09/Filtro_Basico.txt"

echo "Los datos han sido guardados en RTA_ARCHIVOS_Examen_2024-10-09/Filtro_Basico.txt"
