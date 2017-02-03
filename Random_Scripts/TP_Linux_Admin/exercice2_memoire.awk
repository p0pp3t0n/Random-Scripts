#Le programme permet de voir combien de memoire vive est disponible.

BEGIN{
    used=0
    avail=0
    free=0
    pourcentage=0
    }


{if (NR==1) {avail=$2}}
{if (NR==2) {free=$2}}

END{
    pourcentage=(1-(free/avail)) * 100
    used=avail-free
#    pourcentage=75
    printf ("Memoire totale : " avail/1024" MB\n")
    printf ("Memoire occuppee : " used/1024" MB\n")
    printf ("Memoire libre : " free/1024" MB\n")
    printf ("Taux occupation memoire : ")
    printf ("%0.2f",(pourcentage))
    if (pourcentage>74 && pourcentage <81) printf "% =>Warning"
    if (pourcentage>80 && pourcentage < 97) printf "% =>Critical"
    if (pourcentage>96 ) print "% =>Alarm"
    else printf "%"
    printf ("\n")
    }
