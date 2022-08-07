#!/bin/bash

texto=$(<$1)

cat /dev/null > lista1.txt
cat /dev/null > lista.txt

for i in $texto;
do
  if [ ${#i} -ge 3 ];
  then
    echo $i >> lista1.txt
  fi
done

cat lista1.txt | grep -i a | grep -v e | grep -v i | grep -v o | grep -v u | grep -v é | grep -v í | grep -v ó | grep -v ú | grep -v E | grep -v I | grep -v O | grep -v U >> lista.txt
cat lista1.txt | grep -i e | grep -v a | grep -v i | grep -v o | grep -v u | grep -v á | grep -v í | grep -v ó | grep -v ú | grep -v A | grep -v I | grep -v O | grep -v U >> lista.txt
cat lista1.txt | grep -i i | grep -v e | grep -v a | grep -v o | grep -v u | grep -v é | grep -v á | grep -v ó | grep -v ú | grep -v E | grep -v A | grep -v O | grep -v U >> lista.txt
cat lista1.txt | grep -i o | grep -v a | grep -v i | grep -v e | grep -v u | grep -v á | grep -v í | grep -v é | grep -v ú | grep -v A | grep -v I | grep -v E | grep -v U >> lista.txt
cat lista1.txt | grep -i u | grep -v a | grep -v i | grep -v o | grep -v e | grep -v á | grep -v í | grep -v ó | grep -v é | grep -v A | grep -v I | grep -v O | grep -v E >> lista.txt

echo
echo Las palabras monovocalicas son:
cat lista.txt | sort -n | uniq 
