#
# Cookbook Name:: devtrail
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

#include_recipe "yum::yum"
#include_recipe "yum::epel"
#include_recipe "yum::repoforge"

include_recipe "devtrail::user"


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
# remove 'path', whatever that is

node[:devtrail][:package][:ubuntu].each do |p|
  	apt_package p do
  		action :install
    end
end

#%w{ wget gcc make unzip flex bison gcc-c++ python-pip python-setuptools python-virtualenv
# python-lxml python-devel openssl-devel autoconf automake vim  }.each do |p|
#  	yum_package p do
#  		action :install
#    end
#end

# todo: add development box packages (editors, lints, perf monitoring, etc.)

#%w{git scons autoconf automake }.each do |p|
#    yum_package p do
#       action :install
#       options '--enablerepo=rpmforge-extras'
#    end
#end


# TODO: install newer scons from scons.org package


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