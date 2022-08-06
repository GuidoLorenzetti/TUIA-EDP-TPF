#!/bin/bash

texto=$1
cat /dev/null > lista1.txt
while IFS= read -r line
do
  if [ ${#line} -gt 0 ]
  then
    echo $line >> lista1.txt
  fi
done < $texto

read -p "Ingrese P para parrafos, O para oraciones: " opc

if [ "$opc" = "O" ]
then
  echo entre O
  cat lista1.txt | sed 's/[.!?]  */&\n/g' > lista.txt
fi
if [ "$opc" = "P" ]
then
  echo entre P
  cat lista1.txt > lista.txt
fi

read -p "Ingrese el numero de linea: " opc

cont=1
lista=/home/runner/TUIA-EDP-TPF/scripts/lista.txt
echo La linea elegida es:
while IFS= read -r line
do
  if [ $cont -eq $opc ]
  then
    echo $line
  fi
  let cont=$cont+1
done < $lista