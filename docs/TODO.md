# devtrail  

[![Build Status](https://secure.travis-ci.org/routelastresort/cookbook-devtrail.png)](http://travis-ci.org/routelastresort/cookbook-devtrail)

Installs an [OpenContrail](http://opencontrail.org) development environment

# Chef TODO

* [Data Bags](http://docs.opscode.com/essentials_data_bags.html) for github SSH keys, and/or something easier for end users
* Cookbook tests on every installed package and version

# Build TODO

* devtrail::reposync - git-repo sync (needs keys)
* devtrail::build - full build
* Hmmmm, digital ocean builds?
* Add compiler optimizations, will need to sync w/Vagrantfile through custom JSON

# Testing / CI (non-Chef) TODO

* Explore cloud services for best options
* Will probably attack this from a separate project angle?

# [Vagrantfile](Vagrantfile) TODO

* Debug issues with [Bento](https://github.com/opscode/bento) Fedora baseboxes (worked fine w/o Multi-Machine)
* `chef.data_bags_path = "data_bags"`
* Add RAM + CPU configuration
* Add custom JSON for virtual hardware settings for compiler optimizations / performance upgrades