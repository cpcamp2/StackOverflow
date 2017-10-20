get '/questions' do
  @questions = Question.all
  @question = Question.find_by(id: params[:id])
  erb :'/questions/index'
end

post '/questions' do
  @answers = Answer.all
  @questions = Question.all
  @question = Question.new(params[:question])
  if @question.save
    redirect "/users/#{current_user.id}"
  else
    @errors = "Nope, try again."
    erb :"/users/show"
  end
end

get '/question/:id' do
  @question = Question.find_by(id: params[:id])
  @answers = @question.answers
  erb :'questions/show'
end

get '/question/:id/edit' do
  @question = Question.find_by(id: params[:id])
  if current_user == @question.user
    erb :'questions/edit'
  else
    status 401
    redirect "/questions/#{@question.id}"
  end
end

patch '/question/:id' do
  @question = Question.find_by(id: params[:id])
  @question.update(params[:question])
  redirect "/"
end

delete '/questions/:id' do
  question = Question.find_by(id: params[:id])
  question.destroy
  redirect "/users/#{current_user.id}"
end
