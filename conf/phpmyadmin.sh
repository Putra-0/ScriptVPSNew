#!/bin/bash
#
# Script By Khairul SHVPN
# SHVPN Your Internet Speed Expert
# ==================================================

apt update
apt -y upgrade
wget -O /etc/apt/sources.list.d/webmin.list "https://raw.githubusercontent.com/kruleshvpn/ScriptVPSNew/master/conf/webmin"
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
apt update
apt -y install webmin
systemctl start webmin
systemctl enable webmin
systemctl status webmin
apt -y install mysql-server
apt -y install phpmyadmin
echo "" | sudo tee -a /etc/apache2/apache2.conf
echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
systemctl restart apache2
