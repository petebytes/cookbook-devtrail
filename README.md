# devtrail

[![Build Status](https://secure.travis-ci.org/routelastresort/cookbook-devtrail.png)](http://travis-ci.org/routelastresort/cookbook-devtrail)

Installs multiple [OpenContrail](http://opencontrail.org) builders / development environments

# Requirements

## Chef

Tested on Chef 11

## Cookbooks

- [apt](http://community.opscode.com/cookbooks/apt)
- [yum](http://community.opscode.com/cookbooks/yum)
- [python](http://community.opscode.com/cookbooks/python)

## Platforms

- Ubuntu 12.04 LTS and 13.04
- Centos 6, and all Red Hat derivatives
- Fedora 18 and 19

# Recipes

## default

Installs the most basic dev environment needs from [Contrail's README](http://juniper.github.io/contrail-vnc/README.html)

## user

Called by default: creates user 'contrail' for a sandbox, and a clean Python virtualenv in `/home/contrail/virtualenv`.

# Attributes

See `attributes/default.rb` for default values.

# Misc

Uses Vagrant boxes from [Opscode's Bento Project](https://github.com/opscode/bento), and they're the same people that make Chef.  If you or your company want to use your own boxes, Bento is a good starting point!

# Author

Author:: John Deatherage (john@routeoflastresort.com)
