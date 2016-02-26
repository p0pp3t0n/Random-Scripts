#!/bin/bash
#
# Script qui lit une valeur numérique à l'entée standard
# Verifier si la valeur lue est numérique ( expression reguliere)
# Verification si la valeur est superieur à 100
#
read -p "Nombre = " nombre              # Demande de rentrer un chiffre
if [[ "$nombre" =~ ^[0-9]+$ ]]          # Verifie si nombre commence par un chiffre est fini par un chiffre, le + c'est pour 1 ou plus
then
    if [ $nombre -gt 100 ]              # Verifie si nombre greater than (-gt) que 100
	then
		echo "$nombre > 100"
	else
		echo "$nombre <= 100"
	fi
else
	echo "$nombre non numérique"
fi
