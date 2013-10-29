# devtrail  

[![Build Status](https://secure.travis-ci.org/routelastresort/cookbook-devtrail.png)](http://travis-ci.org/routelastresort/cookbook-devtrail)

Installs an [OpenContrail](http://opencontrail.org) development environment

# Chef TODO

* [Data Bags](http://docs.opscode.com/essentials_data_bags.html) for github SSH keys, and/or something easier for end users
* Cookbook tests on every installed package and version

# Build TODO

* `devtrail::reposync` - git-repo sync (needs keys)
* `devtrail::build` - full build
* Hmmmm, Digital Ocean builds?
* Add compiler optimizations, will need to sync w/Vagrantfile through custom JSON

# Testing / CI (non-Chef) TODO

* Explore cloud services for best options
* Will probably attack this from a separate project angle?

# Vagrant TODO

* `chef.data_bags_path = "data_bags"`
* Make [LXC](https://github.com/fgrehm/vagrant-lxc) version for performance builds (needs boxes created)
* Add custom JSON for virtual hardware settings for compiler optimizations / performance upgrades
* [digitalocean](https://github.com/smdahlen/vagrant-digitalocean), [Rackspace](https://github.com/mitchellh/vagrant-rackspace), [AWS](https://github.com/mitchellh/vagrant-aws) and/or [OpenStack](https://github.com/cloudbau/vagrant-openstack-plugin) support
* Support [VMware Workstation and Fusion](http://www.vagrantup.com/vmware) - make a feature request if you need this...