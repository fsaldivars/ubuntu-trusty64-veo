# -*- mode: ruby -*-
# vi: set ft=ruby ts=2 sw=2 :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = " televisa/ubuntu-trusty64-veo"

  config.vm.network "private_network", ip: "10.10.10.101"
  config.vm.network "forwarded_port", guest: 80, host: 8001
  config.vm.network "forwarded_port", guest: 9000, host: 9001

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "../", "/var/www", id: "www-root", owner: "vagrant", group: "vagrant"

  config.vm.provider "virtualbox" do |vbox|
    vbox.name = "local.veo.tv-#{Time.now.to_i}"
    vbox.memory = 512
    vbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vbox.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/www-root", "1"]
  end

  config.vm.provision :shell, :path => "scripts/bootstrap.sh"
end