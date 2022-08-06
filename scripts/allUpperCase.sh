#!/bin/bash


texto=$(</home/runner/TUIA-EDP-TPF/Textos/texto.txt)


rm lista1.txt

for i in $texto:
do
  echo $i >> lista1.txt
done

echo Palabras con todas sus letras en mayúscula:
cat lista1.txt | grep -P -o '\b[A-Z]+\b' | sort -n

