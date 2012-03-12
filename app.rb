require 'rubygems'
require 'sinatra'
require 'haml'
require 'json'

before do
  set :haml, :format => :html5
  @sphere = JSON.parse(File.read('./public/sphere.json'))
end

get '/' do
  haml :index
end
