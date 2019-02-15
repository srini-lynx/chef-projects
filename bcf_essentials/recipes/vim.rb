#
# Cookbook:: bcf_essentials
# Recipe:: vim
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package "vim"

cookbook_file "/etc/vimrc" do
	source 'default/vimrc'
end
