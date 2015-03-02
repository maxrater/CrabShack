# Base Controller, will render the default home route. 

get '/' do
  erb :index
end

get '/admin' do
  puts "ZAAACCCKKKK"
  puts session[:user_id]
  erb :admin
end
