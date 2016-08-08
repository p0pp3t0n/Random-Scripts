#!/bin/bash
#
#Le script offre un choix a l'utilisateur et boucle jusqu'a qu'il decide de sortir.

menu="\n 1: Liste des utilisateurs\n
2: Informations sur un utilisateurs\n
3: Contenu d'un fichier texte\n
4: Liste des services en cours d'execution\n
Q/q: Quiter\n"

while true;do
        echo -e $menu
        read -p "Votre choix : " choix
        choix=$(echo $choix | tr [:upper:] [:lower:])
       echo $choix 

        case $choix in

            1)
                echo -e "\nVoici les utilisateurs qui peuvent ce connecter a ce systeme"
                cat /etc/passwd | grep "/bin/bash" | cut -d: -f1             
                echo -e "\nVoici ce qui sont connectes en se moment\n"
                w
                ;;
            2)
                read -p "Quel utilisateur ? " user
                echo -e "\n\nInformation de compte \n-------------------------------\n"
                chage -l $user
                echo -e "\nVoici les groups : "
                echo "-----------------------------"
                id $user
                echo -e "\n\nPlus d'information sur l'utilisateur\n---------------------------\n"
                finger $root
                ;;
            3)
                read -p "Entrez le nom du fichier : " fichier
                file $fichier  && cat $fichier || echo "Fichier n'existe pas"
                ;;
            4)
                echo -e "\nVoici les services qui sont en cours d'execution\n\n"
                service --status-all | grep "running"
                ;;
            q)
                exit
                ;;
        esac
done
