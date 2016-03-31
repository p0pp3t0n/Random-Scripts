#!/bin/bash
#
#
set 1 2 3 4 5 6 7 8
echo $*
for i 
do
    echo $i
done

set $(ls -d e*)
echo $*
for i 
do
    echo $i
done
