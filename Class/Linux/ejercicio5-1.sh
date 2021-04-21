#!/bin/bash
clear
  echo --------------------------------------------------------
  echo "-------------- PARAM CHECK by perezpd -----------------"
  echo "Script para comprobar parámetros pasados a esta funcion"
  echo --------------------------------------------------------
if [ -n "$i" ]
then
  echo El parámetro es $1
else
  echo Debes indicar un parámetro
  echo Sintaxis:
  echo "  ejercicio5-1.sh parámetro_1"
fi 
