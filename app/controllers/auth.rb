get '/auth/signin' do
  @error = 'already signed in' unless session[:user_id].nil?
  @error = 'Username or Password Invalid' if params[:error]
  erb :'auth/signin' 
end

get '/auth/register' do
  @error = 'something went wrong' if params[:error]
  erb :'/auth/register'
end

post '/authenticate/signup' do
  user = User.new(params)
  redirect '/admin' if user.save
  redirect '/auth/register?error=true'
end

post '/auth/login' do 
  user = User.find_by_name(params[:name])
  
  if user && user.authenticate( params[:password] )
    session[:user_id] = user.id
    redirect '/admin'
  else
    redirect 'auth/signin?error=true'
  end
end

get '/auth/logout' do 
  session[:user_id] = nil
  redirect '/'
end
