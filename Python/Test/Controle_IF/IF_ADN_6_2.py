liste=["A","C","G","T","T","A","G","C","T","A","A","C","G"]
new_liste=[]
# Je cree une nouvelle liste
for i in liste:
    if i == "A":
        new_liste.append("T")
    elif i == "T":
        new_liste.append("A")
    elif i == "C":
        new_liste.append("G")
    else:
        new_liste.append("C")
print (liste)
print (new_liste)

# Je remplace le champ dans la premiere liste

for i in range(0,len(liste)):
    if liste[i]=="A":
        liste[i]="T"
    elif liste[i]=="T":
        liste[i]="A"
    elif liste[i]=="C":
        liste[i]="G"
    else: 
        liste[i]="C"
print ("--------------------")
print (liste)
