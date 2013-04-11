require 'bundler'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = 'spec/*_spec.rb'
  t.verbose = false
end

task :environment do
  require './environment'
end

task :default => :test