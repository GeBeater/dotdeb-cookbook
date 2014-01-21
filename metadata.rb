name             'dotdeb_repo'
description      'A cookbook to add the Dotdeb repository for Debian-based LAMP servers to the sources.list.d.'
version          '1.0.1'
maintainer       'Bernd Hoffmann'
maintainer_email 'info@gebeat.com'
license          'MIT'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

supports 'debian', '>= 6.0'
depends  'apt'

recipe   'dotdeb_repo::default',    'Adds the main repository to the sources.list.d and installs the GnuPG key.'
recipe   'dotdeb_repo::php_newest', 'Adds additional repository to the sources.list.d to install PHP 5.4 on Debian 6.0 "Squeeze" or PHP 5.5 on Debian 7.0 "Wheezy".'

