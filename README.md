# devtrail

[![Build Status](https://secure.travis-ci.org/routelastresort/cookbook-devtrail.png)](http://travis-ci.org/routelastresort/cookbook-devtrail)

Installs multiple [OpenContrail](http://opencontrail.org) builders / development environments

# Requirements

## Chef

Tested on Chef 11.6.0

## Cookbooks

- [apt](http://community.opscode.com/cookbooks/apt)
- [yum](http://community.opscode.com/cookbooks/yum)
- [python](http://community.opscode.com/cookbooks/python)

## Platforms

- Ubuntu 12.04 LTS and 13.04 (stable and latest)
- Centos 6, and all Red Hat derivatives
- Fedora 18 and 19

# Recipes

## default

Installs the most basic dev environment needs from [Contrail's README](http://juniper.github.io/contrail-vnc/README.html)

## user

Called by default: creates user 'contrail' for a sandbox, and (a clean Python virtualenv in `/home/contrail/virtualenv` / [TBD!](docs/TODO.md))

## package

Called by default: installs the base packages required for building Contrail, any required second-party repos (e.g. rpmforge), and any final dependencies (e.g. scons on RHEL/CentOS)

# Attributes

See `attributes/default.rb` for default values.

# Misc

Uses Vagrant boxes from [Opscode's Bento Project](https://github.com/opscode/bento), and they're the same people that make Chef.  If you or your company want to use your own boxes, Bento is a good starting point!  For now, I'm using [Puppet Labs' Fedora 18 box](http://puppet-vagrant-boxes.puppetlabs.com/), since I had some issues with Fedora 18 and 19 on Bento.  tl;dr: these boxes come from safe sources.

- See the [Vagrant docs](docs/VAGRANT.md) for instructions on setting up Vagrant

# License and Authors

- Author:: John Deatherage (john@routeoflastresort.com)

```text
The MIT License (MIT)

Copyright (c) 2013 John Deatherage

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```