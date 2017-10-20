post '/answers' do
  current_user
  @answer = Answer.new(params[:answer])
  if @answer.save
    redirect "/question/#{params[:question_id]}"
  else
    @errors = "Nope, try again."
    erb :"/questions/show"
  end
end

delete '/answers/:id' do
  answer = Answer.find_by(id: params[:id])
  answer.destroy
  redirect "/question/#{params[:question_id]}"
end