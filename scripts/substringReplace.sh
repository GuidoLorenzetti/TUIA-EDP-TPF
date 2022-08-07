#!/bin/bash


texto=$(<$1)

cat /dev/null > lista1.txt

read -p "Inserte primer cadena: " cad1
read -p "Inserte segunda cadena: " cad2

for i in $texto
do
 echo $i | sed 's/é/e/g' | sed 's/á/a/g'  | sed 's/í/i/g' | sed 's/ó/o/g'  | sed 's/ú/u/g' | sed 's/É/E/g'  | sed 's/Á/A/g'  | sed 's/Í/I/g'  | sed 's/Ó/O/g' | sed 's/Ú/U/g' >> lista1.txt
  
done

lista=$(<$(pwd)/lista1.txt)

for x in $lista
do
  if [[ "$x" == *"$cad1"* ]]
  then
    echo "${x/"$cad1"/"$cad2"}" 
  fi
done
