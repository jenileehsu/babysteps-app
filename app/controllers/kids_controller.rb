class KidsController < ApplicationController

  def index
  end
  
  def new
  end

  def create
    kid = Kid.create(
      user_id: current_user.id,
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate]
      )
    flash[:success] = "Child successfully added."
    redirect_to '/kids/:id'
  end

  def show
    @kid = Kid.find_by(id: params[:id])
  end

end
