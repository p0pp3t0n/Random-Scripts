#!/bin/bash
# S# est le nombre de parametres
# a) Écrire un script qui dit si le paramètre passé est : 
#
# 	un fichier ordinaire
# 	un répertoire 
# 	n'existe pas 

if test $# -ne 1                                # Verifie si S# est plus grand que 1
then
    echo "Usage : $0 <fichier>"                 # S0 est la variable qui contient le nom du script
    exit 1                                      # Donne la sortie 1
fi

if test -f "$1"                                 # Verifie si le fichier est ordinaire
then
    echo "$1 est un fichier ordinaire"
elif test -d "$1"                               # Verifie si le fichier est un repertoire
    then
        echo "$1 est un repertoire"
    else
        echo "$1 n'est par un fichier ord ou rep"
fi
