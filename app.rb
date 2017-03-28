require 'rubygems'
require 'sinatra'
require 'hamlit'
require 'json'

configure do
  set :static_cache_control => [:public, :max_age => 60 * 60 * 24]
  set :haml, format: :html5
  set :sphere, JSON.parse(File.read('./public/sphere.json'))
end

get '/' do
  @sphere = settings.sphere
  haml :index
end
