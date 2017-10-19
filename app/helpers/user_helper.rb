def current_user
	@current ||= User.find_by(:id session[:user_id])
end

def logged_in?
  !!current_user
end

def require_user
  redirect '/users/new' unless logged_in?	
end