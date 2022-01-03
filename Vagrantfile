# -*- mode: ruby -*-
# vi: set ft=ruby :

vms = {
  'server1' => {'memory' => '2048', 'cpus' => 2, 'ip' => '10', 'box' => 'debian/buster64', 'provision' => 'debian.sh'},
  'server2' => {'memory' => '1024', 'cpus' => 1, 'ip' => '20', 'box' => 'centos/8','provision' => 'centos.sh'},
  'server3' => {'memory' => '1024', 'cpus' => 1, 'ip' => '30', 'box' => 'ubuntu/trusty64', 'provision' => 'ubuntu.sh'},
  'server4' => {'memory' => '1024', 'cpus' => 1, 'ip' => '30', 'box' => 'debian/buster64', 'provision' => 'centos.sh'},
  'server5' => {'memory' => '1024', 'cpus' => 1, 'ip' => '30', 'box' => 'centos/8', 'provision' => 'centos.sh'},
 }

Vagrant.configure('2') do |config|

  config.vm.box_check_update = false

  vms.each do |name, conf|0
    config.vm.define "#{name}" do |k|
      k.vm.box = "#{conf['box']}"
      k.vm.hostname = "#{name}.zer0.com"
      k.vm.network 'private_network', ip: "172.16.11.#{conf['ip']}"
      
      k.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end
      k.vm.provider 'libvirt' do |lv|
        lv.memory = conf['memory']
        lv.cpus = conf['cpus']
        
      end
      k.vm.provision 'shell', path: "provision/#{conf['provision']}", args: "#{conf['ip']}"
    end
  end
end
