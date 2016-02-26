#!/bin/bash
#
# Script qui lit une chaine de caractere
#
# 1 - Verifie si cette chaine est pleine 
# 2 - Si oui verifier si $user = usager
#
read -p "Nom usager = " user
if [ -n "$user" ]
then
	if [ "$user" != "usager" ]
	then
		echo "$user incorrect"
	else
		echo "$user correct"
	fi
else
	echo "Au moins un nom d'usager"
fi




