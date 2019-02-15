#
# Cookbook:: bcf_users
# Recipe:: randuser
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
user 'randuser' do
	manage_home true
	comment 'User Random'
	uid '1234'
	home '/home/randuser'
	shell '/bin/bash'
	password 'abcd1234'
end

