#!/usr/bin/env bash

sudo apt-get update

# nokogiri requirements (http://nokogiri.org/tutorials/installing_nokogiri.html)
sudo apt-get -q -y install libxslt-dev libxml2-dev

# gecode library issue
# http://dev.inventit.io/posts/2014/04/29/berkshelf3_for_opsworks_ubuntu.html
# workaround like USE_SYSTEM_GECODE=1 requires libgecode
sudo apt-get -q -y install libgecode-dev g++

sudo ldconfig

sudo gem install bundler

cd /vagrant

USE_SYSTEM_GECODE=1 bundle install