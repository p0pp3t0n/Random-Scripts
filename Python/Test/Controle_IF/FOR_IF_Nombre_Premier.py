nombre=[]
for i in range(0,101):
    if i > 1 and i < 10 and i%2 !=0 and i%3 !=0:
        print i
    elif i % 2 == 0 or i % 3 == 0 or i % 5 == 0 or i % 7 == 0:
        pass
    else:
        print ("Chiffre est premier {}".format(i))
