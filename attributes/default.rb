default['vagrant']['version'] = '1.7.2'
default['vagrant']['url']         = vagrant_package_uri(node['vagrant']['version'])
default['vagrant']['checksum']    = vagrant_sha256sum(node['vagrant']['version'])

default['vagrant']['plugins'] = %w(
  vagrant-libvirt
  vagrant-openstack-provider
)
default['vagrant']['user'] = 'dmlb2000'
