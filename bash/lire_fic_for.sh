#!/bin/bash
#
# Script qui lit un fichier ( texte ) avec la structure for.
#
old_ifs="$IFS"
IFS=$'\n'
for ligne in $(cat texte.txt)
do
    echo "$ligne"
done
IFS="$old_ifs"

