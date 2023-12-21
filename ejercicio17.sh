#!/bin/bash

barra='^/.*'

if [[ $# -eq 2 ]]; then
    if [[ $1 =~ $barra && $2 =~ $barra ]]; then
        if [[ -f $1 ]]; then
            if [[ -e $2 ]]; then
                echo "ERROR: El nombre ya existe un fichero con el nombre $2"
                echo "¿Deseas sobreescribir el fichero?"
                echo "1) Sí"
                echo "2) No"
                echo ""
                read -p "Indica la opción que deseas hacer: " user
                case $user in
                    1) cp $1 $2 ;;
                    2) echo "" ;;
                esac
            else
                cp $1 $2
            fi
        else
            echo "ERROR: El fichero $1 no existe."
        fi
    else
        echo "ERROR: Debes introducir un parámetro que sea un directorio."
        echo "La forma correcta de ejecutar el script es:"
        echo "  ./ejercicio17.sh [/ruta/absoluta/fichero] [nombre]"
    fi    
else
    echo "ERROR: Debes introducir un parámetro que sea un directorio."
    echo "La forma correcta de ejecutar el script es:"
    echo "  ./ejercicio17.sh [/ruta/absoluta/fichero] [/ruta/absoluta/nombre_fichero]"
fi