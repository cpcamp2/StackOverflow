get "/" do
  redirect "/dogs"
end

get "/dogs" do
  @dogs = Dog.all
  erb :"dogs/index"
end

