#
# Cookbook:: lamp_eduonix
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

%w(httpd mariadb-server unzip git vim).each do |pkg|
  package pkg do
    action :install
  end
end


