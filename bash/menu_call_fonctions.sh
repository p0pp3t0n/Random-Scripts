#!/bin/bash
#
# Script qui propose un menu , avec utilisation de fonctions internes
#

liste_users(){ less /etc/passwd;}           # Definir fonction liste_users
liste_procs(){ ps -e | less;}               # Definir fonction liste_procs
liste_fics()                                # Definir fontion liste_fics

{
    find -type f | less                     # Cherche les fichiers ordinaires dans le dossier courant
}

while true                                  # Loop infini
do
    clear
    echo "1 - Liste des usagers"
    echo "2 - Liste des processus"
    echo "3 - Liste des fichiers ordinaires"
    echo "Q|q - Quitter"
    read -n 1 -p "Votre choix ? " choix     # Demande d'un reponse et on la met dans choix
    case "$choix" in
        1) liste_users;;                    # Choix 1, execute la fonction liste_users
        2) liste_procs;;                    # Choix 2, execute la fonction liste_procs
        3) liste_fics;;                     # Choix 3, execute la fonction liste_fics
        Q|q) break;;                        # Si choix = q\Q alors on break pour sortir de la loop
        *) read -n 1 -p " Mauvais choix ; Appuyer sur une touche pour continuer";; # Choix si la variable choix ne match aucun de nos case
    esac
done
echo
