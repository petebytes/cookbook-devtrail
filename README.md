# devtrail

[![Build Status](https://secure.travis-ci.org/routelastresort/cookbook-devtrail.png)](http://travis-ci.org/routelastresort/cookbook-devtrail)

Installs multiple [OpenContrail](http://opencontrail.org) builders / development environments

# Requirements

## Chef

Tested on Chef 11.6.0, other recent versions may have no issues

## Platforms

- Ubuntu 12.04 LTS through 13.10 (stable and latest)
- Centos 6, RHEL6, and derivatives (Scientific, White Box, etc.)
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

Uses Vagrant boxes from [Opscode's Bento Project](https://github.com/opscode/bento), and they're the same people that make Chef.  If you or your company want to use your own boxes, Bento is a good starting point!  If you use this project, the downloads come directly from Opscode.

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
