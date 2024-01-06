#!/bin/bash

for (( fila=1; fila<=5; fila++ ))
do
    for (( col=1; col<=fila; col++))
    do
        echo -n "$fila"
    done
    echo ""
done