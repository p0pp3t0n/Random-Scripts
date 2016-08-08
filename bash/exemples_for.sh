#!/bin/bash
#
# Exemples d'utilisation de la structure for
#
for i in 1 3 6 7
do
    echo $i
done

suite=(1 3 6 7)       # Defini l'array suite
for i in ${suite[*]}  # Permet de lire le array
do
    echo $i
done

for fic in [ab]*      # Tout les fichiers qui commence par a ou b
do
    if [ -f "$fic" ]  # uniquement ordinaire
    then    
        echo "$fic"  
    fi
done    

for fic in $(ls)      # Tout les fichiers dans le dossier local
do
    if [ ! -f "$fic" ]   # autre que ordinaire
    then    
        echo "$fic"
    fi
done    

echo "====================================================="
for var   # identique :  for var in $*
do
    echo $var
done

echo "====================================================="
IFS=$'\n'
for ligne in $(cat /etc/passwd) # Lit le fichier /etc/passwd
do
    echo $ligne
done
