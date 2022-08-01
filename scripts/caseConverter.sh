#!/bin/bash



file=$(</home/runner/TUIA-EDP-TPF/Textos/texto.txt)


for word in $file:
do
  echo $word | tr 'a-zA-Z' 'A-Za-z' | sed  's/é/É/g' | sed 's/í/Í/g' | sed  's/ó/Ó/g' | sed  's/ú/Ú/g' | sed  's/á/Á/g' 
done 

#| tr 'a-zA-Z' 'A-Za-z'  | sed  's/É/é/g' | sed 's/Í/í/g' | sed  's/Ó/ó/g' | sed  's/Ú/ú/g' | sed  's/Á/á/g'