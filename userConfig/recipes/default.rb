
# Cookbook:: userConfig
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

user node['name'] do
        action :create
        password node['password']
        uid node['uid']
end

group node['groupPrimary'] do
        action :create
        gid node['gid']
end

group node['groupPrimary'] do
        action :modify
        members node['name']
end

user node['name'] do
        action :modify
        shell '/bin/bash'
end

group node['groupSecondary'] do
        action :create
        gid node['gid2']
	members node['name']
end

file node['name'] do
	name=node['name']
	path '/etc/sudoers'
	content "#{name} ALL = NOPASSWD: ALL

# User rule
#{name} ALL=(ALL) NOPASSWD:ALL"

end
