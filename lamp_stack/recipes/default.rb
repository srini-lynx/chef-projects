#
# Cookbook:: lamp_stack
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


execute 'Update the apt get repository' do

  command "apt-get update"

end

include_recipe 'lamp_stack::web'
