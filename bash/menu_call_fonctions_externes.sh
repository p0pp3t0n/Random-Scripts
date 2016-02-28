#!/bin/bash
#
# Script qui propose un menu , avec utilisation de fonctions internes
#
# Chargement de mes fonctions
.  ~/bin/.mes_fonctions                         # On defini que les fonctions sont dans ce dossier

while true                                      # Loop infini   
do
    clear
    echo "1 - Liste des usagers"
    echo "2 - Liste des processus"
    echo "3 - Liste des fichiers ordinaires"
    echo "Q|q - Quitter"
    read -n 1 -p "Votre choix ? " choix         # Demande de prendre un choix et le met dans la variable choix
    case "$choix" in                            # Case pour la variable choix
        1) liste_users;;                        # Fais appel au fichier liste_users qui est un script
        2) liste_procs;;                        # Fais appel au fichier liste_procs qui est un script
        3) liste_fics;;                         # Fais appel au fichier liste_fics qui est un script
        Q|q) break;;                            # Si q\Q il sort de la loop
        *) read -n 1 -p " Mauvais choix ; Appuyer sur une touche pour continuer";;  # Detect si le choix n'est aucun de ceux qui sont dans la liste de case
    esac
done
echo
