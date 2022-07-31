#!/bin/bash




function search
{
    grep -oiE '[a-z]{3,}' "$@" | tr '[:upper:]' '[:lower:]' | sort | while read -r word; do
        [[ $word == $(rev <<< "$word") ]] && echo "$word"
    done
}

echo Palabras palíndromo:
search $"/home/runner/TUIA-EDP-TPF/Textos/texto.txt"

