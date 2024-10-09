#!bin/bash


echo "obtengo la contraseña de mi usuario vagrant y la guardo en una variable"

CLAVE_HASH=$(sudo grep "^vagrant:" /etc/shadow | cut -d: -f2)

echo "Primero creo los grupos"
groupadd p1c2_2024_gAlumno
groupadd p1c2_2024_gProfesores

echo "Creo los usuarios, le asigno su grupo y creo su contraseña"

useradd -m -s /bin/bash -c "Pepito" -G p1c2_2024_gAlumno -p "CLAVE_HASH" p1c2_2024_A1
useradd -m -s /bin/bash -c "Maria" -G p1c2_2024_gAlumno -p "CLAVE_HASH" p1c2_2024_A2
useradd -m -s /bin/bash -c "Batman" -G p1c2_2024_gAlumno -p "CLAVE_HASH" p1c2_2024_A3
useradd -m -s /bin/bash -c "Gonzalo" -G p1c2_2024_gProfesores -p "CLAVE_HASH" p1c2_2024_P1



