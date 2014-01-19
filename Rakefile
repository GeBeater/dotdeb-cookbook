require 'rake'
require 'rspec/core/rake_task'
require 'coveralls/rake/task'
 
RSpec::Core::RakeTask.new(:spec)

desc "Runs foodcritic linter"
task :foodcritic do
    sh "foodcritic --epic-fail any ."
end

Coveralls::RakeTask.new

task :default => [:foodcritic, :spec]

task :ci => [:default, 'coveralls:push']