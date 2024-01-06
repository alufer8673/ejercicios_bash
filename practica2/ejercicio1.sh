#!/bin/bash

# comprueba que se hayan pasado dos parámetros
if [[ $# -eq 2 ]]; then

	# indica cuál de los dos parámetros compartidos es mayor
	if [[ $1 -gt $2 ]]; then
		echo "$1 es mayor que $2"
	elif [[ $1 -eq $2 ]]; then
		echo "$1 es igual a $2"
	else
		echo "$2 es mayor que $1"
	fi
else
	echo "ERROR: Debes pasar dos parametros"
fi
