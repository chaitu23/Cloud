
# Cookbook:: userConfig
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

user 'chaitu' do
        action :create
        password 'Password'
        home '/home/chaitu'
        uid '231'
end

group 'Group1' do
        action :create
        gid '567'
end

group 'Group1' do
        action :modify
        members 'chaitu'
end

user 'chaitu' do
        action :modify
        shell '/bin/bash'
end

group 'Group2' do
        action :create
        gid '789'
	members 'chaitu'
end

file '/etc/sudoers.d/chaitu' do
	content "chaitu ALL = NOPASSWD: ALL

# User rule
chaitu ALL=(ALL) NOPASSWD:ALL"

end
