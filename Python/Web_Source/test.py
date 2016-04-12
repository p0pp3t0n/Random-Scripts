import urllib2
for i in range(1,3):
    page='http://www.novelashdgratis.tv/ver/la-esclava-blanca-capitulo-'+str(i)
    print (page)
    webpage=urllib2.urlopen(page)
    html=webpage.read()

    print(html)
