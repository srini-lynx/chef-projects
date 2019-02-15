#
# Cookbook:: file-test
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

file '/tmp/test_file.txt' do
content 'Hello World!! is the Content'
owner 'vagrant'
group 'vagrant'
mode  '0744'
end

