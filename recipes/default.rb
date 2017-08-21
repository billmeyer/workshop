#
# Cookbook:: workshop
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'epel-release'

file '/bin/chef-client' do
  action :delete
end

file '/usr/bin/chef-client' do
  action :delete
end

cookbook_file '/usr/bin/chef-client' do
  source 'chef-client'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
