#!/bin/bash
#
# Script qui lit une serie de notes
#
# 1 - Si la note introduite est "fin" ou "Fin" , c'est la fin
# 2 - Verifie si la note est numérique
# 3 - Vérifie si la note est comprise en 0 et 100
#
read -p "Donnez une note : " note               # Demande de rentrer une note

until [[ "$note" =~  ^[fF]in$ ]]                # Jusqu'a que l'utilisateur ecrie Fin
do 
    if [[ "$note" =~ ^[0-9]+$ ]]                # Verifie si il commence par un chiffre et fini par un chiffre
    then
        if [ "$note" -ge 0 -a "$note" -le 100 ] # Verifie si note est entre 0 et 100
        then
            echo "$note acceptable"
        else
            echo "$note rejetée"
        fi
    else
        echo "$note non numérique"
    fi
    read -p "Donnez une note : " note           # Pour le loop il redemande une autre note
done
