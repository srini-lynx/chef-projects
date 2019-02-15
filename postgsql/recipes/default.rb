#
# Cookbook:: postgsql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#package_name = "pgdg-centos96-9.6-3.noarch.rpm"
cookbook_file "/opt/pgdg-centos96-9.6-3.noarch.rpm" do
	source "pgdg-centos96-9.6-3.noarch.rpm"
end

package "/opt/pgdg-centos96-9.6-3.noarch.rpm"

package "postgresql96-server" do
	action :install
end

package "postgresql96-contrib" do
	action :install
end

execute "Initalize DB" do
	command "/usr/pgsql-9.6/bin/postgresql96-setup initdb"

	not_if {Dir.exists?("/var/lib/pgsql/9.6/data") && !Dir.empty?("/var/lib/pgsql/9.6/data")}
end

service "postgresql-9.6" do
	action [:enable, :start]
end
