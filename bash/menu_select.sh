#!/bin/bash
#
# Script qui propose un menu avec l'instruction select
#
clear
opt1="Liste des usagers"
opt2="Liste des processus"
opt3="Liste des fichiers ordinaires"
opt4="Quitter"
select choix in "$opt1" "$opt2" "$opt3" "$opt4"
do
    case "$choix" in
        "$opt1") liste_users.sh;;
        "$opt2") liste_procs.sh;;
        "$opt3") liste_fics.sh;;
        "$opt4") break;;
    esac
done




