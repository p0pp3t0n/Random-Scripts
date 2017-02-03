BEGIN{
        moyenne = 0
        somme = 0
     }

     {
        somme = somme + $1
        moyenne = moyenne + $1
     }  
END{
    print "La somme est de : " , somme
    print "La moyenne est de : ", moyenne/NR
}

