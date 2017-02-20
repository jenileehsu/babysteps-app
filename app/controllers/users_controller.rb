class UsersController < ApplicationController

  def index
  end
  
  def new
  end

  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      session[:id] = id
      flash[:success] = "Account successfully created!"
      redirect_to '/'
    else
      flash[:warning] = "Invalid email or password"
      redirect_to '/signup'
    end
  end

end
