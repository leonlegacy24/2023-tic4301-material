# Author: Sristi Sravan
# Date : 16 August 2023
# TIC4301 - NUS - Information Security Practicum I 

Vagrant.configure("2") do |config|
  config.vm.define "tic4301-attacker" do |cfg|
    cfg.vm.box = "kalilinux/rolling"
    cfg.vm.hostname = "tic4301-attacker"
    cfg.vm.provision :shell, path: "tools.sh"
    cfg.vm.provision :shell, path: "web.sh"
    cfg.vm.network :private_network, ip: "192.168.33.11", gateway: "192.168.33.1", dns: "8.8.8.8"
    cfg.vm.provider "virtualbox" do |vb, override|
      vb.gui = true
      vb.name = "tic4301-attacker"
      vb.customize ["modifyvm", :id, "--memory", 4096]
      vb.customize ["modifyvm", :id, "--cpus", 2]
      vb.customize ["modifyvm", :id, "--vram", "32"]
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    end
  end
  config.vm.define "tic4301-host" do |cfg|
    cfg.vm.box = "StefanScherer/windows_2016"
    cfg.vm.hostname = "tic4301-host"
    cfg.vm.communicator = "winrm"
    cfg.winrm.basic_auth_only = true
    cfg.winrm.timeout = 1200
    cfg.winrm.retry_limit = 20
    cfg.vm.boot_timeout = 1200
    cfg.vm.network :private_network, ip: "192.168.33.10", gateway: "192.168.33.1", dns: "8.8.8.8"
    cfg.vm.provider "virtualbox" do |vb, override|
      vb.gui = true
      vb.name = "tic4301-host"
      vb.customize ["modifyvm", :id, "--memory", 4096]
      vb.customize ["modifyvm", :id, "--cpus", 2]
      vb.customize ["modifyvm", :id, "--vram", "32"]
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    end
  end
end  
