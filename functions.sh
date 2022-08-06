#!/bin/bash

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
  texto=$2
  case $opc in
  1)
    bash statsWords.sh $texto
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

function texto {
  cd /home/runner/TUIA-EDP-TPF/Textos/
  echo Archivos disponibles para analizar:
  ls
  echo Seleccione el archivo:
  read txt
  dir=/home/runner/TUIA-EDP-TPF/Textos/$txt
}