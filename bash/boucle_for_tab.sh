#!/bin/bash
#
#
for((i=0;i<=9;i++))
do
	read -p "note $[i+1] = " n1
	tab[$i]=$n1
done
for((i=0;i<=9;i++))
do
	echo " ${tab[$i]} "
done

