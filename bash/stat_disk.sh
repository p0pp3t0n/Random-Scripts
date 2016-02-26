#!/bin/bash
#
#
cat > df.awk <<fin_awk
{
    total=\$2
    occupe=\$3
    taux=(occupe/total)*100
    obs=""
    if(taux > 20 && taux < 39){obs="Warning"}
    if(taux > 40 ){obs="Alarme"}
    printf  "%10d Ko %10d Ko %6.2f%% %-10s\n",total,occupe,taux,obs
}
fin_awk
df -P | tail -n +2 | awk -f df.awk
rm -f df.awk
