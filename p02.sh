#!/bin/bash
clear
if (( EUID != 0 ))
then
	echo "Se ha de ejecutar con permisos root"
	exit 1
fi
echo -n "Escribe el nombre del direcotrio que quieras crear:"
read dir

if [ -d /var/$dir ] && [ ! -L /var/$dir ]
then
	echo "El directorio ya existe"
	exit 2
else
	mkdir /var/$dir
	cp /etc/ssh/sshd_config /var/$dir
	cp /etc/cups/cupsd.conf /var/$dir
	echo "Ficheros Copiados"
fi
echo -n "Vols continuar? Yes [y] | No [n]:  "
read resp

if  [[  $Press  ==  "y"  ]]
then
    ( exec "./p02.sh" )
else
    exit 5
fi
