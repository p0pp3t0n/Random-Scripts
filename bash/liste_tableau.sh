#!/bin/bash
#
#
fruits=(Bananes Fraises Kiwis Pommes Oranges)
taille=${#fruits[*]}
for((i=0;i<$taille;i++))
do
    echo ${fruits[$i]}
done
echo ${fruits[*]}
for element in ${fruits[*]}
do
    echo $element
done
