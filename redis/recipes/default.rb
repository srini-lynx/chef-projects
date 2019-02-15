# Cookbook:: redis
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'epel-release'
package 'redis'
service 'redis' do
	action :start
end
