get "/" do
  redirect "/dogs"
end

get "/dogs" do
  erb :"dogs/index"
end

