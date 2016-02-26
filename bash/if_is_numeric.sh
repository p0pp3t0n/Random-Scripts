#!/bin/bash
#
# Script qui lit une valeur numérique à l'entée standard
# Verifier si la valeur lue est numérique ( expression reguliere)
# Verification si la valeur est superieur à 100
#
read -p "Nombre = " nombre
if [[ "$nombre" =~ ^[0-9]+$ ]]
then
	if [ $nombre -gt 100 ]
	then
		echo "$nombre > 100"
	else
		echo "$nombre <= 100"
	fi
else
	echo "$nombre non numérique"
fi




