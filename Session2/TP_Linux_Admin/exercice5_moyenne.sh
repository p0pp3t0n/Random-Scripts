ls -l liste_de_chiffre 1>/dev/null 2>/dev/null || touch liste_de_chiffre && truncate -s 0 liste_de_chiffre

while true; do
    read -p "Entrez un chiffre (Q pour quitter) :  " chiffre
    chiffre=$(echo $chiffre | tr [:upper:] [:lower:])
    if [ $chiffre = "q" ];then
        echo "exit"
        exit
    else
        echo $chiffre "Ajouter a la liste"
        echo $chiffre >> liste_de_chiffre
    fi
done
