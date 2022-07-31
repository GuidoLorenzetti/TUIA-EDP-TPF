#!/bin/bash


#variable=$(<config.txt)


#minusculas=$(echo $variable | tr '[:upper:]' '[:lower:]' && echo $variable | tr '[:lower:]' '[:upper:]')
#file=$(file.txt)

file=$(</home/runner/TUIA-EDP-TPF/Textos/texto.txt)

for word in $file 
do
  echo $word | tr '[:upper:]' '[:lower:]' 
  echo $word | tr '[:lower:]' '[:upper:]'
done 

#for word in $file
#do 
  #echo $word | tr '[:lower:]' '[:upper:]'
#done