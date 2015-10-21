name 'dmlb2000_chef'
maintainer 'David Brown'
maintainer_email 'dmlb2000@gmail.com'
license 'All rights reserved'
description 'Installs/Configures dmlb2000_chef'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.3.8'

depends 'omnibus_updater'
depends 'build-essential'
depends 'chef-client'
depends 'chef-dk'
depends 'vagrant', '=0.3.0'
