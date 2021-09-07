#!/bin/bash

sudo useradd -s /bin/bash -d /opt/stack -m stack

echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack

sudo su - stack
git clone https://opendev.org/openstack/devstack 
mv vagrant local.conf
mv local.conf devstack/
mv devstack/ /home/stack
#bash /home/stack/devstack/stack.sh
