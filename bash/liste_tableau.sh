#!/bin/bash
#
# Script qui lit des tableaux/liste 

fruits=(Bananes Fraises Kiwis Pommes Oranges)
taille=${#fruits[*]}            # Calcule la taille du tableau

for((i=0;i<$taille;i++))        # Loop jusqu'a que i est plus petit que la taille du tableau
do
    echo ${fruits[$i]}          # Echo chaque element du tableau
done
echo ${fruits[*]}               # Echo tous les elements du tableau sur une ligne

for element in ${fruits[*]}     # Fais un loop dans tous le tableau
do
    echo $element               # echo l'element dans lequel il loop
done
