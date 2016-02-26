#!/bin/bash
#
# Exemple de tableau associatif
# Liste des fruits et prix
# 
declare -A fruits
fruits["bananes"]=1:0
fruits["pommes"]=2:1
fruits["cerises"]=3:0
fruits["kiwis"]=5:1
fruits["oranges"]=3:0

for elem in ${!fruits[*]}
do
 echo "Cle ${elem} : Valeur : "${fruits[${elem}]} 
done












