#
# Cookbook:: unit_redis
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

package "epel-release"
package "redis"

service "redis" do
	action [:enable,:start]
end
