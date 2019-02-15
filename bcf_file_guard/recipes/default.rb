#
# Cookbook:: bcf_file_guard
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

file '/var/tmp/guard.txt' do

	content "<h1>The content of this file is a SAMPLE</h1>"
	action :create
	not_if { File.exists?("/var/tmp/guard.txt") }
end
