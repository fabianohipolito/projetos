#!/bin/bash


apt-get update
apt-get install -y vim ansible openjdk-11-jdk gnupg2 curl git sqlite3

#Instalação do Rundeck
curl -s https://packagecloud.io/install/repositories/pagerduty/rundeck/script.deb.sh | os=any dist=any bash
sudo apt-get update
sudo apt-get install -y rundeck rundeck-cli

sed -i s/admin:admin/devops:4linux/g /etc/rundeck/realm.properties
sed -i s/localhost/172.27.11.10/g /etc/rundeck/framework.properties
sed -i s/localhost/172.27.11.10/g /etc/rundeck/rundeck-config.properties

systemctl enable  rundeckd
systemctl restart  rundeckd
