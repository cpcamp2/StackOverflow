get '/questions' do
  @questions = Question.all
  @question = Question.find_by(id: params[:id])
  erb :'/questions/index'
end

post '/questions' do
  @question = Question.new(content: params[:content],
               user_id: current_user.id)
  if @question.save
    redirect "/users/#{current_user.id}"
  else
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