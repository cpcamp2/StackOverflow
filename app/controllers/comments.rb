post '/comments' do
  @comment = Comment.new(content: params[:content],
               user_id: current_user.id, commentable_id: params[:thing_id], commentable_type: params[:commentable_type])
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
