#!/bin/bash
#
# Script qui lit une valeur numérique à l'entée standard
# Verification si la valeur est superieur à 100
#
read -p "Nombre = " nombre
# if [ $nombre -gt 100 ]
# if test $nombre -gt 100   # ici on utilise la commande < test >
if(($nombre > 100))
then
	echo "$nombre > 100"
else
	echo "$nombre <= 100"
fi

