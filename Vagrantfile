APT = 'apt-get update && apt-get install -y ansible'

machines = {
   
  'log' => {'memory' => '2048', 'cpus' => 2, 'ip' => '10', 'box' => 'debian/buster64', 'shell' => APT },
}

Vagrant.configure('2') do |config|
  machines.each do |name, conf|
    config.vm.define name do |machine|
      machine.vm.box = "#{conf['box']}"
      machine.vm.hostname = "#{name}.zer0.com"
      machine.vm.network 'private_network', ip: "172.16.10.#{conf['ip']}"
      machine.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end
      machine.vm.provider 'libvirt' do |lv|
        lv.memory = conf['memory']
        lv.cpus = conf['cpus']
        lv.cputopology :sockets => 1, :cores => conf['cpus'], :threads => '1'
      end
     machine.vm.provision "file", source: "iac", destination: "/home/vagrant/"
    end
  end
   
  #config.vm.provision "file", source: "iac", destination: "/home/vagrant/iac"
 # config.vm.provision "shell", inline: <<-SHELL
       #apt-get update
       #apt-get install -y git ansible
   #SHELL
  #config.vm.provision "file", source: "iac", destination: "/home/vagrant/iac"
end
