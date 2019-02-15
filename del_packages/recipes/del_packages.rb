#
# Cookbook:: del_packages
# Recipe:: del_packages
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

[ 'telnet', 'telnet-client', 'emacs', 'httpd', 'nano' ].each do |pkg|
	package pkg do
	   action :remove
	end
end
