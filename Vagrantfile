vms = {
   
  'server1' => {'memory' => '2048', 'cpus' => 2, 'ip' => '10', 'box' => 'debian/buster64' },
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
        lv.cputopology :sockets => 1, :cores => conf['cpus'], :threads => '1'
      end
     
    end
  end
  config.vm.provision "shell", path:"provision/install.sh"
  #end  
end
