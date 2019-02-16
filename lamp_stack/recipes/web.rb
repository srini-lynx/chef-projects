#
# Cookbook:: lamp_stack
# Recipe:: web
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

package  'apache2' 

file '/var/www/html/index.html' do
  content '<h1>Hello World</h1>'
end

service  'apache2' do
  action [:start, :enable]
end
