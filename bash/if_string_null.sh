#!/bin/bash
#
# Script qui lit une chaine de caractere
#
# 1 - Verifie si cette chaine est nulle 
# 2 - Sinon verifier si $user = usager
#
read -p "Nom usager = " user
if [ -z "$user" ]
then
	echo "Au moins un nom d'usager"
else
	if [ "$user" != "usager" ]
	then
		echo "$user incorrect"
	else
		echo "$user correct"
	fi
fi




