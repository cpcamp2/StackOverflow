post '/comments' do
  @comment = Comment.new(params[:comment])
  if @comment.save
    redirect "/question/#{params[:question_id]}"
  else
    @errors = "Nope, try again."
    erb :"/questions/show"
  end
end

delete '/comments/:id' do
  comment = Comment.find_by(id: params[:id])
  comment.destroy
  redirect "/question/#{params[:question_id]}"
end
