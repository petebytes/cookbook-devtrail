default[:devtrail][:github][:email]    = 'john@routeoflastresort.com'
default[:devtrail][:github][:name]     = 'John Deatherage'
default[:devtrail][:build][:user]      = 'contrail'
default[:devtrail][:build][:group]     = 'contrail'
default[:devtrail][:package][:centos]  = %w{ wget gcc make unzip flex bison gcc-c++ openssl-devel vim kernel-devel git scons autoconf automake python-pip python-setuptools python-virtualenv python-lxml python-devel }
default[:devtrail][:package][:ubuntu]  = %w{ scons git python-lxml wget gcc make unzip flex bison g++ libssl-dev autoconf automake libtool pkg-config vim python-dev python-setuptools }