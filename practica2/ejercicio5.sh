#!/bin/bash

num=5

while [[ $num -gt 0 ]]
do
    # -n evita que se cree una nueva línea e imprime todo en la misma línea
    if [[ $num -ne 1 ]]; then
        echo -n "$num, "
        ((num--))
    else
        echo $num
        ((num--))
    fi
done