#
# Cookbook:: tomcat
# Recipe:: server
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'java-1.7.0-openjdk-devel'

group 'tomcat' 

user 'tomcat' do
	gid 'tomcat'
end

directory '/opt/tomcat'

bash 'Download and Install tomcat' do
	user 'root'
	cwd  '/tmp'
	code <<-EOH
	wget http://mirror.reverse.net/pub/apache/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
	wget https://github.com/johnfitzpatrick/certification-workshops/blob/master/Tomcat/sample.war*
	tar xvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
	chgrp -R tomcat /opt/tomcat/conf
	chmod g+rwx /opt/tomcat/conf
	chmod g+r /opt/tomcat/conf/*
	chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/
	EOH

	not_if File.exists?('yum list all | grep -i tomcat')
end

template '/etc/systemd/system/tomcat.service' do
	  source 'tomcat.erb'
          notifies :start, 'service[tomcat]', :immediately 
end

service 'tomcat' do
	action [:start,:reload,:enable]
end
