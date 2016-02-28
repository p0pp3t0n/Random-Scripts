#!/bin/bash
#
# Script qui affiche les cartes reseaux et les ip associes
#
liste_cartes=$(netstat -i | tail -n +3 | cut -d" " -f1)     # on met les cartes reseaux dans liste_cartes
for carte in $liste_cartes                                  # Chaque elements dans liste cartes va rentrer dans le variable carte et sa loop jusqu'a
do                                                          # Qu'il ai aucun element qui reste dans la variable liste_cartes
    ifconfig  $carte | egrep "inet (adr|addr)"              # Fais le ifconfig de la carte et cherche la ligne qui contient adr ou addr
done
