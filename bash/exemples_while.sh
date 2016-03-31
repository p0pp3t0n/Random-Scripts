#!/bin/bash
#
#
# Exemple de for((i=1;i<=10;i++)) traduit en boucle while
#
i=1
while [ $i -le 10 ]
do
    echo $i
    let i++   # let i=i+1 # i=$((i+1)) # i=$[i+1] # i=$(expr $i + 1)
done

# Lire un fichier ( redirection de l'entree standard )
#
fic=${1:-/etc/yum.conf}
if [ -f "$fic" ]
then
    while read enrg
    do
        echo $enrg
    done < "$fic"
else
    echo "$fic n'existe pas ou pas ordinaire"
fi

fic=${1:-/etc/yum.conf} # Fichier par defaut, si pas "$1"
if [ -f "$fic" ]
then
    while read enrg
    do
        echo $enrg
    done < <(cat "$fic")
else
    echo "$fic n'existe pas ou pas ordinaire"
fi






