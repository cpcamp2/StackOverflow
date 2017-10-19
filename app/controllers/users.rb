get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    status 200
    redirect '/sessions/new'
  else
    status 422
    @errors = user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  if current_user
    status 200
    @questions = Question.all
    erb :'users/show'
  else
    status 422
    redirect '/'
  end
end