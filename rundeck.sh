#!/bin/bash
#Script para configurar o usuario rundeck em todas as maquinas

CMD='sudo useradd --system --shell /bin/bash --create-home --home-dir /var/lib/rundeck rundeck'


for M in $(vagrant status | grep 'running' | cut -d' ' -f1); do vagrant ssh $M -c "$CMD"; done

    KEY="$(vagrant ssh server1 -c 'sudo cat /root/keys/rundeck.pub' < /dev/null)"

CMD="sudo -u rundeck -s /bin/bash -c \"mkdir -p ~/.ssh && echo '$KEY' > ~/.ssh/authorized_keys\""


for M in $(vagrant status | grep 'running' | cut -d' ' -f1); do vagrant ssh $M -c "$CMD"; done

CMD="sudo sed 's/vagrant/rundeck/g' /etc/sudoers.d/vagrant | sudo tee /etc/sudoers.d/rundeck"

for M in $(vagrant status | grep 'running' | cut -d' ' -f1); do vagrant ssh $M -c "$CMD"; done



CMD='sudo useradd --system --shell /bin/bash --create-home --home-dir /home/ansible ansible' && for M in $(vagrant status | grep 'running' | cut -d' ' -f1); do vagrant ssh $M -c "$CMD"; done && KEY="$(vagrant ssh server1 -c 'sudo cat /root/keys/ansible.pub' < /dev/null)" &&  CMD="sudo -u ansible /bin/bash -c \"mkdir -p ~/.ssh && echo '$KEY' > ~/.ssh/authorized_keys\"" && for M in $(vagrant status | grep 'running' | cut -d' ' -f1); do vagrant ssh $M -c "$CMD"; done