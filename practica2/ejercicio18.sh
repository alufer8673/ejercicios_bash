#!/bin/bash

if [[ $# -eq 1 ]]; then
    nombre_user=$1
    if id $nombre_user >/dev/null 2>&1; then
	echo "El usuario $nombre_user está dado de alta en el sistema"
	if who | grep -w $nombre_user >/dev/null 2>&1; then
	    echo "El usuario $nombre_user ha iniciado sesión"
	else
	    echo "El usuario $nombre_user no ha iniciado sesión"
	fi
    else
	echo "El usuario $nombre_user no está dado de alta en el sistema"
    fi
else
    echo "ERROR: Debes introducir un sólo parámetro"
    echo "La forma correcta de ejecutar el script es:"
    echo "  ./ejercicio18.sh [usuario]"
fi
