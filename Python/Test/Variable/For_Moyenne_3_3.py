numbers=[1,10.2,20.5]
moyenne=0

for i in numbers:
    moyenne=moyenne+i

print "La moyenne est de %.2f" % (moyenne/(len(numbers)))    
