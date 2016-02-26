#!/bin/bash
#
#
echo "Nom du script : $0"
echo "Nombre de parametres         : $#"
echo "Liste de tous les parametres : $*"
echo "Premier parametre            : $1"
echo "Liste des parametres , un par ligne "
for i     # equivalent à : for i in $*
do
    echo $i
done
