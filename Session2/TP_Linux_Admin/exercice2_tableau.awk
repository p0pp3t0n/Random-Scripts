BEGIN { capacite = " "
   printf "\t\t\t\t\t\tEtat recapitulatif de l'espace disque\n\n"
   ligne= "---------------------------------------------------------------------------------------------------------------------------------------\n"
   printf ligne
   printf "|%-30s|%-10s|%-10s|%-10s|%-12s|%-30s|%-25s|\n", "Systeme de fichiers", "Capacite", "Occupation", "Disponible", "Taux Occup.", "Point de montage","Observation" 
   printf ligne
  }


{
    message=" "
    capacite = $5
    if(capacite>75&&capacite<80){message="Warning"}
    if(capacite>81&&capacite<95){message="Critical"}
    if(capacite>96){message="Alarm"}
    printf "|%-30s|%-10s|%-10s|%-10s|%-12s|%-30s|%-25s|\n", $1, $2, $3, $4, $5, $6,message
}


END{
    printf ligne
  }
