import requests

url='http://www.novelashdgratis.tv/ver/la-esclava-blanca-capitulo-26/'
html=requests.get(url)
print (html.content)
