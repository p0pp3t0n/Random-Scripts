#!/bin/bash
#
# Script qui lit une chaine de caractere
#
# 1 - Verifie si cette chaine est differente à < usager >
#
read -p "Nom usager = " user # Demande pour rentrer donner pour user

if [ "$user" != "usager" ]   # Compare si user n'est pas egale a usager
then
	echo "$user incorrect"
else
	echo "$user correct"
fi
