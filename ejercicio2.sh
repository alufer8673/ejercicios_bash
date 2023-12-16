#!/bin/bash

# comprueba que el primer parámetro sea un número
numeros='^[0-9]+$'
if [[ $1 =~ $numeros ]]; then

	# comprueba si se han pasado dos parámetros
	if [[ $# -eq 2 ]]; then
		echo "$1 + $2 = $(($1 + $2))"
	else
		echo "ERROR: Debes pasar dos parámetros."
		echo "Forma correcta de ejecutar el script:"
		echo "		./ejercicio2.sh [número] [número]"
	fi
else
	echo "ERROR: Debes pasar dos parámetros que sean números."
	echo "Forma correcta de ejecutar el script:"
	echo "	./ejercicio2.sh [número] [número]"
fi