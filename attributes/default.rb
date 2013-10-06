default[:devtrail][:github][:email]     = 'john@routeoflastresort.com'
default[:devtrail][:github][:name]      = 'John Deatherage'
default[:devtrail][:build][:user]       = 'contrail'
default[:devtrail][:build][:group]      = 'contrail'
default[:devtrail][:package][:rpm]      = %w{ wget gcc patch make unzip flex bison gcc-c++ openssl-devel vim kernel-devel git scons autoconf automake python-pip python-setuptools python-virtualenv python-lxml python-devel }
default[:devtrail][:package][:rpmforge] = %w{ git scons autoconf automake }
default[:devtrail][:package][:deb]      = %w{ scons git python-lxml wget gcc patch make unzip flex bison g++ libssl-dev autoconf automake libtool pkg-config vim python-dev python-setuptools }