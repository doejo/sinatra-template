require './environment'

require 'sinatra'
require 'sinatra/assetpack'

configure do
  set :root,   File.dirname(__FILE__)
  set :public_dir, "./public"
  set :views,  "./views"
end

assets do
  serve '/js',     from: 'public/js'
  serve '/css',    from: 'public/css'
  serve '/images', from: 'public/images'

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