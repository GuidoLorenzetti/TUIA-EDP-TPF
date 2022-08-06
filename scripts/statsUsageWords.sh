#!/bin/bash

texto=$(<$1)
echo > lista1.txt

for i in $texto;
do
  if [ ${#i} -ge 4 ];
  then
    echo $i >> lista1.txt
  fi
done

cat lista1.txt  | sort | uniq -c | sort -n -r | head -n 10 > lista.txt

echo
echo Lista de las 10 palabras mas usadas:
cat lista.txt