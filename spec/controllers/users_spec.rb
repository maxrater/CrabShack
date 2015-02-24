require_relative '../spec_helper'

describe 'Users Controller' do
  it 'response to get /users' do
    get '/users' 
    expect(last_response).to be_ok
  end

  it 'response to get /users/:id' do 
    get '/users/2' 
    expect(last_response).to be_ok
  end

  it 'response to post /users' do
    post '/users'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
  end
  
  it 'response to put /users/:id' do
    put '/users/:id'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
  end
  
  it 'response to delete /users/:id' do
    delete '/users/:id'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
  end
end
