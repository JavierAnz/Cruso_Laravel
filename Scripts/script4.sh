#!/bin/bash

echo -n "Escribe un número: "
read limite

total=0

for (( i = 1; i <= $limite; i++ )); do

    (( total= $total + $i ))
    echo $i
done

echo $total