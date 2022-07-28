#!/bin/bash

#sol


#$find / -name ˈ[A-Z]*ˈ 

#grep -E '^[[:upper:]' file.txt

#grep -oP "\w*[A-Z]+\w*" yourfile.txt

#grep -o '\<[A-Z][a-z]*\>' file.txt

#grep -P '(^[\s]+[A-Z][a-z]+)|(^[A-Z][a-z]+)'

grep '\b[A-Z][a-z].*?\b' file.txt