require 'sinatra'

get '/' do
  puts "Zack"
  puts request.inspect
  " Welcome To Phase 2 Fiddler Crabs "
end

