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


#python_virtualenv "/home/contrail/virtualenv" do
#	interpreter "python3.2"
#	owner "contrail"
#	group "contrail"
#	action :create
#end

#%w{ yum setuptools}.each do |py|
#	python_pip py do
#		virtualenv "/home/contrail/virtualenv"
#		action :install
#	end
#end

# add kernel-devel to docs - mailing list: 
# Pedro: "The kernel-devel package is required to compile the vrouter (linux kernel module)."



template "/home/contrail/.gitconfig" do
	source "gitconfig.erb"
	mode 0664
	owner "contrail"
	group "contrail"
	variables({
		:github_name => node[:devtrail][:github][:name],
	    :github_email => node[:devtrail][:github][:email]
	})
end

# TODO: contrail ssh keys
# TODO: contrail sudo

cookbook_file "/usr/local/bin/repo" do
	source "repo"
	owner "root"
	group "root"
	mode 0755
	action :create
end

#include_recipe "rbenv::default"
#include_recipe "rbenv::ruby_build"
#rbenv_ruby "1.9.3-p448"