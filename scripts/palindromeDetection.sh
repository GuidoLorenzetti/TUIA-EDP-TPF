#!/bin/bash

if [ $# -ne 1 ]
then 
     echo "Ingrese un argumento"
else
     if [ $1 == $(echo $1 | rev) ]
     then
          echo "Es un palindromo"
     else
          echo "No es un palindromo"
     fi
fi
