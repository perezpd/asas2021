#!/bin/bash
clear
  echo --------------------------------------------------------
  echo "--------- ALL PARAMs USE  SHIFT by perezpd ------------"
  echo "Script para ver el uso de shift a los" 
  echo "parámetros pasados a esta funcion."
  echo --------------------------------------------------------
echo "Comprobamos el valor de los parametros de entrada:"

#Uso de shift. Tiene el mismo significado que en CMD, 
#desplazamiento de parámetros, de manera que se
#pierde el primero por la izquierda ($1) para que se pueda usar uno más
# por la derecha ($10) y así tener siempre disponibles nueve parámetros. 
# los parametros desplazados con shift se pierden: no se pueden recuperar
echo "Estos son los parámetros \$*: $*"

actual=1
while [ -n "$1" ]
do
  echo "Iteración número $actual valor de \$1 = $1"
  echo
  actual=$(($actual + 1))
shift
echo "--> parámetros después de shift: $*"
done
