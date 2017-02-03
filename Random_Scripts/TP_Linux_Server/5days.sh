#!/bin/bash
#
# Script permet de voir les connections qui on eu lieu dans les 5 derniers jours.
# This will only work on a system that have the file /var/log/secure
for i in {1..5}
do
	cat /var/log/secure | grep ssh | grep "session opened"| grep "$(date --date="$i days ago" | cut -d " " -f 2,3,4)"
done
