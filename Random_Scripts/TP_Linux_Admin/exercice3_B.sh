#!/bin/bash
#
# Le programme affiche un menu qui boucle et offre l'utilisateur de choisir un choix
#

choix=" "
while true;do
    echo -e "\n1 - Liste des utilisateurs\n2 - Liste des fichiers ordinaires\n3 - Listes des processus\nQ - Quitter\n"
    read -p "Entrez votre choix : " choix 
    choix=$(echo $choix |  tr '[:upper:]' '[:lower:]')
    case $choix in
        1) 
            echo "1 - Liste des utilisateurs"
            ;;
        2)
            echo "2 - Liste des fichiers ordinaires"
            ;;
        3)
            echo "3 - Listes des processus"
            ;;
        "q")
            echo "Fin du programme"
            exit ;;
        *) echo "Mauvais choix";;
    esac
done
