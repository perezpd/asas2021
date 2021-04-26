#!/bin/bash
clear
  echo "--------------------------------------------------------"
  echo "---------- Use of functions by perezpd ----------------"
  echo "Script para ver el uso funciones y su utilización  "
  echo "Usamos la funcion saludar para moificar el saludo "
saludo="Hola que tal!"
function saludar {
  saludo="Hola, Muy buenas tardes!"
  #echo $saludo
}
echo $saludo
saludar
# despues de llamar a la función
echo $saludo
