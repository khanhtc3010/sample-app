module SessionsHelper
  # login given user
  def log_in(user)
  	session[:user_id] = user.id
  end

  # return current login user
  def current_user
  	@current_user ||= User.find_by(id: session[:user_id])
  end

  # check logged in user
  def logged_in?
  	!current_user.nil?
  end

  # log out
  def log_out
  	session.delete(:user_id)
  	@current_user = nil
  end
end
