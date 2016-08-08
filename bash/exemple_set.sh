#!/bin/bash
#
#
set 1 2 3 4 5 6 7 8          #Set met les donnee dans une variable de env
echo $*                      #Permet d afficher la variable de env
for i 
do
    echo $i
done

set $(ls -d e*)              #Cherche les directory qui commence par e
echo $*                      #Affiche les resultat mit avec set
for i 
do
    echo $i
done
