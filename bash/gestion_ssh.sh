#!/bin/bash
# Script permet de voir les utilisateurs qui on essayer de se connecter a ssh
# et qui n'ont pas reussi leur authentification
#
# Fais un grep dans le log secure est cherche le mot ssh, dans le resultat il cherche le mot failed ensuite
# imprime le champ 9, le met en ordre alphabetic, compte combien de fois le champ 9 aparait ensuite
# enleve remplace les espace par des : et le met dans le fichier users.ssh
grep "ssh" /var/log/secure*|grep -i failed|awk '{print $9}'|sort|uniq -c|tr -s " " ":" > users.ssh 

old_ifs="$IFS"
IFS=":"
cat users.ssh | while read x nbre user                  # Assigne le champ 1 a x, champ 2 a nbre et champ 3 a user
do
    echo "$user -> $nbre"
    grep "$user.*ssh"  /var/log/secure* | grep -i failed | tail -1      # Imprime le dernier champ qui comme par le nom de l'utilisateur est fini par ssh qui contient le mot failed
done
