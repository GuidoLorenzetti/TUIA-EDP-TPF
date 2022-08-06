#!/bin/bash

texto=$(<$1)

echo > lista1.txt
echo 
for i in $texto:
do
  echo $i >> lista1.txt
done


echo Emails encontrados:
cat lista1.txt | grep -o '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*'  | uniq -i