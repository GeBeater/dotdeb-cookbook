if node['lsb']['codename'].to_s.empty?
    Chef::Application.fatal!('The lsb-release package is required.')
end

unless ['squeeze', 'wheezy'].include?(node['lsb']['codename'])
    Chef::Application.fatal!('A stable Debian system in version >= 6.0 is required.')
end

apt_repository 'dotdeb' do
  uri 'http://packages.dotdeb.org'
  deb_src true
  distribution node['lsb']['codename']
  components ['all']
  arch 'amd64,i386'
  key 'http://www.dotdeb.org/dotdeb.gpg'
  action :add
end

apt_preference 'dotdeb' do
  glob         '*'
  pin          'origin packages.dotdeb.org'
  pin_priority '700'
end