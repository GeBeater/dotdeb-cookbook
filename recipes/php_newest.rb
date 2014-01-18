apt_repository ((node['lsb']['codename'] == 'wheezy') ? 'dotdeb-php55' : 'dotdeb-php54') do
  uri 'http://packages.dotdeb.org'
  deb_src true
  distribution (node['lsb']['codename'] == 'wheezy') ? 'wheezy-php55' : 'squeeze-php54'
  components ['all']
  arch 'amd64,i386'
  action :add
end