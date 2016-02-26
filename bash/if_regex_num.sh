#!/bin/bash
#
# Script qui lit une note
#
# 1 - Verifie si la note est numérique
# 2 - Vérifie si la note est comprise en 0 et 100
#
read -p "Donnez une note : " note # Demande de rentrez une note

if [[ "$note" =~ ^[0-9]+$ ]]      # Verifie si note commence et termine par un chiffre
then
    if [ "$note" -ge 0 -a "$note" -le 100 ] # Verifie si note greater or equal (-ge) a zero et (-a) less than (-le) a 100
    then
        echo "$note acceptable"
    else
        echo "$note rejetée"
    fi
else
    echo "$note non numérique"
fi
