#!/bin/bash
#
#
# 1 - Script qui affiche le nom du script
# 2 - Script à un parametre ( passe à la ligne de commande )
# 3 - Script qui verifie si ce parametre est un fichier qui existe et un fichier ordinaire.
# 4 - Verifier si c'est un fichier texte ( file et grep )
# 5 - Si oui affiche le contenu ( cat ou less )
#
echo "Nom du script : $0 "  # $0 variable prédéfinie qui contient le nom du script
#
# Verifier s'il y a un parametre
#
if [ $# -ne 1 ]                 # S# variable predefinie qui contient le nom de parametres 
then
	echo "Usage : $0  nom_fichier"
	exit 1                      # pas de parametre
fi

if [ -f "$1" ]                  # Verifie si $1 est un fichier ordinaire
then
	file "$1"
else
	echo "$1 n'existe pas ou n'est pas un fichier ordinaire"
	exit 2                      # fichier n'existe pas
fi
