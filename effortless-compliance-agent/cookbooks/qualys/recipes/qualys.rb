#
# Cookbook:: qualys
# Recipe:: qualys
#
# Copyright:: 2020, The Authors, All Rights Reserved.

directory node['qualys']['assets_dir'] do
  recursive   true
  mode        '0755'
  action      :create
end

remote_file 'qualys_rpm' do
  path             node['qualys']['rpm_path']
  group            'root'
  owner            'root'
  source           node['qualys']['rpm_remote_source']
  only_if          "#{node['qualys']['is_remote_rpm']}"
end

package 'qualys-cloud-agent' do
  source           node['qualys']['rpm_path']
end

execute 'link-agent' do
  command "/usr/local/qualys/cloud-agent/bin/qualys-cloud-agent.sh ActivationId=#{node['qualys']['activation_id']} CustomerId=#{node['qualys']['customer_id']}"
end
