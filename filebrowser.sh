#!/bin/bash
#Installing Web File Browser
#Script By Krule DreamNetwork

#Downloading the service

ip=`wget -qO - ipv4.icanhazip.com`

echo "   ===================================   "
echo "[+]                                   [+]"
echo "[+]        File Browser By Web        [+]"
echo "[+]             Script By             [+]"
echo "[+]          Khairul KAFAShop         [+]"
echo "[+]                                   [+]"
echo "   ===================================   "
sleep 3
clear

curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash

sleep 3
clear

cd /etc/

cat <<EOF > filebrowser.json
{
"port": 8080,
"baseURL": "",
"address": "0.0.0.0",
"log": "stdout",
"database": "/etc/filebrowser.db",
"root": "/home"
}
EOF

sleep 3
clear

cd /etc/systemd/system/

cat <<EOF > filebrowser.service
[Unit]
Description=File Browser
After=network.target

[Service]
User=www-data
Group=www-data
ExecStart=/usr/local/bin/filebrowser -c /etc/filebrowser.json

[Install]
WantedBy=multi-user.target
EOF

sleep 3
clear

cd

systemctl enable filebrowser.service
systemctl start filebrowser.service

sleep 3
clear

#Finalizing Installation
echo "   ===================================   "
echo "[+]                                   [+]"
echo "[+]        Installation Complete      [+]"
echo "[+]             Script By             [+]"
echo "[+]          Khairul KAFAShop         [+]"
echo "[+]                                   [+]"
echo "   ===================================   "
echo ""
echo "You can now use your web browser for filebrowsing using below link"
echo ""
echo "http://$ip:8080"
echo ""
echo "Default Username / Password is admin"
echo ""
echo ""
sleep 5
