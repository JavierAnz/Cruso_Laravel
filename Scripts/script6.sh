#!/bin/bash

error() {
    echo $1
    exit 1
}

# Comprobar que el número de parámetros es correcto

# Comprobar que el directorio existe

# Recorrer cada fichero del directorio

# Guardar en una variable el nombre actual con la ruta completa

# Guardar en una variable el nombre nuevo

# Cambiar el nombre del fichero

# Imprimir lo que está haciendo el script



if [ $# -ne 4]; then 

    error " Uso: Script Nombre Extension Numero Ruta"
fi

if [ ! -d $4 ]

    error "Error: el directorio no extiste"
fi

if [ $3 -lt 1 ]; then

    error" Error: el numero de ficheros no puede ser menor que 1"
fi

for (( i = 1; 1 <= $3; i++ )); do

    name="$4/$1.$2"
    if [$i -lt 10 ]; then

        name="$4/$10$1.$2"
    fi

    touch $name

    echo "Fichero $name creado" | tr -s /
done 

    