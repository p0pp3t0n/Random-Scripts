#!/bin/bash
#
#
# Exercice 3 : Utilisation de la fonction for

# En utilisant la structure for, écrire un script qui donne les valeurs de la fonction
# y=f(x) en variant x de -10 à 10 avec un incrément de 1. 
# •	Réalisez le traitement pour la fonction  y=x

for((i=-10;i<=10;i++))
do
    echo $i
done

for i in {-10..10}
do
    echo $i
done
# •	Réalisez le traitement pour la fonction y = x**2 
for i in {-10..10}                  # Loop de -10 a 10
do
    echo $((i**2))                  # Fais i exposant 2
done

# •	Réécrivez les programmes avec la structure until  
# •	Adapter le script afin que les bornes -x, +x soient passées en paramètres au script. 

bf=${1:--10}                        # Assigne -10 a $1 si aucun parametre n'est passer a $1
bs=${2:-10}                         # Assigne 10 a $2 si aucun parametre n'est passer a $2
for((i=bf;i<=bs;i++))
do
    echo $i
done
