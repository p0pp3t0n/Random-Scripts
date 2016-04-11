liste=[8,4,6,1,5]
lowest=liste[0]
for i in liste:
    if i < lowest:
        lowest=i

print ("Smallest number is {} ".format(lowest))
