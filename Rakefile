require 'rake'
require 'rspec/core/rake_task'

desc "Run foodcritic lint tool rules check"
task :lint do
    sh "foodcritic --epic-fail any ."
end

RSpec::Core::RakeTask.new(:spec)

desc "Run all tests"
task :test => [:lint, :spec]
task :default => :test