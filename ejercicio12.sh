#!/bin/bash

function menu(){
    echo ""
    echo "###################################"
    echo "############# MENU ################"
    echo "###################################"
    echo ""
    echo "Elige una opción:"
    echo "1) Sumar"
    echo "2) Restar"
    echo "3) Dividir"
    echo "4) Multiplicar"
    echo "0) Salir"
    read -p "¿Qué quieres hacer?: " user_res
}

function sumar(){
    suma=$(($num1+$num2))
    echo "$num1 + $num2 = $suma"
}

function restar(){
    resta=$(($num1-$num2))
    echo "$num1 - $num2 = $resta"
}

function dividir(){
    div=$(($num1/$num2))
    echo "$num1 / $num2 = $div"
}

function multiplicar(){
    mult=$(($num1*$num2))
    echo "$num1 * $num2 = $mult"
}

menu

while [[ $user_res -ne 0 ]]
do
    if [[ $user_res -gt 4 ]]; then
        echo "ERROR: Debes introducir un número entre el 0 y el 4"
    else
        read -p "Número 1: " num1
        read -p "Número 2: " num2
        case $user_res in
        1) sumar ;;
        2) restar ;;
        3) dividir ;;
        4) multiplicar ;;
        esac
    fi
    sleep 1
    menu
done