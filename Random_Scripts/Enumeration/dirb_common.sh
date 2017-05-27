if [ -z "$1" ]
    then 
        echo "USAGE: dirb_common.sh x.x.x.x"
    else 
        echo "Name for the saved scan: "
        read file 
        dirb http://$1 /usr/share/wordlists/dirb/common.txt -o $file 

fi
