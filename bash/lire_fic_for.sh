#!/bin/bash
#
# Script qui lit un fichier ( texte ) avec la structure for.
#

old_ifs="$IFS"                  # Enregistre le separateur dans la variable old_ifs
IFS=$'\n'                       # Determine le separateur comme \n
for ligne in $(cat texte.txt)   # Loop pour lire les lignes du fichier
do
    echo "$ligne"
done
IFS="$old_ifs"                  # Remet l'ancien separateur

