#!/bin/bash/

texto=$(<$1)

cont=0
long=0
for i in $texto;
do
  if [ $cont -eq 0 ];
  then
    min=${#i}
    corta=$i
    max=${#i}
    larga=$i
  else
    if [ ${#i} -lt $min ];
    then
      min=${#i}
      corta=$i
    fi
    if [ ${#i} -gt $max ];
    then
      max=${#i}
      larga=$i
    fi
  fi
  let long=long+${#i}
  let cont=cont+1
done

promedio=$(($long/$cont))
echo
echo La palabra mas corta es $corta
echo La palabra mas larga es $larga
echo El promedio de longitud es de $promedio caractéres por palabra.
