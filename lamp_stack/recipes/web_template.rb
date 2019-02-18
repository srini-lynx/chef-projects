#
# Cookbook:: lamp_stack
# Recipe:: web_template
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#


package 'Apache Installation' do
  case node['platform']
  when 'redhat','centos' , 'scientific', 'oracle'
    package_name 'httpd'
  when 'debian', 'ubuntu'
    package_name 'apache2'
  end
end

template node['lamp']['index_path'] do
  source 'web_template.erb'
  variables({speed: node['cpu'['0']['mhz']})
end

service 'Start and Enable Apache' do
  case node['platform']
  when 'redhat','centos', 'scientific', 'oracle'
    service_name 'httpd'
  when 'ubuntu','debian'
    service_name 'apache2'
  end
  action [:enable, :start]
end
