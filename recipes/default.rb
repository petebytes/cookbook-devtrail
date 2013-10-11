#
# Cookbook Name:: devtrail
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

#include_recipe "yum::yum"

#

case node[:platform_family]
  when "debian"
    include_recipe "apt::default"
  when "rhel"
  	include_recipe "yum::default"
  	include_recipe "yum::repoforge"
  when "fedora"
  	include_recipe "yum::default"
end

include_recipe "devtrail::user"
include_recipe "devtrail::package"

# add kernel-devel to docs - mailing list: 
# Pedro: "The kernel-devel package is required to compile the vrouter (linux kernel module)."


remote_file "/usr/local/bin/repo" do
	source "http://commondatastorage.googleapis.com/git-repo-downloads/repo"
	mode 00755
	owner "root"
	group "root"
	checksum "e197cb48ff4ddda4d11f23940d316e323b29671c"
end