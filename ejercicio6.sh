#!/bin/bash

# comprueba que el parámetro introducido es un número
numeros='^[0-9]+$'
if [[ $1 =~ $numeros ]]; then
    # comprueba que se haya pasado un parámetro
    if [[ $# -eq 1 ]]; then
        num=1
        while [[ $num -le 10 ]]
        do
            echo "$1 x $num = $(($1 * $num))"
            ((num++))
        done
    else
        echo "ERROR: Debes pasar un parámetros que sea un número."
        echo "Forma correcta de ejecutar el script:"
        echo "	./ejercicio6.sh [número]"
    fi
else
	echo "ERROR: Debes pasar un parámetros que sea un número."
	echo "Forma correcta de ejecutar el script:"
	echo "	./ejercicio6.sh [número]"
fi