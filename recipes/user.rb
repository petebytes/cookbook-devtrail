group node[:devtrail][:build][:group]

user node[:devtrail][:build][:user] do
	system true
	comment 'Contrail build user'
	home node[:devtrail][:build][:home]
	group node[:devtrail][:build][:group]
	supports :manage_home => true
	shell "/bin/bash"
end

template "/home/contrail/.gitconfig" do
	source "gitconfig.erb"
	mode "664"
	owner node[:devtrail][:build][:user]
	group node[:devtrail][:build][:group]
	variables({
		:github_name => node[:devtrail][:github][:name],
	    :github_email => node[:devtrail][:github][:email]
	})
end