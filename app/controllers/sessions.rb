get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  user = User.authenticate(params[:user][:username], params[:user][:password])
  if user
    status 200
    session[:user_id] = user.id
    redirect '/'
  else
    status 422
    @errors = ["Yeah, that's gonna be a no for me, dawg"]
    erb :'sessions/new'
  end
end

get '/sessions/logout' do
  session.clear
  redirect '/'
end