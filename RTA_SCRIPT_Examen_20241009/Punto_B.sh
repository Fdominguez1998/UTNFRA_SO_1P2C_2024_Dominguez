#!bin/bash

echo "Realizo las particiones"
sudo fdisk /dev/sdc << EOF

n
p


+1G
n
p


+1G
n
p


+1G
n
e



n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF
echo
echo "Muestro como quedo..."
sudo fdisk /dev/sdc -l
echo
echo"Realizo los formateros"

sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7
sudo mkfs.ext4 /dev/sdc8
sudo mkfs.ext4 /dev/sdc9
sudo mkfs.ext4 /dev/sdc10
sudo mkfs.ext4 /dev/sdc11

echo
echo"Los monto"

sudo mount /dev/sdc1 /Examenes-UTN/Alumno1/parcial1/
sudo mount /dev/sdc2 /Examenes-UTN/Alumno1/parcial2/
sudo mount /dev/sdc3 /Examenes-UTN/Alumno1/parcial3/
sudo mount /dev/sdc5 /Examenes-UTN/Alumno2/parcial1/
sudo mount /dev/sdc6 /Examenes-UTN/Alumno2/parcial2/
sudo mount /dev/sdc7 /Examenes-UTN/Alumno2/parcial3/
sudo mount /dev/sdc8 /Examenes-UTN/Alumno3/parcial1/
sudo mount /dev/sdc9 /Examenes-UTN/Alumno3/parcial2/
sudo mount /dev/sdc10 /Examenes-UTN/Alumno3/parcial3/
sudo mount /dev/sdc11 /Examenes-UTN/profesores/


