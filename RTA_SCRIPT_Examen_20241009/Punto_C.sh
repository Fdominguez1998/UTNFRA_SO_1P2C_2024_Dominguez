#!/bin/bash


echo "obtengo la contraseña de mi usuario vagrant y la guardo en una variable"

CLAVE_HASH=$(sudo grep "vagrant:" /etc/shadow | awk -F: '{print $2}')

echo "Primero creo los grupos"
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

echo "Creo los usuarios, le asigno su grupo y creo su contraseña"

sudo useradd -m -s /bin/bash -c "Pepito" -G p1c2_2024_gAlumno -p "CLAVE_HASH" p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "Maria" -G p1c2_2024_gAlumno -p "CLAVE_HASH" p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "Batman" -G p1c2_2024_gAlumno -p "CLAVE_HASH" p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "Gonzalo" -G p1c2_2024_gProfesores -p "CLAVE_HASH" p1c2_2024_P1


echo "Modifico los permisos de los usuarios"

sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 005 /Examenes-UTN/profesores

