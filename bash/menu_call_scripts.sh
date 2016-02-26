#!/bin/bash
#
# Script qui propose un menu , avec appel de scripts
#
mes_script=/root/bin
trap "" 2 20
trap "" 15
while true
do
    clear
    echo "1 - Liste des usagers"
    echo "2 - Liste des processus"
    echo "3 - Liste des fichiers ordinaires"
    echo "Q|q - Quitter"
    read -n 1 -p "Votre choix ? " choix
    case "$choix" in
        1) $mes_script/liste_users.sh;;
        2) liste_procs.sh;;
        3) liste_fics.sh;;
        Q|q) break;;
        *) read -n 1 -p " Mauvais choix ; Appuyer sur une touche pour continuer";;
    esac
done
echo





