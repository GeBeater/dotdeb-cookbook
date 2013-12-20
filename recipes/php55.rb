
apt_repository "dotdeb-wheezy-php55" do
  uri "http://packages.dotdeb.org"
  deb_src true
  distribution "wheezy-php55"
  components ["all"]
  action :add
end