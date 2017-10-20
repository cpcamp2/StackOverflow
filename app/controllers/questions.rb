get '/questions' do
  @questions = Question.all
  erb :'/questions/index'
end

post '/questions' do
  # current_user
  # binding.pry
  @question = Question.new(content: params[:content],
               user_id: current_user.id)
  puts params
  if @question.save
    redirect "/users/#{current_user.id}"
  else
    # binding.pry
    @errors = "Nope, try again."
    erb :"/users/show"
  end
end

delete '/questions/:id' do
  question = Question.find_by(id: params[:id])
  question.destroy
  redirect "/users/#{current_user.id}"
end

get '/question/:id' do
  @question = Question.find_by(id: params[:id])
  @answers = @question.answers
  erb :'questions/show'
end