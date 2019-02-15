#
# Cookbook:: adminusers
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

admins = data_bag('users')

admins.each do |login|
	admin = data_bag_item('users',login)

	user(login) do
		uid       admin['uid']
		gid       admin['gid']
		shell     admin['shell']
		comment   admin['comment']
		home      "/home/#{login}"
	end

end

group 'devops' do
	members admins
end
