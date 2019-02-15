#
# Cookbook:: unit_apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


case node['platform']
when  'centos'
package 'httpd'
service 'httpd' do
	action [:start,:enable]
end

when 'ubuntu'
package 'apache2'
service 'apache2' do
	action [:start,:enable]
end
end
