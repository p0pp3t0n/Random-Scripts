#!/bin/bash
#
# Exemples d'utilisation de la structure for
#
for i in 1 3 6 7
do
    echo $i
done

suite=(1 3 6 7)
for i in ${suite[*]}
do
    echo $i
done

for fic in [ab]*
do
    if [ -f "$fic" ]  # uniquement ordinaire
    then    
        echo "$fic"  
    fi
done    

for fic in $(ls)
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
for ligne in $(cat /etc/passwd)
do
    echo $ligne
done














