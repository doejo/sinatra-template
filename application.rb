require './environment'

require 'sinatra'
require 'sinatra/assetpack'

configure do
  set :root, File.dirname(__FILE__)
  set :views, './views'
end

assets do
  serve '/js',     from: 'app/js'
  serve '/css',    from: 'app/css'
  serve '/images', from: 'app/images'

  css :app, [
    '/css/bootstrap.min.css',
    '/css/application.css',
  ]

  js :app, [
    '/jquery.js',
    '/js/bootstrap.min.js',
    '/js/application.js'
  ]
end

get '/' do
  erb :index
end