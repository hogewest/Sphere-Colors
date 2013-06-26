require 'rubygems'
require 'sinatra'
require 'haml'
require 'json'

configure :production do
  require "newrelic_rpm"
end

before do
  set :haml, :format => :html5
  @sphere = JSON.parse(File.read('./public/sphere.json'))
end

get '/' do
  haml :index
end
