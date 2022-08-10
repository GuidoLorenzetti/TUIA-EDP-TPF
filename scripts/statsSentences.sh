#!/bin/bash

texto=$1

cat $texto | sed 's/[.!?]  */&\n/g' > lista1.txt

cont=0
suma=0
while IFS= read -r line
do
  if [ $cont -eq 0 ]
  then
    max=$line
    min=$line
  fi
  if [ ${#line} -gt ${#max} ]
  then
    max=$line
  fi
  if [ ${#line} -lt ${#min} ] && [ ${#line} -gt 1 ]
  then
    min=$line
  fi
  let cont=$cont+1
  let suma=$suma+${#line}
done < lista1.txt

if [ $cont -ne 0 ]
then
  let promedio=$suma/$cont
fi
echo
echo La oración mas larga es: $max
echo
echo La oración mas corta es: $min
echo
echo El promedio de longitud es de $promedio caractéres.
