#!/bin/bash
#
# Script qui donne 3 examples de structure de for
for((i=1;i<=10;i++))
do
	echo "i = $i"
done
echo "==================================="

for i in {1..10}    
do
	echo "i = $i"
done
echo "==================================="

for i in 1 2 3 4 5 6 7 x 9 10    
do
	echo "i = $i"
done
