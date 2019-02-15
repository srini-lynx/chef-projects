#
# Cookbook:: bcf_tmpmotd
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

file "/tmp/motd" do
	content "
IPAddress     : #{node['ipaddress']}
Hostname      : #{node['hostname']}
Catch_Phrase  : #{node['catch_phrase']}
New_Attribute : #{node['new_attribute']}
"
end
