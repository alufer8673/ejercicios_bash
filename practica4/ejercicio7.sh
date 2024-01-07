#!/bin/bash

if [[ $(date +%u) -eq 7 ]]; then
    rm -rf /tmp/* /temp/*
else
    echo "Hoy no es domingo. No se realizará la limpieza."
fi
