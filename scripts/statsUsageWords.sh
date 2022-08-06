#!/bin/bash

texto=$(<$1)
for i in $texto;
do
  if [ ${#i} -ge 4 ];
  then
    echo $i >> lista1.txt
  fi
done

cat lista1.txt  | sort | uniq -c | sort -n -r | head -n 10 > lista.txt

cat lista.txt