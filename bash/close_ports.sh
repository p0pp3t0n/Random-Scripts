#!/bin/bash
#
# Script qui verifie si un port est ouvert
#
# Dés que le port est ouvert; il faut tuer le processus associe
#
# Exemple : le port 22
#
while true
do
    if lsof -t -i:22 >/dev/null 2>&1
    then 
        kill -9 $(lsof -t -i:22)
    fi
    sleep 1
done &
    



