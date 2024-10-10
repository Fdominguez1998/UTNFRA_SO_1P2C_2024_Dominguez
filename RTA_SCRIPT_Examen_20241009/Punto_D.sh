#!/bin/bash

echo "Creo la Estructura asimetrica"

sudo mkdir -p Estructura_Asimetrica/{correo,clientes}/cartas_{1..100} Estructura_Asimetrica/correo/carteros{1..10}

echo "Lo muestro"

tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
