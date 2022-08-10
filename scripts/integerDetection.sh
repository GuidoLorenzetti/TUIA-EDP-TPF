#!/bin/bash

texto=$(<$1)

cat /dev/null > lista1.txt
for i in $texto:
do
  if [[ "$i" =~ ^[0-9]+$ ]];
  then 
    echo $i >> lista1.txt
  fi
done
echo 
echo La lista ordenada de enteros es:
cat lista1.txt | sort -n -u
