#!/bin/bash
seq 10 > nombres.txt     #Cree nombres.txt et met seq 10 dedans

# La Ligne suivant ouvre cat et envoie ce que cat va lire dans le fichier
# p1.awk ensuite marque que si il detect fin_awk il finir de lire avec cat
cat > p1.awk <<fin_awk   
BEGIN{
    somme = 0
}
{
    somme = somme + \$0
}
END{
    print "Somme = ",somme
}
fin_awk

awk -f p1.awk nombres.txt #Fais awk prend le script p1.awk l'applique a nombre
rm -f p1.awk            #Efface le script awk.
