#!/bin/bash
#
# Ce script demande a l'utilisateur de rentrer 10 notes et les compare pour trouver le plus gros d'entre eux

# Demande l'utilisateur de rentrer des notes
for((i=0;i<=9;i++))
do
	read -p "note $[i+1] = " n1
	tab[$i]=$n1
done

# Trouver le maximum des 10 nombres

max=0                       # Declarer la variable a l'exterieur de la boucle
for((i=0;i<=9;i++))
do
	if(( ${tab[$i]} > max)) # Condition pour voir si la tab[i] est superieur a max
	then
		max=${tab[$i]}      # Si oui, met tab[i] dans max
	fi
done

echo "max = $max"           # Print le plus gros chiffre
