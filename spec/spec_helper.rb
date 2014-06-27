require 'chefspec'
require 'chefspec/berkshelf'
require 'support/matchers'

unless ENV['TRAVIS']
    at_exit { ChefSpec::Coverage.start! }
end