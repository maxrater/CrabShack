ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)

require 'sinatra'

require 'bundler/setup'
require 'rubygems'

require 'uri'
require 'pathname'
require 'pg'
require 'active_record'


# Some helper constants for path-centric logic
APP_ROOT = Pathname.new(File.expand_path('../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Set up the controllers and helpers
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }

# Set up the database and models
require  APP_ROOT.join('./', 'database')

