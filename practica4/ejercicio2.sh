#!/bin/bash

function menu(){
    echo "        #############################"
    echo "        ### SELECCIONE UNA OPCIÓN ###"
    echo "        #############################"
    echo "  1. Reiniciar el equipo ahora"
    echo "  2. Reiniciar el equipo dentro de N minutos"
    echo ""
    read -p " Seleccione una opción: " opcion
}

menu

case $opcion in
    1) shutdown -r now ;;
    2)
        read -p " ¿En cuántos minutos quiere reiniciar el equipo? " minutos
        shutdown -r $minutos
        ;;
    *) menu ;;
esac
