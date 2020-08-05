#
# Cookbook:: qualys
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

return unless platform_family?('rhel') # currently only supports RHEL and Centos
include_recipe 'qualys::qualys'
