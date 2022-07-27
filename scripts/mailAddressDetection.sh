#!/bin/bash


if [ -f "$1" ]; then
    grep -o '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' "$1" | sort | uniq -i
  else
    echo "Esperaba un archivo $1, pero no existe." 
    exit 1
fi