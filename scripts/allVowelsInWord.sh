#!/bin/bash

texto=$(<$1)

cat /dev/null > lista1.txt

for i in $texto:
do
  echo $i >> lista1.txt
done

cat lista1.txt | grep a | grep e | grep i | grep o | grep u | sort -n | uniq -c
