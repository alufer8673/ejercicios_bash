#!/bin/bash

barra='^/.*'

if [[ $# -eq 1 ]]; then
    if [[ $1 =~ $barra ]]; then
        if [[ -d $1 ]]; then
            for i in $1/*; do
                if [[ -d $i ]]; then
                    ((subdir++))
                elif [[ -f $i ]]; then
                    ((fichero++))
                fi
            done
            echo "En el directorio $1 hay: "
            echo "   - Subdirectorios: $subdir"
            echo "   - Ficheros: $fichero"
        fi
    else
        echo "ERROR: Debes introducir un parámetro que sea un directorio."
        echo "La forma correcta de ejecutar el script es:"
        echo "  ./ejercicio16.sh [/ruta/absoluta/del/directorio]"
    fi
else
    echo "ERROR: Debes introducir un parámetro que sea un directorio."
    echo "La forma correcta de ejecutar el script es:"
    echo "  ./ejercicio16.sh [/ruta/absoluta/del/directorio]"
fi