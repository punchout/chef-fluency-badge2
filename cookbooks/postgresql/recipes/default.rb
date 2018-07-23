#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


package 'postgresql_server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postgresql_setup initdb'
	action :nothing
end

service 'postgresql' do 
	action [:enable, :start]
end
