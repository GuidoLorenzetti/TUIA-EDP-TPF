#!/bin/bash



function palindromo
{
    grep -oiE '[a-z]{3,}' "$@" | tr '[:upper:]' '[:lower:]' | sed 's/é/e/g' | sed 's/á/a/g'  | sed 's/í/i/g' | sed 's/ó/o/g'  | sed 's/ú/u/g' | sed 's/É/E/g'  | sed 's/Á/A/g'  | sed 's/Í/I/g'  | sed 's/Ó/O/g' | sed 's/Ú/Ú/g'  | while read -r word; do
        [[ $word == $(rev <<< "$word") ]] && echo "$word"
    done
}

echo Palabras palíndromo:
palindromo $"/home/runner/TUIA-EDP-TPF/Textos/texto.txt"

