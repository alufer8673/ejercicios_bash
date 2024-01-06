#!/bin/bash

find / -type f -perm -007 -exec readlink -f {} \; 2>/dev/null > archivos_peligrosos.txt
