#!/bin/bash

if [[ $# -eq 1 ]]; then
    for $1 in 'ls' ; do
        if [[ -d $1 ]]; then
            echo "$1 es un directorio"
        elif [[  ]]; then
        fi
    done
else
    echo "ERROR: Debes introducir un sólo parámetro indicando la ruta completa del directorio"
    echo "La forma correcta de ejecutar el script es:"
    echo "  ./ejercicio14.sh [ruta completa del directorio]"
fi