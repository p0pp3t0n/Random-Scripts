#!/bin/bash
#
#   Script qui montre plusieurs variable predefini

echo "Nom du script : $0"                   # $0 nom du script
echo "Nombre de parametres         : $#"    # S# nombre de parametres
echo "Liste de tous les parametres : $*"    # S* liste de tous les parametres
echo "Premier parametre            : $1"    # S1 premier parametre
echo "Liste des parametres , un par ligne "
for i     # equivalent à : for i in $*      
do
        echo $i
    done
