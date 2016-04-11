jour=["lundi","mardi", "Mercredi", "Jeudi", "vendredi","samedi", "dimanche"]
print jour[0:5],jour[5:]
print jour[0:5:1], jour[5::1]

#Accedez au dernier jour de la semaine
print jour[-1]
print jour[6]

#Inverser les jours de la semaine
print jour[-1:-8:-1]

for i in range(1,len(jour)+1):
    print jour[-i]


#Inverser sur la meme ligne
for i in range(1,len(jour)+1):
    print jour[-i],
