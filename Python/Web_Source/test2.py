import requests
import re

#epiList=[]
#first=input("First episode : ")
#nbEpi=input("How many after that one : ")
#demoUrl='http://www.novelashdgratis.tv/ver/la-esclava-blanca-capitulo-'
#demo=re.search("videomega(.{24})", episodes)
#Open file to write sources?
#fo = open("episodes","w")

#Create list with url to request
#for i in range(int(first),(int (first) + int (nbEpi) + 1)):
#    epiList.append(demoUrl+str(i)) 
#    print (i)
#
#for i in epiList:
#    url=i
##    html=requests.get(url)
##    fo.write(print(html.content))    
#
##Close file
#fo.close()

url='http://www.novelashdgratis.tv/ver/la-esclava-blanca-capitulo-45/'
html=requests.get(url)
print (html.content)
