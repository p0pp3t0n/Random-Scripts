#!/bin/bash
#
# Script qui utilise exec pour lire un fichier
# Parametre : le nom du fichier est passe dans la ligne de commande
#             Si pas de parametre , c'est le fichier /etc/passwd
#             qui est utilise 
#
fic=${1:-/etc/passwd}                           # Si aucun parametre n'est fourni il prend /etc/passwd par defaut
if [ -f "$fic" ]                                # Verifie si fic est un fichier ordinaire
then
    exec < "$fic"                               # Pas sure...   
    while read ligne                            # lit la/les lignes du fichier fic
    do
        echo $ligne
    done
else
    echo "$fic n'est pas un fichier ordinaire"
fi
