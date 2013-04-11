APP_FILE  = 'application.rb'
APP_CLASS = 'Sinatra::Application'

require 'bundler'
require 'rspec/core/rake_task'
require 'sinatra/assetpack/rake'

RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = 'spec/*_spec.rb'
  t.verbose = false
end

task :environment do
  require './environment'
end

task :default => :test