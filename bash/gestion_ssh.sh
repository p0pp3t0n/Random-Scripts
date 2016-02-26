#!/bin/bash
#
#
grep "ssh" /var/log/secure*|grep -i failed|awk '{print $9}'|sort|uniq -c|tr -s " " ":" > users.ssh

old_ifs="$IFS"
IFS=":"
cat users.ssh | while read x nbre user
do
    echo "$user -> $nbre"
    grep "$user.*ssh"  /var/log/secure* | grep -i failed | tail -1
done
 

