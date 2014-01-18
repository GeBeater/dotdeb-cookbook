dotdeb Cookbook
===============

[![Build Status](https://secure.travis-ci.org/GeBeater/dotdeb-cookbook.png)](http://travis-ci.org/GeBeater/dotdeb-cookbook)

This cookbook includes recipes to add the Dotdeb repository to your Debian "Squeeze" or
"Wheezy" systems to turn the boxes into powerful, stable and up-to-date LAMP servers.

Further information regarding the Dotdeb repository is available via http://www.dotdeb.org/ .

## Contribution

### Virtual Development Environment

In order to ease the life of developers and prevent that the local machine looks like a rubbish
tip a Vagrantfile has beend added.

Using Vagrant to create a virtual development environment is quite simple by follow these steps:

1. Install [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
2. Install [Vagrant](http://downloads.vagrantup.com/)
3. Install [Vagrant-Berkshelf Plugin](https://github.com/riotgames/vagrant-berkshelf)
4. Install [Chef](http://www.opscode.com/chef/install/)

#### Preparation of the Virtual Environment

```bash
cd /tmp
git clone git@github.com:GeBeater/dotdeb-cookbook.git
cd dotdeb-cookbook
vagrant up
```

## Tests

In order to validate changes at the recipes and these effects you can provision the
virtual environment via the `vagrant provision` command from the host system.

The spec can be run from the guest system in the folder `/vagrant` via `bundle exec rspec`.

## License

[MIT License](LICENSE.txt)