#!/bin/bash
#
# Script permet de voir les connections qui on eu lieu dans les 5 derniers jours.
for i in {1..5}
do
	cat /var/log/secure | grep ssh | grep "session opened"| grep "$(date --date="$i days ago" | cut -d " " -f 2,3,4)"
done
