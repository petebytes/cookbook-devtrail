
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