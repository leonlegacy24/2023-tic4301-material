# Author: Sristi Sravan
# Date : 16 July 2022
# TIC4301 - NUS - Information Security Practicum I 

Vagrant.configure("2") do |config|
    config.vm.define "tic4301-attacker" do |cfg|
      cfg.vm.box = "kalilinux/rolling"
      cfg.vm.hostname = "tic4301-attacker"
      cfg.vm.provision :shell, path: "tools.sh"
      cfg.ssh.username = "vagrant"
      cfg.ssh.password = "vagrant"
      cfg.vm.network :private_network, ip: "192.168.33.11", gateway: "192.168.33.1", dns: "8.8.8.8"
      cfg.vm.provider "virtualbox" do |vb, override|
        vb.gui = true
        vb.name = "tic4301-attacker"
        vb.customize ["modifyvm", :id, "--memory", 4096]
        vb.customize ["modifyvm", :id, "--cpus", 2]
        vb.customize ["modifyvm", :id, "--vram", "32"]
        vb.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
        vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
      end
    end
    config.vm.define "tic4301-host" do |cfg|
        cfg.vm.box = "StefanScherer/windows_2016"
        cfg.vm.hostname = "tic4301-host"
        cfg.vm.network :private_network, ip: "192.168.33.10", gateway: "192.168.33.1", dns: "8.8.8.8"
        cfg.vm.provider "virtualbox" do |vb, override|
          vb.gui = true
          vb.name = "tic4302-host"
          vb.customize ["modifyvm", :id, "--memory", 4096]
          vb.customize ["modifyvm", :id, "--cpus", 2]
          vb.customize ["modifyvm", :id, "--vram", "32"]
          vb.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
          vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
          vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
          vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
        end
      end
  end
  