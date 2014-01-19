require 'simplecov'
SimpleCov.start do
   add_filter '/spec/'
   add_group 'recipes', 'recipes'
end

SimpleCov.coverage_dir "coverage"

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!('rails')
end



module SimpleCov::Configuration
  def clean_filters
    @filters = []
  end
end

require 'chefspec'
require 'chefspec/berkshelf'
require 'helper/chefspec_matchers'