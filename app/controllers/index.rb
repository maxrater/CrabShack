require 'sinatra'

get '/' do
  # Inspects all of the methods of the request objects
  # puts request.inspect

  # Return with a response code: 200 and body
  'Welcome To Phase 2 Fiddler Crabs - Crabuluous!'
end
