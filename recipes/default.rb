#
# Cookbook Name:: dmlb2000_chef
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'dmlb2000'
user 'browne'
group 'wheel' do
  members ['dmlb2000']
end
package 'libvirt-devel'
package 'libffi-devel'
package 'zlib-devel'
link '/etc/alternatives/ld' do
  to '/usr/bin/ld.gold'
end
include_recipe 'build-essential'
include_recipe 'vagrant'
include_recipe 'omnibus_updater'
include_recipe 'chef-client'
include_recipe 'chef-dk'
