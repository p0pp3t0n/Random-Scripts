if [ -z "$1" ]
    then 
        echo "USAGE: nmap_general.sh x.x.x.x"
    else 
        echo "Name for the saved scan: "
        read file 
        sudo nmap -Pn -A -sC -sS -T 4 -p- $1 -oN $file
fi
