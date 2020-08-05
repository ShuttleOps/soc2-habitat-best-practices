#
# Cookbook:: qualys
# Recipe:: qualys
#
# Copyright:: 2020, The Authors, All Rights Reserved.

directory node['qualys']['assets_dir'] do
  recursive true
  mode '0755'
  action :create
end

remote_file 'qualys_pkg' do
  path "#{node['qualys']['assets_dir']}/#{node['qualys']['pkg_name']}"
  group 'root'
  owner 'root'
  source node['qualys']['pkg_remote_source']
  only_if "#{node['qualys']['is_remote_pkg']}"
end

if platform_family?('rhel')
  rpm_package 'qualys-cloud-agent' do
    source "#{node['qualys']['assets_dir']}/#{node['qualys']['pkg_name']}"
  end
elsif platform_family?('debian')
  directory "#{shell_out!('hab pkg path core/dpkg').stdout.strip}/var/lib/dpkg" do
    action :delete
    recursive true
    only_if { !File.symlink?("#{shell_out!('hab pkg path core/dpkg').stdout.strip}/var/lib/dpkg") }
  end

  link "#{shell_out!('hab pkg path core/busybox-static').stdout.strip}/bin/ps" do
    to  "/bin/ps"
  end

  link "#{shell_out!('hab pkg path core/dpkg').stdout.strip}/var/lib/dpkg" do
    to  "/var/lib/dpkg"
  end

  dpkg_package 'qualys-cloud-agent' do
    source "#{node['qualys']['assets_dir']}/#{node['qualys']['pkg_name']}"
  end
end

execute 'link-agent' do
  command "/usr/local/qualys/cloud-agent/bin/qualys-cloud-agent.sh ActivationId=#{node['qualys']['activation_id']} CustomerId=#{node['qualys']['customer_id']}"
end
