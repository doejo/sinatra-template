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

  #js_compression  :uglify
  #css_compression :sass

  css :app, '/css/application.css', [
    '/css/bootstrap.min.css',
    '/css/application.css',
  ]

  js :app, '/js/application.js', [
    'http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.js',
    '/js/bootstrap.min.js',
    '/js/application.js'
  ]
end

get '/' do
  erb :index
end