if [ -z "$1" ]
    then 
        echo "USAGE: nmap_mysql.sh x.x.x.x"
    else 
        echo "Name for the saved scan: "
        read file 
        sudo nmap -sV -Pn -vv -script=mysql-audit,mysql-databases,mysql-dump-hashes,mysql-empty-password,mysql-enum,mysql-info,mysql-query,mysql-users,mysql-variables,mysql-vuln-cve2012-2122 $1 -p 3306 -oN $file


fi
