#!/bin/bash
#
# Selection des enregistrements dont la valeur est supérieure à 10.
#
#
fic="./materiels.txt"               #fic load le fichier materiels.txt
cat "$fic" | while read article prix #cat materiels ensuite met l info dans var
do
    if [ $prix -ge 10 ]
    then
        echo -e "$article \t $prix"
    fi
done
