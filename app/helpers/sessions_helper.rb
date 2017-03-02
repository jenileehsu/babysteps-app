module SessionsHelper
  
  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def logout
    @current_user = session[:user_id] = nil
  end

end
