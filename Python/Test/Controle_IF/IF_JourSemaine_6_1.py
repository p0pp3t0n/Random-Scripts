jours=["Lundi","Mardi","Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]

for i in range(0,len(jours)):
    print jours[i], 

    if i <= 3: 
        print ("Au travail")
    elif i == 4:
        print ("Chouette c'est vendredi")
    else:
        print ("Repos ce week-end")

print ("-----------------------------------------")
print ("-----------------------------------------")

for i in jours:
    print i,

#    if i == "Lundi" or i == "Mardi" or i == "Mercredi" or i == "Jeudi":
    if i in {"Lundi", "Mardi", "Mercredi", "Jeudi"}:
        print ("Au travail")
    elif i == "Vendredi":
        print ("Chouette c'est vendredi")
    else :
        print ("Repos ce week-end")
