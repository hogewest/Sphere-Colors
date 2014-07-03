require 'rubygems'
require 'sinatra'
require 'haml'
require 'json'

configure do
  set :haml, ugly: false, attr_wrapper: '"', escape_html: true
  set :sphere, JSON.parse(File.read('./public/sphere.json'))
end

configure :production do
  require 'newrelic_rpm'
end

get '/' do
  @sphere = settings.sphere
  haml :index
end
