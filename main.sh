#!/bin/bash

echo La aplicación consiste en diferentes scripts para el análisis de un texto. El mismo se encuentra en la carpeta Textos y puede ser cambiado a gusto del usuario. El siguiente menú presenta las diferentes opciones para selección de scripts. Elija la opción deseada ingresando el número correspondiente.
echo
cd scripts

function menu {
  echo Menú:
  echo 1. statsWords.sh
  echo 2. statsUsageWords.sh
  echo 3. findNames.sh
  echo 4. statsSentences.sh
  echo 5. blankLinesCounter.sh
  echo 6. caseConverter.sh
  echo 7. substringReplace.sh
  echo 8. blockSelection.sh
  echo 9. palindromeDetection.sh
  echo 10. oneVowelWords.sh
  echo 11. allUpperCase.sh
  echo 12. allVowelsInWord.sh
  echo 13. mailAddressDetection.sh
  echo 14. integerDetection.sh
  echo 15. Salir
  read opc
  return $opc
}

function scripts {
  opc=$1
  texto=$(cat /home/runner/TUIA-EDP-TPF/Textos/texto.txt)
  case $opc in
  1)
    bash statsWords.sh
    ;;
  2)
    bash statsUsageWords.sh $texto
    ;;
  3)
    bash findNames.sh $texto
    ;;
  4)
    bash statsSentences.sh $texto
    ;;
  5)
    bash blankLinesCounter.sh $texto
    ;;
  6)
    bash caseConverter.sh $texto
    ;;
  7)
    bash substringReplace.sh $texto
    ;;
  8)
    bash blockSelection.sh $texto
    ;;
  9)
    bash palindromeDetection.sh $texto
    ;;
  10)
    bash oneVowelWords.sh $texto
    ;;
  11)
    bash allUpperCase.sh $texto
    ;;
  12)
    bash allVowelsInWord.sh $texto
    ;;
  13)
    bash mailAddressDetection.sh $texto
    ;;
  14)
    bash integerDetection.sh $texto
    ;;
  esac
}

menu
while [ $opc -ne 15 ];
do
  scripts $opc
  menu
done