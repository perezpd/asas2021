#!/bin/bash
clear
  echo --------------------------------------------------------
  echo "------- Use different file checks by perezpd ----------"
  echo "Script para ver el uso de comprobar qué tipo de archivo" 
  echo "es el pasado como parámetro al script."
  echo --------------------------------------------------------

if [ $# -eq 0 ]; then # el then tb puede ir en la misma línea
  echo Debes introducir al menos un argumento.
else
  echo "Muy bien, has introducido $# fichero(s)"
  echo Vamos a ver de qué tipo es:
  echo
fi
if [ -f "$1" ]; then
  echo –n "$1 es un archivo regular "
  if [ -x $1 ]; then
    echo "$1 es un archivo ejecutable"
  else
    echo "$1 es un archivo no ejecutable"
  fi
elif [ -d "$1" ]; then
  echo "$1 es un directorio"
else
  echo "$1 no es ni uno ni otro"
fi
