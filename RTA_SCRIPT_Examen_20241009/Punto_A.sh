#!/bin/bash

echo "Creo la estructura"
sudo mkdir -p /Examenes-UTN/{Alumno{1..3}/parcial{1..3},profesores}

echo
echo"Muestro"
sudo tree /Examenes-UTN
