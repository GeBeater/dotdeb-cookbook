require 'chefspec'
require 'chefspec/berkshelf'
require 'spec_matchers'

unless ENV['TRAVIS']
    at_exit { ChefSpec::Coverage.report!('coverage/results.json', true) }
end