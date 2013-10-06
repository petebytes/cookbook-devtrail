case node[:platform_family]
	when "debian"
		execute "apt-get-update" do
           command "apt-get update"
           ignore_failure true
           action :nothing
        end
		node[:devtrail][:package][:deb].each do |p|
		  apt_package p do
  		      action :install
  		  end
  		end
  	when "fedora"
        node[:devtrail][:package][:rpm].each do |p|
           yum_package p do
  		       action :install
  		   end
  		end
  	when "rhel"
  		include_recipe "yum::epel"
  		node[:devtrail][:package][:rpm].each do |p|
           yum_package p do
  		       action :install
  		   end
  		end
  		node[:devtrail][:package][:rpmforge] do |p|
  		   yum_package p do
  				action: install
  				options "--enablerepo=rpmforge-extras"
  		   end
  		end
end