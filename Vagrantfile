# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

# TODO: make sure systems have 1GB of RMA by default
builders = [
  { name: "centos6",
    box: "opscode-centos-6.4",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_centos-6.4_provisionerless.box",
    ip: '33.33.33.11',
    ssh_port: 2201  },
  { name: "fedora18",
    box: "opscode-fedora18",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode-fedora-18_provisionerless.box",
    ip: '33.33.33.12',
    ssh_port: 2202  },
  { name: "fedora19",
    box: "opscode-fedora19",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode-fedora-19_provisionerless.box",
    ip: '33.33.33.13',
    ssh_port: 2203  },
  { name: "precise",
    box: "opscode-precise",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box",
    ip: '33.33.33.14',
    ssh_port: 2204  },
  { name: "raring",
    box: "opscode-raring",
    url: "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box",
    ip: '33.33.33.15',
    ssh_port: 2205  }    
]


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  builders.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.hostname = opts[:name]
      config.vm.box = opts[:box]
      config.vm.box_url = opts[:url]
      config.omnibus.chef_version = :latest
      config.vm.network :private_network, ip: opts[:ip]
      config.vm.boot_timeout = 120
      config.berkshelf.enabled = true
      config.vm.network :forwarded_port, guest: 22, host: opts[:ssh_port], auto: 'true'
   end
  end

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      "recipe[devtrail::default]"
    ]
  end

end