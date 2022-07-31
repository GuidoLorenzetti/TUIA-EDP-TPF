#!/bin/bash




#$find / -name ˈ[A-Z]*ˈ 

#grep -E '^[[:upper:]' file.txt

#grep -oP "\w*[A-Z]+\w*" yourfile.txt

#grep -o '\<[A-Z][a-z]*\>' file.txt

#grep -P '(^[\s]+[A-Z][a-z]+)|(^[A-Z][a-z]+)'

texto=$(</home/runner/TUIA-EDP-TPF/Textos/texto.txt)


rm lista1.txt

for i in $texto:
do
  echo $i >> lista1.txt
done

echo Nombres encontrados:
cat lista1.txt | grep -P '\b[A-Z][a-z].*?\b' | sort -n

