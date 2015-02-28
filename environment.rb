ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)

# DSL
require 'sinatra'

# DB / ORM
require 'pg'
require 'active_record'

# Ruby Must Haves
require 'bundler/setup'
require 'rubygems'

# File Utils
require 'uri'
require 'pathname'

#Template Engine
require 'erb'

# Some helper constants for path-centric logic
APP_ROOT = Pathname.new(File.expand_path('../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

configure do
  set :root, APP_ROOT.to_path
  set :views, File.join(APP_ROOT, "app","view")
  enable :session
end

# Set up the controllers and models
Dir[APP_ROOT.join('app', 'models', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }

# Bring in the database requirements
require APP_ROOT.join('database')


