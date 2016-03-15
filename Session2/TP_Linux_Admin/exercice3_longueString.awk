BEGIN{
      pluslongue_ligne=0
      nb_ligne=0
      longueur=0
  }
  
  {
        longeur=length
        if (longeur>pluslongue_ligne) 
        {
            pluslongue_ligne=longeur
            nb_ligne=NR
         }
  }
END{
      printf "Taille de la ligne la plus longue : "
      print pluslongue_ligne
      printf "Le contenu de la ligne la plus longue : "
      NR=nb_ligne
      print
  }
