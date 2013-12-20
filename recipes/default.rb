
apt_repository "dotdeb-wheezy" do
  uri "http://packages.dotdeb.org"
  deb_src true
  distribution "wheezy"
  components ["all"]
  key "http://www.dotdeb.org/dotdeb.gpg"
  action :add
end

apt_preference 'dotdeb' do
  glob         '*'
  pin          'origin packages.dotdeb.org'
  pin_priority '700'
end