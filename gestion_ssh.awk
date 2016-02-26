#!/bin/awk -f
/ssh.*Failed/{
    users[$9]=users[$9]+1
}
END{
    for(key in users){
        print key," -> ",users[key]
    cmd="grep "key".*ssh"" /var/log/secure* | grep -i failed | tail -1"
#    system(cmd)
    cmd | getline var
    pos=index(var,":")
    date=substr(var,pos+1,15)
    print date
    }
}

