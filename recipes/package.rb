#
# Cookbook Name:: devtrail
# Recipe:: package
#
# The MIT License (MIT)

# Copyright (c) 2013 John Deatherage <john@routeoflastresort.com>

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

case node[:platform_family]
when "debian"
  node[:devtrail][:package][:debian].each do |pkg|
    package pkg do
      action :install
    end
  end
when "fedora"
  node[:devtrail][:package][:fedora].each do |pkg|
    package pkg do
      action :install
    end
  end
when "rhel"
  node[:devtrail][:package][:rhel].each do |pkg|
    package pkg do
      action :install
    end
  end
  node[:devtrail][:package][:rpmforge].each do |pkg|
    package pkg do
      action :upgrade
      options "--enablerepo=rpmforge-extras --disablerepo=base,updates"
    end
  end
  remote_file "#{Chef::Config[:file_cache_path]}/scons-2.3.0-1.noarch.rpm" do
    source "ftp://fr2.rpmfind.net/linux/sourceforge/s/sc/scons/scons/2.3.0/scons-2.3.0-1.noarch.rpm"
    mode 00644
    checksum "6118144fa90861b8fb871d70027230385f651d26c89640ea02cba653af8b6c06"
  end
  package "scons" do
    version "2.3.0-1"
    action :install
    source "#{Chef::Config[:file_cache_path]}/scons-2.3.0-1.noarch.rpm"
  end

end

# TODO: add kernel-devel to docs - mailing list: 
# Pedro: "The kernel-devel package is required to compile the vrouter (linux kernel module)."
