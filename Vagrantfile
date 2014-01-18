# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # All Vagrant configuration is done here. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Once the Vagrant Berkshelf plugin is installed it can be enabled.
  config.berkshelf.enabled = true

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "debian-7.3.0-amd64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://vagrantboxes.gebeat.info/debian-7.3.0-amd64.box"

  # Use the shell provisioner to setup the machine, with the bootstrap.sh file.
  config.vm.provision :shell, :path => "bootstrap.sh"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network :private_network, ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

  # Enable provisioning with chef solo and adding some recipes.
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "dotdeb::default"
    chef.add_recipe "dotdeb::php_newest"

    # You may also specify custom JSON attributes:
    chef.json = {  }
  end

end