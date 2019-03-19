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


execute 'epel-install' do
  command 'rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm'
end

execute 'webtactics' do
  command 'rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm'
end
