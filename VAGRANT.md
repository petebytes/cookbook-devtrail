# devtrail  [![Build Status](https://secure.travis-ci.org/routelastresort/cookbook-devtrail.png)](http://travis-ci.org/routelastresort/cookbook-devtrail)

Installs an [OpenContrail](http://opencontrail.org) development environment

# Requirements

* Ruby 1.9.3
* [Vagrant](http://www.vagrantup.com/) 1.3.x / [VirtualBox](https://www.virtualbox.org/) 4.2.x
* [Berkshelf](http://berkshelf.com/), including the [Vagrant Berkshelf Plugin](https://github.com/riotgames/vagrant-berkshelf)

# Usage

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Install [Vagrant](http://downloads.vagrantup.com/)
3. `vagrant plugin install vagrant-berkshelf`
3. Install Ruby 1.9.x:
   Linux - [rbenv](https://github.com/sstephenson/rbenv) (or use your distro's 1.9.3+ version)
   Windows - [RailsInstaller for Ruby 1.9](http://railsinstaller.org/en)
   Mac - [RailsInstaller for Ruby 1.9](http://railsinstaller.org/en)
4. Install berkshelf `gem install berkshelf --no-ri --no-rdoc`
5. Change the directory of this repository
6. `berks install` will install the required gems (you may need to `rbenv rehash` first, if you're running rbenv)
7. `vagrant up` to bring the VM
8. `vagrant ssh` to connect to the VM via console

# Attributes

See `attributes/default.rb` for default values.

# Recipes

- [yum](http://community.opscode.com/cookbooks/yum)
- [python](http://community.opscode.com/cookbooks/python)

# Author

Author:: John Deatherage (john@routeoflastresort.com)