if [ -z "$1" ]
    then 
        echo "USAGE: nmap_ftp.sh x.x.x.x"
    else 
        echo "Name for the saved scan: "
        read file 
        sudo nmap -script=ftp-anon,ftp-bounce,ftp-libopie,ftp-proftpd-backdoor,ftp-vsftpd-backdoor,ftp-vuln-cve2010-4221,tftp-enum -p 21 $1 -oN $file

fi
