#!/bin/bash
#
# Script qui lit une chaine de caractere
#
# 1 - Verifie si cette chaine est differente à < usager >
#
read -p "Nom usager = " user
if [ "$user" != "usager" ]
then
	echo "$user incorrect"
else
	echo "$user correct"
fi

