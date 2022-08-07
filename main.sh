#!/bin/bash

source functions.sh

echo La aplicación consiste en diferentes scripts para el análisis de un texto. El texto a analizar debe ser cargado en la carpeta Textos y seleccionado con el nombre exacto durante la ejecución del programa. 
echo

texto
cd ..
cd scripts/
echo El siguiente menú presenta las diferentes opciones para selección de scripts. Elija la opción deseada ingresando el número correspondiente.
echo
menu

while [[ $opc -ne 15 ]];
do
  scripts $opc $dir
  echo 
  menu
done

echo Cerrando
sleep 0.5
echo .
sleep 0.5
echo .
sleep 0.5
echo .
sleep 0.5
echo Programa finalizado
