#!/bin/bash


sol 

file=$(<file.txt)

for word in $file 
do
    grep -i $word
    if  [ $word == $(echo $1 | rev) | grep -i ]
    then
         echo "Es un palindromo"
    else
         echo "No es un palindromo"
    fi
done


