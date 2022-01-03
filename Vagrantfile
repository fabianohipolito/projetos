vms = {
'server1' => {'memory' => '2048', 'cpus' => 2, 'ip' => '10', 'box' => 'debian/buster64', 'provision' => 'debian.sh'},
'server2' => {'memory' => '2048', 'cpus' => 2, 'ip' => '20', 'box' => 'centos/8', 'provision' => 'centos.sh' }, 
'server3' => {'memory' => '2048', 'cpus' => 2, 'ip' => '30', 'box' => 'ubuntu/xenial64', 'provision' => 'ubuntu.sh'},
'server4' => {'memory' => '2048', 'cpus' => 2, 'ip' => '10', 'box' => 'debian/buster64', 'provision' => 'monit1.sh'},
'server5' => {'memory' => '2048', 'cpus' => 2, 'ip' => '20', 'box' => 'centos/8', 'provision' => 'monit2.sh' }, 
}

Vagrant.configure('2') do |config|
    vms.each do |name, conf|
    config.vm.define name do |vms|
      vms.vm.box = "#{conf['box']}"
      vms.vm.hostname = "#{name}.zer0.com"
      vms.vm.network 'private_network', ip: "172.16.11.#{conf['ip']}"
      vms.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end
      vms.vm.provider 'libvirt' do |lv|
        lv.memory = conf['memory']
        lv.cpus = conf['cpus']
      end
      vms.vm.provision 'shell', path: "provision/#{conf['provision']}", args: "#{conf['ip']}"
    end
  end
end
