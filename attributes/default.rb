# Github settings for contrail user
# Set these for build automation to work
default[:devtrail][:github][:email]     = 'githubemail@domain.com'
default[:devtrail][:github][:name]      = 'Github Name'

# Username for devtrail environment
default[:devtrail][:build][:user]       = 'contrail'
default[:devtrail][:build][:group]      = 'contrail'
default[:devtrail][:build][:home]       = '/home/contrail'

# packages
# currently, http://juniper.github.io/contrail-vnc/README.html is the best source
# TODO: refactor

default[:devtrail][:package][:rhel]     = %w{ wget gcc patch make unzip flex bison gcc-c++ openssl-devel vim kernel-devel python-setuptools python-lxml python-devel }
default[:devtrail][:package][:rpmforge] = %w{ git autoconf automake }
default[:devtrail][:package][:fedora]   = %w{ wget gcc patch make unzip flex bison gcc-c++ openssl-devel vim-enhanced kernel-devel git scons autoconf automake python-pip python-setuptools python-virtualenv python-lxml python-devel }
default[:devtrail][:package][:debian]   = %w{ scons git python-lxml wget gcc patch make unzip flex bison g++ libssl-dev autoconf automake libtool pkg-config vim python-dev python-setuptools }


# ignore me!
# default['devtrail']['foodcritic']['fail'] = 'fail'
