#!/bin/bash
clear

if (( EUID != 0 ))
then
  echo "Se ha de ejecutar con permisos root"
  exit 1 
fi

echo -n "Indica el nombre de usuario: "
read user

echo -n "Escrive una contraseña de 8 caracteres: "
read -s ctsAdm
echo

