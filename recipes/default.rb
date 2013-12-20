
apt_repository "dotdeb-wheezy" do
  uri "http://packages.dotdeb.org"
  deb_src true
  distribution "wheezy"
  components ["all"]
  key "http://www.dotdeb.org/dotdeb.gpg"
  action :add
end