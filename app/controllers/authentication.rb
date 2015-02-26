get '/authentication/signin' do
  erb :'authentication/signin'
end

get '/authentication/signup' do
  erb :'authentication/signup' 
end

post '/authentication/register_user' do 
  puts params
  if params[:password] == params[:password_confirm]

    user = User.new(name: params[:name], password: params[:password]) 
    user.save
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/?error=true'
  end
  
end

post '/authentication/login' do 
  user = User.find_by_name(params[:name])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/?error=true'
  end
end

get '/authentication/logout' do 
  session[:user_id] = nil
  200
end