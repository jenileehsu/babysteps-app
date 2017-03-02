class KidsController < ApplicationController

  def index
  end
  
  def new
  end

  def create
    kid = Kid.create(
      user_id: current_user.id,
      name: params[:name],
      birthdate: params[:birthdate]
      )
    flash[:success] = "Child successfully added."
    redirect_to '/kids/:id'
  end

  def show
    kid_id = params[:kid_id]
    @kid = Kid.find_by(id: kid_id)
  end

end
