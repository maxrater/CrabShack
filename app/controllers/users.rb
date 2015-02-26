#Index / Return All Users
get '/users' do
  erb :"user/index"
end

#Show / Return the user with :id
get '/users/:id' do

end

#Create / Adds new user to array
post '/users' do
  redirect '/users'
end

#Update / Updates user with ID in the array
put '/users/:id' do
  redirect '/users'
end

#Destroy / Removes the users from the array 
delete '/users/:id' do
  redirect '/users'
end
