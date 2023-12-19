#!/bin/bash

if [[ $# -eq 1 ]]; then

else
    echo "ERROR: Debes introducir un parámetro que sea un directorio."
    echo "La forma correcta de ejecutar el script es:"
    echo "  ./ejercicio16.sh [ruta completa del directorio]"
fi