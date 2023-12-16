#!/bin/bash
if [[ $# -eq 2 ]]; then
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
