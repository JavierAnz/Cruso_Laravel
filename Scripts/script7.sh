#!/bin/bash

error() {
    echo $1
    exit 1
}

comprobar(){

    if [ ! -d $4 ]; then
        error "Error: el directorio no existe"
    fi

    if [ $3 -lt 1 ] ; then
        error "Error: el numero de ficheros no puede ser menor que 1"
    fi

}
# Comprobar que el número de parámetros es correcto

# Comprobar que el directorio existe

# Recorrer cada fichero del directorio

# Guardar en una variable el nombre actual con la ruta completa

# Guardar en una variable el nombre nuevo

# Cambiar el nombre del fichero

# Imprimir lo que está haciendo el script




if [ $# -eq 4 ]; then

    comprobar 
    for (( i = 1; i <= $3; i++ )); do
        name="$4/$1$i.$2"
        if [ $i -lt 10 ]; then
            name="$4/$10$i.$2"
        fi
        touch $name
        echo "Fichero $name creado" | tr -s /
    done

else [ $# -eq 5 ]

    directorio="$4/$5"
    mkdir $directorio
    cd $5

    for (( i = 1; i <= $3; i++ )); do
        name="$4/$1$i.$2"
        if [ $i -lt 10 ]; then
            name="$4/$5/$10$i.$2"
        fi
        touch $name
        echo "Fichero $name creado" | tr -s /
    done
fi


    