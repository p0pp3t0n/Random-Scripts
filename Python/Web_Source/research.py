import re
import requests

# Lists
epiList = []
matches = []

# Compile regex to search
recherche = re.compile('videomega.{22}')

# How many episodes to fetch 
url='http://www.novelashdgratis.tv/ver/la-esclava-blanca-capitulo-'
first=input("First episode : ")
nbEpi=input("How many after that one : ")

#Create list with url to request
for i in range(int(first),(int (first) + int (nbEpi) + 1)):
    epiList.append(url+str(i)+"/") 

for i in epiList:
    url=i
    html=requests.get(url)
    matches.append(recherche.findall(html.content))
    
# Opening file to read
#text = open('source3', 'r')

# Do research on file with the recherche regex
#tuff=recherche.findall(html.content)
#matches.append(recherche.findall(html.content))

#for line in text:
#    matches.append(recherche.findall(line))
#text.close()

demoUrl="http://videomega.tv/cdn.php?ref="
# Print items in the list
for i in range(0,len(matches)):

     print ("Episode " + epiList[i][-2:-1])
     print (demoUrl + str(matches[i])[13:33])

# Seeing what's in the list
#print matches
