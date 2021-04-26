#!/bin/bash
clear
  echo "--------------------------------------------------------"
  echo "---------- Use command date by perezpd ----------------"
  echo "Script para ver el uso del comando date para realizar  "
  echo "copias de seguridad con fecha al script."
  echo	"tar: opciones:"
  echo  "    c -> crear"
  echo  "    x -> extraer"
  echo  "    v -> verbose para mostrar lo que va copiando"
  echo  "    z -> comprimir en zip"
  echo  "    r -> renombrar (que cree el nombre del fichero\)"
  echo  "    f es para extraer y para identificar que fichero es"
  echo "--------------------------------------------------------"
fecha=$(date +%d%m%y-%H:%M:%s)
#tar cvzf /home/$USER/backups/tareas-$fecha.tgz /home/$USER/tareas
# update 1: comprobar directorio
backups=$HOME/backups
folder=$HOME/tareas
if [ ! -d "$folder" -o ! "$(@ls $folder 2>&1)" ]
then
  echo "No hay tareas a copiar. Cerramos"
else
  if [ ! -d $backups ]
  then
    echo "El direcotrio de backups no existe: procedemos a crearlo"
    mkdir $folder
    ls -la $folder
  else
    echo "Hay tareas y el directorio backups está listo. Procedemos"
    tar cvzf $HOME/backups/tareas-$fecha.tgz $HOME/tareas
    echo "Backup terminado"
    ls -lah $backups
  fi
fi

#echo "Empezando la copia..."
#tar cvzf $HOME/backups/tareas-$fecha.tgz $HOME/tareas
#echo "Backup terminado"
#ls -lah $folder
