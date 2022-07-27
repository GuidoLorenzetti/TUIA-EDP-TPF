#!/bin/bash


variable=$(<config.txt)


minusculas=$(echo $variable | tr '[:upper:]' '[:lower:]' && echo $variable | tr '[:lower:]' '[:upper:]')


echo "$variable" | tr '[:upper:]' '[:lower:]'

echo "$variable" | tr '[:lower:]' '[:upper:]'