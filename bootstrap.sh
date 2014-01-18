#!/usr/bin/env bash

# nokogiri requirements (http://nokogiri.org/tutorials/installing_nokogiri.html)
sudo apt-get -q -y install libxslt-dev libxml2-dev

sudo ldconfig

sudo gem install bundler

cd /vagrant

bundle install