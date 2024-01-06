#!/bin/bash

valor=0

read -p "Introduce un número: " user_num

while [[ $user_num -ne 0 ]]
do
    valor=$(($valor+$user_num))
    echo "La suma total: $valor"
    read -p "Introduce un número: " user_num
done

echo "La suma total: $valor"