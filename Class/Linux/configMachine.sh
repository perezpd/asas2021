#!/bin/bash
#valor inicial da opcion
opcion=a
while [ $opcion != "s" -a $opcion != "S" ]
do
  echo 
  echo --------------------------------------------------------
  echo "--------------------SYSTEM INFO-------------------------"
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
case "$opcion" in
  e|E)
    echo "Nombre del equipo: $(hostname)"
    ;;
  r|R)
    echo "configuracion de red: $(ip a)"
    ;;
  d|D)
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
    echo "Bye bye!!"
    ;;
  *)
    echo "Opción incorrecta!!!!"
    ;;
esac # fin del case
done #fin del while
