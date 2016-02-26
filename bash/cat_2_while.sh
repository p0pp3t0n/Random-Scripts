#!/bin/bash
#
# Script qui utilise la commande cat et l'instruction while
# pour lire un fichier
#
IFS=":"
cat /etc/passwd | while read user x uid gid gecos home prog
do
    if [ "$uid" -ge 500 -o "$uid" -eq 0 ]
    then    
        echo $user
    fi
done

