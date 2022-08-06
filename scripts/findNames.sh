#!/bin/bash

texto=$(<$1)

rm lista1.txt

for i in $texto:
do
  echo $i >> lista1.txt
done

echo Nombres encontrados:
cat lista1.txt | grep -P '\b[A-Z][a-z].*?\b' | sort -n

