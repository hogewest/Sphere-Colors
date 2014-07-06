require 'rubygems'
require 'bundler'
Bundler.setup
require './app'

use Rack::Deflater
run Sinatra::Application
