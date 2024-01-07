#!/bin/bash

carpeta_cuarentena="/root/cuarentena"
if [[ ! -d $carpeta_cuarentena ]]; then
    sudo mkdir -p $carpeta_cuarentena
fi

echo "La carpeta $carpeta_cuarentena existe."
echo "Buscando archivos con la palabra Hack."

grep -rl "Hack" / 2>/dev/null | xargs mv -t $carpeta_cuarentena

echo "Los ficheros con la palabra Hack se han movido a $carpeta_cuarentena" 
