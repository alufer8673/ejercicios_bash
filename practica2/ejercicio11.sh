#!/bin/bash

numero='^[0-9]+$'
num=33
user_num=0

while [[ $user_num -ne $num ]]
do
    read -p "Introduzca un número entre el 1 - 100: " user_num
    if [[ $user_num =~ $numero && $user_num -lt 100 ]]; then
        if [[ $user_num -eq 0 ]]; then
            echo "Parece que te has rendido :( El número era $num"
            exit
        elif [[ $user_num -gt $num ]]; then
            echo "$user_num es mayor"
        elif [[ $user_num -lt $num ]]; then
            echo "$user_num es menor"
        else
            echo "¡Enhorabuena! El número que buscabas era $num"
        fi
    else
        echo "ERROR: Debes introducir un número que se encuentre entre el 1 y el 100."   
    fi
done

