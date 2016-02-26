#!/bin/bash
#
max=0
read -p " Nombre " n1 
while((n1 != 999999))
do
	if((n1 > max))
	then
		max=$n1
	fi
	read -p " Nombre " n1 
done
echo "Max = $max"

