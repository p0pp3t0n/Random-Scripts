#!/bin/bash
#
#
# 1 - Script qui affiche le nom du script
# 2 - Script à un parametre ( passe à la ligne de commande )
# 3 - Script qui verifie si ce parametre est un fichier qui existe.
#
echo "Nom du script : $0 "  # $0 variable prédéfinie qui contient le nom du script
#
# Verifier s'il y a un parametre
#
if [ $# -ne 1 ]
then
	echo "Usage : $0  nom_fichier"
	exit 1  # pas de parametre
fi
if [ -e "$1" ]
then
	file "$1"
else
	echo "$1 n'existe pas"
	exit 2  # fichier n'existe pas
fi










