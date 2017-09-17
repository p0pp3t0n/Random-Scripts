if [ -z "$1" ]
    then 
        echo "USAGE: nmap_udp.sh x.x.x.x"
    else 
        echo "Name for the saved scan: "
        read file 
        sudo nmap -f -sV -sU -p U:25,53,69,111,137,161 $1 -oN $file

fi
