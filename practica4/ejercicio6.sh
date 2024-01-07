#!/bin/bash

info=$(uptime && who)

hora_actual=$(date '+%H:%M:%S')

echo "$hora_actual $info" >> /var/log/historial.txt
