#!/bin/bash
#
seq 10 > nombres.txt #Fais une sequence de 1 a 10, inclus saut de ligne

s=0
cat nombres.txt | while read n #Lit nombre, le met dans n
do
    echo $n
    let s=s+n           #Let permet d'additioner le tout
done
echo "Somme = $s"       #Affiche 0, la valeur de S est dans le loop

# Sans creation de processus
s=0
while read n
do
    echo $n
    let s=s+n
done < nombres.txt      #Pas sure, prend les chiffre de nombres?
echo "Somme = $s"
