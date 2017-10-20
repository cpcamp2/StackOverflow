get '/questions' do
  @questions = Question.all
  erb :'/questions/index'
end

post '/questions' do
  @questions = Question.all
  puts params
  @question = Question.new(params[:question])
  # puts @question.attributes
  if @question.save
  # binding.pry
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