#!/bin/bash

fecha=$(date '+%d-%m-%Y %H-%M-%S')

num_usuarios=$(who | cut -d' ' -f1 | sort -u | wc -l)

echo "$fecha $num_usuarios usuarios conectados" >> /tmp/usuarios
