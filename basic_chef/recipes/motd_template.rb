#
# Cookbook:: basic_chef
# Recipe:: motd_template
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

template '/tmp/motd_template' do
	source 'motd_template.erb'
	variables(:myvar1 => "Hari Sarvothama",
		  :myvar2 => "Vayu Jevothama" 
		 )
end
