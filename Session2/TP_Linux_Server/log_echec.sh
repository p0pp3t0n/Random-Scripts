#!/bin/bash
#
# Script utilise la commande lastb pour lire les dernieres connections ssh qui n'on pas reussi a ce logger
# Ensuite backup le log /var/log/btmp que lastb utilise et cree un log qui s'appele log-echec.log qui contient l'info des users
# Qui on essayer de ce logger et n'ont pas reussi.

exec >> /var/log/log-echec.log							

if [ -e /var/log/btmp_$(date +%F) ]					 
then
	cat /var/log/btmp >> /var/log/btmp_$(date +%F)
else 
	cp /var/log/btmp /var/log/btmp_$(date +%F)
fi

lastb | grep ssh | cut -d " " -f1 | sort | uniq -c > ssh.log
echo "#######################################################################"
echo "Date d'execution du script : $(date)"
echo "_______________________________________________________________________"

cat ssh.log | while read nbre user
do	
	printf " Utilisateurs : $user nbre echecs: $nbre "
	printf " Date du dernier echec : "
	lastb $user | grep ssh | head -n 1 | tr -s " " | cut -d " " -f 4,5,6,7
done
rm -f /var/log/btmp
rm -f ssh.log
touch /var/log/btmp
chmod 600 /var/log/btmp								# Donne les bonnes permissions pour fonctionner
