#!/bin/bash
texto=$(</home/runner/TUIA-EDP-TPF/Textos/texto.txt)

rm lista1.txt
rm lista.txt

for i in $texto;
do
  if [ ${#i} -ge 3 ];
  then
    echo $i >> lista1.txt
  fi
done

cat lista1.txt | grep a | grep -v e | grep -v i | grep -v o | grep -v u >> lista.txt
cat lista1.txt | grep e | grep -v a | grep -v i | grep -v o | grep -v u >> lista.txt
cat lista1.txt | grep i | grep -v e | grep -v a | grep -v o | grep -v u >> lista.txt
cat lista1.txt | grep o | grep -v a | grep -v i | grep -v e | grep -v u >> lista.txt
cat lista1.txt | grep u | grep -v a | grep -v i | grep -v o | grep -v e >> lista.txt

echo Las palabras monovocalicas son:
cat lista.txt | sort -n | uniq 