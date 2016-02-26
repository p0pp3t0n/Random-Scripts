#!/bin/bash
#
# Script qui lit une serie de notes
#
# 1 - Si la note introduite est "fin" ou "Fin" , c'est la fin
# 2 - Verifie si la note est numérique
# 3 - Vérifie si la note est comprise en 0 et 100
#
while true                                      # Loop a l'infini
do
    read -p "Donnez une note : " note           # Demande la note
    if [[ "$note" =~  ^[fF]in$ ]]               # Verifie si note commence et fini par un chiffre
    then
        break                                   # Sinon break, sort de la boucle while
    fi
    if [[ "$note" =~ ^[0-9]+$ ]]                # Verifie si la note commence et fini par un chiffre
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
done
