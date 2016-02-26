#!/bin/bash
#
# Script qui lit une note
#
# 1 - Verifie si la note est numérique
# 2 - Vérifie si la note est comprise en 0 et 100
#
read -p "Donnez une note : " note
if echo "$note" | egrep -q "^[0-9]+$"
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

