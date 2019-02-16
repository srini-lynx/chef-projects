#
# Cookbook:: lamp_stack
# Recipe:: web
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#


package 'Install Apache Package' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end


end

file '/var/www/html/index.html' do
  content '<h1>Hello World</h1>'
end


service 'Start and Enable Apache Service' do
  case node[:platform]
  when 'redhat', 'centos'
    service_name 'httpd'
  when 'ubuntu', 'debian'
    service_name 'apache2'
end
