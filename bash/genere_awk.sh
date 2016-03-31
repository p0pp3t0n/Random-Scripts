#!/bin/bash
seq 10 > nombres.txt
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
awk -f p1.awk nombres.txt
rm -f p1.awk
