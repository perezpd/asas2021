#!/bin/bash
clear
  echo --------------------------------------------------------
  echo "-------- Using CASE - ESAC statemet by perezpd --------"
  echo "Script para asignar un mensaje según la nota pasada por"
  echo "parametro solicitado por pantalla."
  echo --------------------------------------------------------

read -p "Introduce una nota obtenida: " nota
if [ -n "$nota" ] # corrección para cuando se pulse enter
then
  # solo ejecutamos si la nota es correcta o no nula
case $nota in
  0 | 1 | 2 | 3 | 4)
    echo "lo siento no has llegado"
    ;;
  5)
    echo "Justito pero has llegado"
    ;;
  6)
    echo "Ánimo a seguir mejorando"
    ;;
  7 | 8 )
    echo "Buen progreso"
    ;;
  9 | 10)
    echo "Perfecto fenómeno!"
    ;;
  *)
    echo "No es una nota valida"
    echo Pruebe otra vez
    ;;
esac # no puede ir en mayúscula
else
  echo " no se ha introducido nota!!!!"
fi
