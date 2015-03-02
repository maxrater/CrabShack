# Base Controller, will render the default home route. 

get '/' do
  erb :index
end

get '/admin' do
 
  redirect '/auth/signin?error=true' if session[:user_id].nil?

  @options = Hash.new
  @options[:users] = '/users'
  @options[:recipes] = '/recipes'

  erb :admin
end
