#
# Cookbook:: lamp_stack
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


apt_update 

include_recipe 'lamp_stack::web'
