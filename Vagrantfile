# -*- mode: ruby -*-
# vi: set ft=ruby :

# configuration for second version of Vagrant
Vagrant.configure("2") do |config|
  # setting box (here we have Ubuntu 12.04 LTS 64-bit)
  config.vm.box = "hashicorp/precise64"

  # setting file for ssh provisioning (this file will be run on startup)
  config.vm.provision :shell, :path => "init/bootstrap.sh"

  # port forwarding (8820 is a default JBake port)
  config.vm.network "forwarded_port", guest: 8820, host: 8820
  # ssh agent forwarding (virtual machine will have access to our local ssh settings)
  config.ssh.forward_agent = true

  # syncing JBake project folder to have access to it from the virtual machine
  config.vm.synced_folder "../../../KodujLepiejPL", "/home/vagrant/project", create: false

  # configuration for VirtualBox provider
  config.vm.provider :virtualbox do |vb|

    vb.name = "KodujLepiejPL"

    #fix for issue with symbolic links in shared folders
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]

    # memory settings
    vb.memory = 1024
    # CPU settings
    vb.cpus = 2

    # this two settings fixed my problem with network slowness between local and virtual machine
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
end
