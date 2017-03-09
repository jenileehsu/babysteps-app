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
      session[:user_id] = user.id
      flash[:success] = "Account successfully created!"
      redirect_to '/users/:id'
    else
      flash[:warning] = "Invalid email or password"
      redirect_to '/signup'
    end
  end

  def show
    @current_user = current_user.id
    @user = User.find(params[:id])
    @kid = Kid.find_by(user_id: @current_user) #calling kids with user_id that is equal to the current user
  end

end
