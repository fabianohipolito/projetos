# -*- mode: ruby -*-
# vi: set ft=ruby :

vms = {
  'server1' => {'memory' => '2048', 'cpus' => 2, 'ip' => '10', 'box' => 'debian/buster64', 'provision' => 'debian.sh'},
  'server2' => {'memory' => '1024', 'cpus' => 1, 'ip' => '20', 'box' => 'centos/8','provision' => 'centos.sh'},
  'server3' => {'memory' => '1024', 'cpus' => 1, 'ip' => '30', 'box' => 'debian/buster64', 'provision' => 'debian2.sh'},
  'server4' => {'memory' => '1024', 'cpus' => 1, 'ip' => '40', 'box' => 'centos/8', 'provision' => 'centos.sh'},
  'server5' => {'memory' => '1024', 'cpus' => 1, 'ip' => '50', 'box' => 'trombik/ansible-ubuntu-18.04-amd64', 'provision' => 'ubuntu.sh'},
 }

Vagrant.configure('2') do |config|

  config.vm.box_check_update = false

  vms.each do |name, conf|
    config.vm.define "#{name}" do |z|
      z.vm.box = "#{conf['box']}"
      z.vm.hostname = "#{name}.zer0.com.br"
      z.vm.network 'private_network', ip: "172.16.11.#{conf['ip']}"

      z.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end

      z.vm.provider 'libvirt' do |lv|
        lv.memory = conf['memory']
        lv.cpus = conf['cpus']
      end

      z.vm.provision 'shell', path: "provision/#{conf['provision']}", args: "#{conf['ip']}"
    end
  end
end
