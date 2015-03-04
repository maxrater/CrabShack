require 'json'
require 'pry'

get '/auth/signin' do
  erb :'auth/signin'
end

get '/auth/register' do
  erb :'/auth/register'
end

post '/authenticate/signup' do
  user = User.new(params)
  redirect '/admin' if user.save
  redirect '/auth/register?error=sww'
end

post '/auth/login' do 
  user = User.find_by_name(params[:name])
  if user && user.authenticate( params[:password] )
    session[:user_id] = user.id
    redirect '/admin'
  else
    redirect 'auth/signin?error=upi'
  end
end

post '/auth/login.json' do 
 
  content_type :json 

  user = User.find_by_name(params['name'])
  
  if user && user.authenticate( params['password'] )
    session[:user_id] = user.id
    {new_route: '/'}.to_json
  else
    403
  end
end

get '/auth/logout' do 
  session[:user_id] = nil
  redirect '/'
end
