#!/bin/bash
#
# Script qui lit une serie de notes
#
# 1 - Si la note introduite est "fin" ou "Fin" , c'est la fin
# 2 - Verifie si la note est numérique
# 3 - Vérifie si la note est comprise en 0 et 100
#
read -p "Donnez une note : " note
until [[ "$note" =~  ^[fF]in$ ]]
do 
    if [[ "$note" =~ ^[0-9]+$ ]]
    then
        if [ "$note" -ge 0 -a "$note" -le 100 ]
        then
            echo "$note acceptable"
        else
            echo "$note rejetée"
        fi
    else
        echo "$note non numérique"
    fi
    read -p "Donnez une note : " note
done

