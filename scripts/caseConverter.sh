#!/bin/bash

texto=$1

while IFS= read -r line
do
  echo $line | tr 'a-zA-Z' 'A-Za-z' | sed 's/é/E/g' | sed 's/á/A/g'  | sed 's/í/I/g' | sed 's/ó/O/g'  | sed 's/ú/U/g' | sed 's/É/e/g'  | sed 's/Á/a/g'  | sed 's/Í/i/g'  | sed 's/Ó/o/g' | sed 's/Ú/u/g' 
done < $texto