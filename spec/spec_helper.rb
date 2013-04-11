require 'sinatra'
require 'rack/test'
require 'fabrication'
require 'database_cleaner'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'application.rb')

Fabrication.configure do |config|
  config.fabricator_path = 'spec/fabricators'
  config.path_prefix     = File.dirname(__FILE__)
  config.sequence_start  = 10000
end

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.before(:suite) do
    # DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    # DatabaseCleaner.start
  end

  config.after(:each) do
    # DatabaseCleaner.clean
  end
end

configure do
  set :environment, :test
  set :run, false
  set :raise_errors, true
  set :logging, false
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.read(File.join(fixture_path, file))
end

def app
  Sinatra::Application
end