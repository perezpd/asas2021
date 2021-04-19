#!/bin/bash
echo "Se van a crear $# directorios (\$#): $@ si no existen"
for directorio in $@
do
  if [ -d $directorio ]
  then
    echo "La carpeta $directorio ya existe."
  else
    mkdir $directorio
    # $? gurada el resultado del ultimo comando ejecutado, mkdir aqui
    if [ $? -eq 0 ]
    then
      echo "$directorio se ha creado correctamente"
    else
      echo "Parece que hay problemas"
    fi
  fi
done
echo "El contenido de nuestro directorio es: "
#ls -la --color='always'
tree -L 3
