#!/bin/bash
#
# Script qui affiche les cartes reseaux et les ip associes
#
liste_cartes=$(netstat -i | tail -n +3 | cut -d" " -f1)
for carte in $liste_cartes
do
    ifconfig  $carte | egrep "inet (adr|addr)"
done

