#!/bin/bash

texto=$(</home/runner/TUIA-EDP-TPF/Textos/texto.txt)


rm lista1.txt

for i in $texto:
do
  echo $i >> lista1.txt
done


echo Emails encontrados:
cat lista1.txt | grep -o '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*'  | uniq -i



  
