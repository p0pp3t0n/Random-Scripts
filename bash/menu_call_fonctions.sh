#!/bin/bash
#
# Script qui propose un menu , avec utilisation de fonctions internes
#
liste_users(){ less /etc/passwd;}
liste_procs(){ ps -e | less;}
liste_fics()
{
    find -type f | less
}
while true
do
    clear
    echo "1 - Liste des usagers"
    echo "2 - Liste des processus"
    echo "3 - Liste des fichiers ordinaires"
    echo "Q|q - Quitter"
    read -n 1 -p "Votre choix ? " choix
    case "$choix" in
        1) liste_users;;
        2) liste_procs;;
        3) liste_fics;;
        Q|q) break;;
        *) read -n 1 -p " Mauvais choix ; Appuyer sur une touche pour continuer";;
    esac
done
echo





