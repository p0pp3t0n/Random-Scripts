BEGIN{
    liste="root:x:0:0:root:/root:/bin/bash"
    n=split(liste,tab,":")
    for(i=1;i<=n;i++){
        print tab[i]
    }
}

