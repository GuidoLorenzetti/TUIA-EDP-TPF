#!/bin/bash
texto=$(</home/runner/TUIA-EDP-TPF/Textos/texto.txt)

rm lista1.txt
rm lista.txt

for i in $texto;
do
  if [ ${#i} -ge 3 ];
  then
    echo $i >> lista1.txt
  fi
done

cat lista1 >> lista.txt


cat lista.txt | sort 