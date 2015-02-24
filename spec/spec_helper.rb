ENV['RACK_ENV'] ||= 'test'

require 'rubygems'
require File.expand_path('../environment', __FILE__)

require 'shoulda-matchers'
require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
    Sinatra::Application
end


