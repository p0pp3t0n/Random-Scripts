#!/bin/bash
IFS=":"
read -p "Heures:Minutes:Secondes : " hrs mins sec
#read -p "Heures  : " hrs
#read -p "Minutes : " mins
#read -p "Secondes: " sec
let res=hrs*3600+mins*60+sec
echo $res


