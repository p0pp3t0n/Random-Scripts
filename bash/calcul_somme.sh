#!/bin/bash
#
seq 10 > nombres.txt
s=0
cat nombres.txt | while read n
do
    echo $n
    let s=s+n
done
echo "Somme = $s"
# Sans creation de processus
s=0
while read n
do
    echo $n
    let s=s+n
done < nombres.txt
echo "Somme = $s"


