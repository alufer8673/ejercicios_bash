#!/bin/bash

count=0
barra='^/.*'

if [[ $# -eq 1 ]]; then
    if [[ $1 =~ $barra ]]; then
        echo "Listado de las entradas en el directorio $1:"
        for i in $1/* ; do
            if [[ -d $i ]]; then
                echo "$i es un directorio"
            elif [[ -f $i ]]; then
                echo "$i es un fichero"
            fi
            ((count++))
        done
        echo "Número total de entradas procesadas: $count"
    else
        echo "ERROR: Debes introducir un sólo parámetro indicando la ruta completa del directorio"
        echo "La forma correcta de ejecutar el script es:"
        echo "  ./ejercicio14.sh [/ruta/absoluta/del/directorio]"
    fi
else
    echo "ERROR: Debes introducir un sólo parámetro indicando la ruta completa del directorio"
    echo "La forma correcta de ejecutar el script es:"
    echo "  ./ejercicio14.sh [/ruta/absoluto/del/directorio]"
fi