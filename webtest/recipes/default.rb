#
# Cookbook:: webtest
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

#Install the Apache Package and Start the Service 
#
	case node['platform'] 
	when 'redhat','centos'
		package 'httpd'  do
			action :install
		end
	when 'ubuntu','debian'
		package 'apache2' do
			action :install
		end
	end
