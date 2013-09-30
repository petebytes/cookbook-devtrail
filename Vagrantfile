# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "devtrail-berkshelf"
  config.vm.box = "precise-server-cloudimg-amd64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
  config.omnibus.chef_version = :latest
  config.vm.network :private_network, ip: "33.33.33.11"
  config.vm.boot_timeout = 120
  config.berkshelf.enabled = true


  config.vm.provision :chef_solo do |chef|

    chef.run_list = [
      "recipe[devtrail::default]"
    ]
  end


end