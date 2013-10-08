
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
        action :install
        options "--enablerepo=rpmforge-extras"
      end
    end
end