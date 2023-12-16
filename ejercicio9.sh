#!/bin/bash

read -p "Introduce un número: " num

result=$num%2

numeros='^[0-9]+$'
if [[ $num =~ $numeros ]]; then
    if [[ $result -eq 0 ]]; then
        echo "$num es par"
    else
        echo "$num es impar"
    fi
else
    echo "ERROR: Debes introducir un número"
fi