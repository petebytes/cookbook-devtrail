group node[:devtrail][:build][:group]

user node[:devtrail][:build][:user] do
	system true
	comment 'Contrail build user'
	home node[:devtrail][:build][:home]
	group node[:devtrail][:build][:group]
	supports :manage_home => true
	shell "/bin/bash"
end