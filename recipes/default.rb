#
# Cookbook Name:: dmlb2000_chef
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'libvirt-devel'
package 'libffi-devel'
package 'zlib-devel'
link '/etc/alternatives/ld' do
  to '/usr/bin/ld.gold'
end
include_recipe 'build-essential'
include_recipe 'vagrant'
%w(
vagrant-libvirt
vagrant-openstack-provider
).each do |plugin|
  execute "/opt/vagrant/embedded/bin/gem install #{plugin} --no-user-install" do
    environment 'SSL_CERT_FILE' => '/opt/vagrant/embedded/cacert.pem'
    not_if "/opt/vagrant/embedded/bin/gem list --local | grep -q #{plugin}"
  end
end
include_recipe 'omnibus_updater'
include_recipe 'chef-client'
include_recipe 'chef-dk'
