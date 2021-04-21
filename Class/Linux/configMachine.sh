#!/bin/bash
#valor inicial da opcion
clear
opcion=a
while [ "$opcion" != "s" -a "$opcion" != "S" ]
do
  if [ "$opcion" != 'a' ]
  then
    echo
    read -p "Pulsa una tecla para continuar..."
    clear
  fi
  echo --------------------------------------------------------
  echo "-------------- SYSTEM INFO by perezpd -----------------"
  echo "Esta es la herramienta información de config del equipo"
  echo --------------------------------------------------------
  echo "Opciones disponibles:"
  echo E - Consultar nombre del equipo
  echo R - Consultar configuración de red
  echo D - Consultar directorio de usuario
  echo S - Salir del menú
  echo
# leemos la opcion por pantalla
read -p "Indica la opción elegida:" opcion
# TEST si opcion NO se mete vacia
# devuelve true cuando opcion no está vacia
if [ -n "$opcion" ]
then
case "$opcion" in
  e|E)
    clear
    echo Opción elegida: E - Consultar nombre del equipo
    echo --------------------------------------------------------
    echo "Nombre del equipo: $(hostname)"
    ;;
  r|R)
    clear
    echo Opción elegida: R - Consultar configuración de red
    echo --------------------------------------------------------
    echo "configuracion de red: $(ip a)"
    ;;
  d|D)
    clear
    echo Opción elegida: D - Consultar directorio de usuario
    echo --------------------------------------------------------
    #para comprobar si cadenas son iguales se usa =
    # variable PWD: es el directorio actual donde está el usuario
    # HOME: directorio de conexión de usuario
    if [ $PWD = $HOME ]
    then
      echo Estás en tu directorio home: $HOME
    else
      echo No estas en tu directorio $HOME, estás en $PWD
    fi
    ;;
  s|S)
    echo --------------------------------------------------------
    echo "Bye bye!!"
    ;;
  *)
    echo
    echo "xxxxxxxx   Opción incorrecta!!!! xxxxxxxx"
    ;;
esac # fin del case
fi #fin del if de comprobación de opción vacia
done #fin del while
