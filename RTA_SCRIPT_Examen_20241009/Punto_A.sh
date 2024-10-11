#!/bin/bash

echo "Creo la estructura"
sudo mkdir -p /Examenes-UTN/{alumno_{1..3}/parcial_{1..3},profesores}

echo
echo "Muestro"
sudo tree /Examenes-UTN
