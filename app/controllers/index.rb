get '/' do
  erb :'index'
  @question = Question.find_by(id: params[:id])
  @answers = Answer.all
end
