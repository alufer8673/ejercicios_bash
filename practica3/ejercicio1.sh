#!/bin/bash

# last -i | egrep -o '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' | awk '{print $1, $3}'

last -i | awk '{print $1, $3}' | grep -E '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'
