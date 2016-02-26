#!/bin/bash
# Le script demande a l'utilisateur de rentrer 10 notes et ensuite les imprime
#
# Boucle qui demande a l'utilisateur de rentrer des notes ensuite le met dans l'indice i
for((i=0;i<=9;i++))
do
	read -p "note $[i+1] = " n1
	tab[$i]=$n1
done
# Boucle qui imprime chaque element de la liste
for((i=0;i<=9;i++))
do
	echo " ${tab[$i]} "
done

