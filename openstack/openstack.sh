#!/bin/bash

sudo useradd -s /bin/bash -d /opt/stack -m stack

echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack

mv vagrant local.conf
#mv vagrant python
runuser -l stack -c "git clone https://opendev.org/openstack/devstack" 
mv /home/vagrant/local.conf /opt/stack/devstack
#runuser -l stack -c "bash /opt/stack/devstack/stack.sh"

