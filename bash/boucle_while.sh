#!/bin/bash
#
# Trois example de la commande while

i=1
while(( i <= 10))
do
	echo "i = $i"
	let i++
done
echo "===================================="

i=1
while [ "$i" -le 10 ]                       # While $1 less than (-le)10
do
	echo "i = $i"
	let i++
done
echo "===================================="

i=1
while test  "$i" -le 10                     # While $1 less than (-le) 10
do
	echo "i = $i"
	let i++
done
