#
# Cookbook:: qualys
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
return unless platform_family?('rhel', 'debian') # currently only supports RHEL, Centos, Debian and Ubuntu
include_recipe 'qualys::qualys'
