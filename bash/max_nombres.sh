#!/bin/bash
#
# Scrip qui loop jusqu'a qu'on ecris 9999999 et qui garde en memoire
# Le plus gros chiffre qu'on a ecris

max=0                       # Initiation de la variable
read -p " Nombre " n1       # Demande de rentrer une donne
while((n1 != 999999))       # Loop jusqu'a que n1 n'est pas egale a 9999999
do
	if((n1 > max))          # Verifie si n1 est plus grand que max
	then
		max=$n1             # Si oui mais n1 dans max
	fi
	read -p " Nombre " n1   # On redemande un chiffre et on refais le loop.
done
echo "Max = $max"           # Echo le chiffre le plus gros qu'on a ecris

