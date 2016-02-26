#!/bin/awk -f
BEGIN{
    system("clear")
    l1="===================="
    print  l1
    printf "|%-5s|%5s|%6s|\n","Nom","Age","Taille"
    print  l1
    for(i=1;i<=5;i++)
    {
        printf "|%-5s|%5s|%6.2f|\n","Denis","25",190/100
    }
    print  l1
}
