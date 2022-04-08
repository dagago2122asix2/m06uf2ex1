#!/bin/bash
clear
if (( EUID != 0 ))
then
  echo "Se ha de ejecutar con permisos root"
  exit 1 
fi

echo -n "Escribe el nombre del direcotrio que quieras crear:"
read directory

if [ -d $directory ] && [ ! -L $directory ]
then
	cp -r $dir_sys /mnt/
	mv /mnt/$directory /mnt/$directory.$(date +"%Y%m%d%H%M")
	exit 0
else
	echo "Error: No existe el Direcotrio"
	exit 1
fi
