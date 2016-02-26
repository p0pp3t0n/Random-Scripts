#!/bin/bash
#
# Script qui lit une chaine de caractere
#
# 1 - Verifie si cette chaine est egal à usager
#
read -p "Nom usager = " user
if [ "$user" = "usager" ]
then
	echo "$user correct"
else
	echo "$user incorrect"
fi

