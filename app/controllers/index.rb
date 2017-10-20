get '/' do
  erb :'index'
  @question = Question.find_by(id: params[:id])
  @answers = Answer.all
  if logged_in?
    redirect "/users/#{current_user.id}"
  else
    erb :'index'
  end
end
