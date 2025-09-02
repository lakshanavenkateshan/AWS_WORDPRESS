#!/bin/bash
apt-get update -y
apt-get install -y apache2 php php-mysql php-curl php-gd php-xml php-mbstring unzip mysql-client

cd /tmp
curl -O https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
rm -rf /var/www/html/*
cp -r wordpress/* /var/www/html/

chown -R www-data:www-data /var/www/html

cd /var/www/html
cp wp-config-sample.php wp-config.php
sed -i "s/database_name_here/wordpress/" wp-config.php
sed -i "s/username_here/admin/" wp-config.php
sed -i "s/password_here/<YOUR_DB_PASSWORD>/" wp-config.php
sed -i "s/localhost/<YOUR_RDS_ENDPOINT>/" wp-config.php

systemctl restart apache2
