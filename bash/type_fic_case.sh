#!/bin/bash
#
# Script à un argument ( $1 ) qui doit être un nom de fichier
#
#
if [ $# -ne 1 ]
then
    echo -e "\nSyntaxe : $0 <fichier>\n"
    exit 1
fi
if [ ! -e "$1" ]
then
    echo -e "\n$1 n'existe pas\n"
    exit 2
fi
type_fic=$(ls -ld "$1" | cut -c1)
case "$type_fic" in
    d) echo "$1 est un repertoire";;
    l) echo "$1 est un lien symbolique";;
    c|b) echo "$1 est un fichier special";;
    s) echo "$1 est un fichier socket";;
    p) echo "$1 est un fichier pipe";;
    -) echo "$1 est un fichier ordinaire";;
esac











