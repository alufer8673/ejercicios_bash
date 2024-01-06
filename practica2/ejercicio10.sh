#!/bin/bash

#Crea un script primo.sh que verifique si el número pasado por parámetro es primo o no.

numero='^[0-9]+$'

cont=1
div=0
suma=0

if [[ $1 =~ $numero ]]; then
    if [[ $# -eq 1 ]]; then
        if [[ $1 -eq 1 || $1 -eq 2 ]]; then
            echo "$1 es un número primo"
        else
            while [[ $cont -le $1 ]]
            do
                operacion=$1%$cont
                if [[ $operacion -eq 0 ]]; then
                    div=$div+1
                fi
                ((cont++))
            done

            if [[ $div -gt 2 ]]; then
                echo "$1 no es un número primo"
            else
                echo "$1 es un número primo"
            fi
        fi
    else
        echo "ERROR: Debes pasar un parámetros que sea un número."
        echo "Forma correcta de ejecutar el script:"
        echo "	./ejercicio10.sh [número]"
    fi
else
    echo "ERROR: Debes pasar un parámetros que sea un número."
    echo "Forma correcta de ejecutar el script:"
    echo "	./ejercicio10.sh [número]"
fi