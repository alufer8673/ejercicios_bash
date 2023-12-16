#!/bin/bash

# comprueba que se haya pasado un parámetro
if [[ $# -eq 1 ]]; then
    # comprueba si el fichero existe y tiene permisos de lectura
    if [[ -r $1 ]]; then
        cat $1
    else
        echo "El archivo no existe o no tiene permisos de lectura"
    fi
else
    echo "ERROR: Debes indicar que archivo quieres comprobar"
	echo "Forma correcta de ejecutar el script:"
	echo "	./ejercicio4.sh [fichero]"
fi