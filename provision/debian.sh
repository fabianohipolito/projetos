#!/bin/bash

apt update -y
apt install -y vim ansible openjdk-11-jdk gnupg2 curl git sqlite3 


sudo mkdir /root/keys
sudo ssh-keygen -m PEM -N '' -f /root/keys/ansible
sudo ssh-keygen -m PEM -N '' -f /root/keys/jenkins


# Jenkins
wget -q -O - 'https://pkg.jenkins.io/debian-stable/jenkins.io.key' | apt-key add -
echo 'deb https://pkg.jenkins.io/debian-stable binary/' > /etc/apt/sources.list.d/jenkins.list

#Rundeck

curl -s https://packagecloud.io/install/repositories/pagerduty/rundeck/script.deb.sh | os=any dist=any bash

apt-get update
apt-get install -y jenkins rundeck rundeck-cli

# Rundeck
sed -i s/admin:admin/devops:zero/g /etc/rundeck/realm.properties
sed -i s/localhost/172.16.11.10/g /etc/rundeck/framework.properties
sed -i s/localhost/172.16.11.10/g /etc/rundeck/rundeck-config.properties

systemctl enable jenkins rundeckd
systemctl restart jenkins rundeckd
