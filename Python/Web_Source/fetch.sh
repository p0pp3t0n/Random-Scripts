python3 test2.py > source3
url=`grep -Po "videomega(.{24})" source3 | cut -c 12-31`
echo "http://videomega.tv/cdn.php?ref=$url" >> episodes
