#!/bin/bash
#
# Script qui utilise la commande cat et l'instruction while
# pour lire un fichier
#

IFS=":"                                     # IFS permet de definir le separateur
cat /etc/passwd | while read user x uid gid gecos home prog # Assigne un nom de variable pour chaque element de la ligne. Premier element user, deuxieme x, etc...
do
    if [ "$uid" -ge 500 -o "$uid" -eq 0 ]   # Compare si le uid est greater or equal (-ge) ou (-o) si le ui est equal (-eq) a 0
    then    
        echo $user                          # Si le uid est > 500 ou uid = 0 alors echo le parametre $user qui est le quatrieme champ
    fi
done

