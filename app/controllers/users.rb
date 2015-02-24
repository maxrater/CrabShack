SAVED_USERS = [{id: 1, user:  User.new(name: 'zack', password:'1234') },
               {id: 2, user:  User.new(name: 'mike', password:'1234') },
               {id: 3, user:  User.new(name: 'jon', password:'1234') },
               {id: 4, user:  User.new(name: 'brendon', password:'1234') }]

#Index / Return All Users
get '/users' do
  
end

#Show / Return the user with :id
get '/users/:id' do

end

#Create / Adds new user
post '/users' do
  redirect '/users'
end

#Update / Updates user with ID
put '/users/:id' do
  redirect '/users'
end

#Destroy / Removes the users from the system 
delete '/users/:id' do
  redirect '/users'
end
