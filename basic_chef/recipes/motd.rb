#
# Cookbook:: basic_chef
# Recipe:: motd
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

IPADDR = node['ipaddress']
MEM    = node['memory']['total']
HOST   = node['hostname']
SWAP   = node['memory']['swap']['total']
CATTR  = node['company']['name']
OFFATTR = node['office']['address']
OFFPHONE = node['office']['phone']
CORPPHONE = node['corporate']['phone']
file '/tmp/motd' do
	content "This file Contains Information about NODE Object
NODE AUTHORIZED COMP   : #{CATTR}
Hostname of the Node   : #{HOST}
Total Amount of Mem    : #{MEM}
IP Address of the Node : #{IPADDR}
Swap Mem               : #{SWAP}

Please Contact Below for Addition Details for SERVER 
****************************************************
****************************************************
Office Address      : #{OFFATTR}
Office Phone        : #{OFFPHONE}
Corporate Phone     : #{CORPPHONE}

****************************************************
"
end
