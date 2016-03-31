#!/bin/bash
#
# Selection des enregistrements dont la valeur est supérieure à 10.
#
#
fic="./materiels.txt"
cat "$fic" | while read article prix
do
    if [ $prix -ge 10 ]
    then
        echo -e "$article \t $prix"
    fi
done

