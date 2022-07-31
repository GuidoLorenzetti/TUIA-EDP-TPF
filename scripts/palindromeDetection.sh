#!/bin/bash



#texto=$(</home/runner/TUIA-EDP-TPF/Textos/texto.txt)

#for word in $texto: 
#do
  #if  [ $word == $word | rev ]
  #then
      #echo "Es un palindromo"
  #else
      #echo "No es un palindromo"
  #fi
#done

function search
{
    grep -oiE '[a-z]{3,}'   "$@" | tr '[:upper:]' '[:lower:]' | while read -r word; do
        [[ $word == $(rev <<< "$word") ]] && echo "$word"
    done
}

search $"/home/runner/TUIA-EDP-TPF/Textos/texto.txt"

