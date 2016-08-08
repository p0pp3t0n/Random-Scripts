#!/bin/bash
#
#
Sortie="faux"
while [ $Sortie == "faux" ]; do
   echo "Entrez l'heure sous forme hh:mm ou 'fin' pour terminer"
   read heure
   heure=$(echo $heure | tr '[:upper:]' '[:lower:]'| cut -d: -f1)
   if [ $heure == "fin" ];then
       Sortie="vrai"
   else 
       if [ "$heure" -gt 0 ] &>/dev/null && [ "$heure" -lt 25 ] &>/dev/null;then
           if [ "$heure" -gt 6 ] && [ "$heure" -lt 18 ];then
                echo "Bonjour"
           else
                echo "Bonsoir"
           fi
       else
           echo "Heure incorrecte"
       fi
   fi
done
