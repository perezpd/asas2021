#!/bin/bash
#--------------------------------------------------------
#------- Use a source file to automate a task jod for
#------- user and folder creation by perezpd ----------
#--------------------------------------------------------
# define date string para las lineas de los logs
date=`date +%F-%H%M`
# definir fichero del día en carpeta log
log_dir=/log/folder_creator_`date +%F`.log
#echo $log_dir
# comprobación de la carpeta shared:
#    - saber si hay usuarios pendientes de crear
# guardamos en users toda la lista que nos devuelva el ls 
users=$(ls /shared)
#echo "Usuarios: "
#echo ${users[*]}
for user in ${users[@]}
do
#  echo $user
  # comprobacion de si el usuario existe
  uname=$(cat /etc/passwd | grep $user)
  if [ $uname ]
  then
    # log para el fichero en caso de que ya exista
    echo "[$date]--x-- Ya existe el usuario $user. No se crea!"  >> $log_dir
  else
    echo "[$date] Se crea el usuario $user..." >> $log_dir
    # se crea el usario sin contraseña y con su home con el modificador -m
    useradd -m $user
    # mensaje de  bienvenida
    echo "echo Hola $user! Bienvenido" >> /home/$user/.bashrc
  fi
  dirs=`cat /shared/$user`
  echo "[$date] Los directorios de $user son: $dirs" >> $log_dir
  for dir in ${dirs[@]}
  do
    echo "[$date] Creamos el directorio $dir de $user" >> $log_dir 
    mkdir /home/$user/$dir 
  done
  if [ $? -eq 0 ]
  then
    rm -rf /shared/$user
  fi
done



