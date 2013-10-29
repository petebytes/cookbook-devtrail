# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

require "vagrant"

if Vagrant::VERSION < "1.2.1"
  raise "devtrail requires Vagrant 1.2.x or higher"
end

# TODO: make sure systems have 1GB of RMA by default
builders = [
  { name: "centos6",
    box: "opscode-centos-6.4",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_centos-6.4_provisionerless.box",
    ssh_port: 2001 },
  { name: "fedora-18",
    box: "opscode-fedora-18",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode-fedora-18_provisionerless.box",
    ssh_port: 2002 },
  { name: "fedora-19",
    box: "opscode-fedora-19",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode-fedora-19_provisionerless.box",
    ssh_port: 2003 },
  { name: "precise",
    box: "opscode-ubuntu-12.04",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box",
    ssh_port: 2004 },
  { name: "saucy",
    box: "opscode-ubuntu-13.10",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-13.10_provisionerless.box",
    ssh_port: 2005 },
]


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  builders.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.hostname = opts[:name]
      config.vm.box = opts[:box]
      config.vm.box_url = opts[:url]
      config.omnibus.chef_version = :latest
      #config.chef.log_level = :debug
      #config.vm.network :private_network, ip: opts[:ip]
      config.vm.boot_timeout = 120
      config.berkshelf.enabled = true
      config.vm.network "forwarded_port", guest: 22, host: opts[:ssh_port], id: "ssh", auto_correct: true
    end
    config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
      vb.customize ["modifyvm", :id, "--cpus", "2"] 
    end
  end

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      "recipe[devtrail::default]"
    ]
  end

end
