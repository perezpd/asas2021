#!/bin/bash
clear
  echo --------------------------------------------------------
  echo "------------ ALL PARAMs CHECK by perezpd --------------"
  echo "Script para comprobar parámetros pasados a esta funcion"
  echo --------------------------------------------------------
echo "Comprobamos el valor de los parametros de entrada:"
echo "\$*: $*" # \ la barra invertida <escapa> el $ para mostrar EL NOMBRE de la variable
echo "\$#: $#"
echo "Comprobamos el valor de \$*:"
total=1
for var in "$*"
do
  # voy a comprobar que var no sea vacío
  if [ -n "$var" ]
  then
    echo "\$* --> parametro $total = $var"
    total=$(($total + 1)) # doble parentesis se considera que hay que operar dentro
  fi
done
echo "Comprobamos el valor de \$@:"
total=1
for var in "$@"
do
  echo "\$@ --> parametro $total = $var"
  total=$(($total + 1))
done
