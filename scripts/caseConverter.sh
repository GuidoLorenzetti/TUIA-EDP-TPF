#!/bin/bash


#variable=$(<config.txt)


#minusculas=$(echo $variable | tr '[:upper:]' '[:lower:]' && echo $variable | tr '[:lower:]' '[:upper:]')
#file=$(file.txt)

file=$(<file.txt)

for word in $file 
do
  echo $word | tr '[:upper:]' '[:lower:]' 
done 

for word in $file
do 
  echo $word | tr '[:lower:]' '[:upper:]'
done