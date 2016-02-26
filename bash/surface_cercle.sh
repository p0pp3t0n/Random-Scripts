#!/bin/bash
#
# Nom du script   : /root/bin/surface_cercle.sh
#
# Date derniere modification : mer. 03 févr. 2016 14:20:09 EST mer.
#
# Auteur(e)  : Ali kaisserli
#
# Parametres :  Non
#
# Entrée(S)  : Rayon
#
# Sortie(s)  : La surface
#
clear
read -p "Votre rayon : " rayon
pi="3.14"
surface=$( echo "$pi*$rayon^2" | bc -l)
echo "Surface = $surface"





