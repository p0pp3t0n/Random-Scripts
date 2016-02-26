#!/bin/bash
#
# a) Écrire un script qui dit si le paramètre passé est : 
#
# 	un fichier ordinaire
# 	un répertoire 
# 	n'existe pas 
if test $# -ne 1
then
    echo "Usage : $0 <fichier>"
    exit 1
fi
if test -f "$1"
then
    echo "$1 est un fichier ordinaire"
elif test -d "$1"
    then
        echo "$1 est un repertoire"
    else
        echo "$1 n'est par un fichier ord ou rep"
fi





