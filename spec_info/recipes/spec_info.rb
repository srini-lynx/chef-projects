#
# Cookbook:: spec_info
# Recipe:: spec_info
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file '/tmp/spec_info.txt' do
	content "
	Total  Memory        :  #{(node['memory']['total'][0..-3].to_f / 1024 / 1024).round(2).to_s + " GB \n" }
	Available Memory     :  #{(node['memory']['available'][0..-3].to_f / 1024 / 1024).round(2).to_s + " GB \n" }
	Total Swap           :  #{(node['memory']['swap']['total'][0..-3].to_f / 1024 / 1024).round(2).to_s + " GB \n"}
	Free Swap Space      :  #{(node['memory']['swap']['free'].to_f / 1024 / 1024).round(2).to_s + " GB \n"}
	"
end
