note=[14,9,13,15,12]

print ("La meilleur note est de {}".format(max(note)))
print ("La pire note est de {}".format(min(note)))
print ("La moyenne est de {:.2f}".format(sum(note)/float(len(note))))

moy = (sum(note)/float(len(note)))

if moy >= 10 and moy < 12:
    print ("La moyenne est passable")
elif moy >= 12 and moy < 14:
    print ("La moyenne est assez-bien")    
else:
    print ("La moyenne est bien")
