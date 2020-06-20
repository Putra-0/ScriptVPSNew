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
/lib/systemd/systemd-sysv-install enable webmin
apt -y install mysql-server
apt -y install phpmyadmin
ss -ntlp 'sport = 80'
kill pid tersebut
echo "" | tee -a /etc/apache2/apache2.conf
echo "Include /etc/phpmyadmin/apache.conf" | tee -a /etc/apache2/apache2.conf
systemctl restart apache2

