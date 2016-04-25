import requests
import re
import mmap

epiList=[]
#first=input("First episode : ")
#nbEpi=input("How many after that one : ")
#demoUrl='http://www.novelashdgratis.tv/ver/la-esclava-blanca-capitulo-'
#cherche = re.compile('videomega')
with open ('source3','r+') as f:
    data = mmap.mmap(f.fileno(), 0)
    mo = re.search('videomega', data)
    print(mo.groups())

#print (epiList)
#episodes.close()
