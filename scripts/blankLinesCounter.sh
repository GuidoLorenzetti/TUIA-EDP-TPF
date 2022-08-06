#!/bin/bash

texto=$(<$1)
echo 
awk ' length($0) < 1 ' $1 > lineas_vacias

lineas=/home/runner/TUIA-EDP-TPF/scripts/lineas_vacias

echo Hay
cat $lineas | wc -l
echo Líneas vacías