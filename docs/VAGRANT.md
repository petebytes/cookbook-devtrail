# devtrail  

[![Build Status](https://secure.travis-ci.org/routelastresort/cookbook-devtrail.png)](http://travis-ci.org/routelastresort/cookbook-devtrail)

Installs an [OpenContrail](http://opencontrail.org) development environment

# Requirements

* Ruby 1.9.3
* [Vagrant](http://www.vagrantup.com/) 1.3.x / [VirtualBox](https://www.virtualbox.org/) 4.2.x
* [Berkshelf](http://berkshelf.com/), and the [Vagrant Berkshelf Plugin](https://github.com/riotgames/vagrant-berkshelf)
* [Vagrant Omnibus Plugin](https://github.com/schisamo/vagrant-omnibus) to bootstrap a Ruby+Chef environment within the Vagrant instances

# Attributes

See `attributes/default.rb` for default values.  Change the github user and email to modify what contrail's .git/config will use

TODO: use a [Chef Data Bag](http://docs.opscode.com/essentials_data_bags.html) (or easier method) to

# Usage

1. Install [VirtualBox 4.2.x](https://www.virtualbox.org/wiki/Downloads)
2. Install [Vagrant 1.3.x](http://downloads.vagrantup.com/)
3. `vagrant plugin install vagrant-berkshelf` and `vagrant plugin install vagrant-omnibus`
3. Install Ruby 1.9.x:
   [via rbenv](http://misheska.com/blog/2013/06/15/using-rbenv-to-manage-multiple-versions-of-ruby/)
   [via RVM](http://misheska.com/blog/2013/06/15/using-rbenv-to-manage-multiple-versions-of-ruby/)
4. Install berkshelf `gem install berkshelf --no-ri --no-rdoc` (you may need to `rbenv rehash` first, if you're running rbenv)
5. Clone this repository `git clone https://github.com/routelastresort/cookbook-devtrail`
6. Change to the directory of this repository
7. `berks install` will install the required cookbooks (you may need to `rbenv rehash` first, if you're running rbenv)
8. `vagrant up` to bring the VMs, or `vagrant up [centos6|precise|raring|fedora18]` to bring up individual VMs
9. `vagrant ssh [centos6|precise|raring|fedora18]` to connect to the VMs via console

# I need more help!

If it will benefit you, ask me to make a screencast (I need an excuse to anyway)

# Building

This obviously needs work, and you will eventually be able to get:

- a cloned repo with devtrail::reposync 
- a build run with devtrail::build
- [Jenkins CI](http://jenkins-ci.org/) integration will come in the form of another cookbook that uses devtrail as a builder

1. Copy the ssh key you use for github into your Vagrant VMs with scp
2. `sudo su - contrail`
3. `mkdir source && cd source`
4. `repo init -u git@github.com:Juniper/contrail-vnc`
5. `repo sync`

The full docs are at the [contrail-vnc repo](http://juniper.github.io/contrail-vnc/README.html)