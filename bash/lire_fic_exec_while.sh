#!/bin/bash
#
# Script qui utilise exec pour lire un fichier
# Parametre : le nom du fichier est passe dans la ligne de commande
#             Si pas de parametre , c'est le fichier /etc/passwd
#             qui est utilise 
#
fic=${1:-/etc/passwd}
if [ -f "$fic" ]
then
    exec < "$fic"
    while read ligne
    do
        echo $ligne
    done
else
    echo "$fic n'est pas un fichier ordinaire"
fi

