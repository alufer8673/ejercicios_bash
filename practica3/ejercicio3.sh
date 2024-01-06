#!/bin/bash

function nombre_user(){
    apellido1=$(echo $1 | awk '{print substr($1,1,2)}')
    apellido2=$(echo $2 | awk '{print substr($1,1,2)}')
    nombre=$(echo $3 | awk '{print substr($1,1,1)}')
    echo "$apellido1$apellido2$nombre"
}

if [[ $# -eq 4 ]] || [[ $# -eq 5 ]]; then
    if [[ $1 == "alta" ]] && [[ $# -eq 5 ]]; then
        sudo useradd -m -s /bin/bash -g $5 $(nombre_user $3 $4 $2) 
    elif [[ $1 == "baja" ]]; then
        sudo userdel -r $(nombre_user $3 $4 $2)
    else
        sudo useradd -m -s /bin/bash $(nombre_user $3 $4 $2)
    fi
else
    echo "ERROR: Debes pasar 4 parámetros."
    echo "Forma correcta de ejecutar el script:"
    echo "  ./ejercicio3.sh alta/baja nombre apellido1 apellido2 [grupo]"
fi
