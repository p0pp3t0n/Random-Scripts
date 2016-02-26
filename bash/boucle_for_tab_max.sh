#!/bin/bash
#
#
# Lecture des 10 nombres
#
for((i=0;i<=9;i++))
do
	read -p "note $[i+1] = " n1
	tab[$i]=$n1
done
# Trouver le maximum des 10 nombres
max=0
for((i=0;i<=9;i++))
do
	if(( ${tab[$i]} > max))
	then
		max=${tab[$i]}
	fi
done

echo "max = $max"



