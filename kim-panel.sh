#!/bin/bash
loc=`grep "root\s" /etc/nginx/conf.d/vps.conf | grep -o "\/.*" | sed -e "s/\;.*//g"`
cd $loc/asset
wget https://raw.githubusercontent.com/kim021904/project/master/kimvpn.tar -qO- | tar x
chown -R www-data:www-data $loc/asset
chmod -R g+rw $loc/asset
wget -O $loc/view/login.html "https://raw.githubusercontent.com/kim021904/project/master/login.html"
rm -R $loc/tmp/*