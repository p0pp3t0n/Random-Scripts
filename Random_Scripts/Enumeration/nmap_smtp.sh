if [ -z "$1" ]
    then 
        echo "USAGE: nmap_smtp.sh x.x.x.x"
    else 
        echo "Name for the saved scan: "
        read file 
        sudo nmap -script=smtp-commands,smtp-enum-users,smtp-vuln-cve2010-4344,smtp-vuln-cve2011-1720,smtp-vuln-cve2011-1764 -p 25 $1 -oN $file 

fi
