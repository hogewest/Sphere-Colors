require 'rubygems'
require 'sinatra'
require 'haml'

before do
  set :haml, :format => :html5
end

get '/' do
  haml :index
end
