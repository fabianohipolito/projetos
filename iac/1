vms = {
  'server1' => {'memory' => '2048', 'cpus' => 2, 'ip' => '10', 'box' => 'debian/buster64'}, 
  'log' => {'memory' => '2048', 'cpus' => 2, 'ip' => '20', 'box' => 'debian/buster64' },
}

Vagrant.configure('2') do |config|
  config.vm.box_check_update = false
  vms.each do |name, conf|
    config.vm.define "#{name}" do |f|
      f.vm.box = "#{conf['box']}"
      f.vm.hostname = "#{name}.zer0.com"
      f.vm.network 'private_network', ip: "172.16.10.#{conf['ip']}"
      f.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end
      f.vm.provider 'libvirt' do |lv|
        lv.memory = conf['memory']
        lv.cpus = conf['cpus']
        lv.cputopology :sockets => 1, :cores => conf['cpus'], :threads => '1'
      end
    end
  end
  config.vm.provision "shell", inline: <<-SHELL
       apt-get update
       apt-get install -y git ansible
   SHELL
end
