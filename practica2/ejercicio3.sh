#!/bin/bash

if [[ $# -eq 1 ]]; then
    # comprueba si el parámetro pasado existe
    if [[ -e $1 ]]; then
        # comprueba si se trata de un directorio o un fichero regular
        if [[ -d $1 ]]; then
            echo "$1 existe y se trata de un directorio"
        # comprueba si se trata de un archivo regular
        elif [[ -f $1 ]]; then
            echo "$1 existe y se trata de un fichero regular"        
        fi
    else
        echo "$1 no existe"
    fi
else
    echo "ERROR: Debes indicar que archivo quieres comprobar"
	echo "Forma correcta de ejecutar el script:"
	echo "	./ejercicio3.sh [fichero]"
fi