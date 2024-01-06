#!/bin/bash

function nombre_user(){
    apellido1=$(echo $1 | awk '{print substr($1,1,2)}')
    apellido2=$(echo $2 | awk '{print substr($1,1,2)}')
    nombre=$(echo $3 | awk '{print substr($1,1,1)}')
    echo "$apellido1$apellido2$nombre"
}

if [[ $# -eq 1 ]]; then
    while IFS=, read -r accion nombre apellido1 apellido2 grupo;
    do
        if [[ "$action" == "alta" ]] && [[ "grupo" ]]; then
            useradd -m -s /bin/bash -g "$grupo" $(nombre_user "apellido1" "apellido2" "nombre")
        else
            useradd -m -s /bin/bash $(nombre_user "apellido1" "apellido2" "nombre")
        fi
    done < "$file_path"
else
    echo "ERROR: La forma correcta de ejecutar el script:"
    echo "  ./ejercicio3.sh {ruta del fichero}"
fi
