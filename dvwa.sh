# Tested on ubuntu server 16.04 LTS fresh install
#
#!/bin/bash

apt-get update && sudo apt-get upgrade -y
apt-get purge `dpkg -l |grep php |awk '{print $2}' |tr "\n" " "`
add-apt-repository ppa:ondrej/php
apt-get update && sudo apt-get upgrade -y

# Install mysql with p@ssw0rd as password
debconf-set-selections <<< 'mysql-server mysql-server/root_password password p@ssw0rd'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password p@ssw0rd'
apt-get -y install mysql-server

# Install apache/php5.6/unzip
apt-get install apache2 php5.6 php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-gd unzip -y

# Creating folders and unziping dvwa
mkdir -p /var/www/html/
wget https://github.com/ethicalhack3r/DVWA/archive/master.zip -O /var/www/master.zip
unzip /var/www/master.zip -d /var/www/html/
mv /var/www/html/DVWA-master/ /var/www/html/dvwa

# Config file
cp /var/www/html/dvwa/config/config.inc.php.dist /var/www/html/dvwa/config/config.inc.php

# Changing permissions
chmod o+w /var/www/html/dvwa/hackable/uploads/
chmod o+w /var/www/html/dvwa/external/phpids/0.6/lib/IDS/tmp/phpids_log.txt

# Setting allow_url_include to On
sed -i "s/allow_url_include = Off/ allow_url_include = On/" /etc/php/5.6/apache2/php.ini

systemctl restart mysql
systemctl restart apache2
