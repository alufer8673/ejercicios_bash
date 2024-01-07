#!/bin/bash

fecha_actual=$(date '+%d-%m-%Y %H:%M:%S')

echo "Equipo reiniciado: $fecha_actual" >> /var/log/reinicios.txt
