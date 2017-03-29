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
      birthdate: params[:birthdate],
      avatar: params[:avatar]
      )
    flash[:success] = "Child successfully added."
    redirect_to "/kids/#{kid.id}"
  end

  def show
    @kid = Kid.find_by(id: params[:id])
    @milestones = Milestone.all.where(kid_id: @kid.id)
    # @milestone = Milestone.find_by(kid_id: @kid.id)
  end

  def edit
    @kid = Kid.find_by(id: params[:id])
  end

  def update
    @kid = Kid.find_by(id: params[:id])
    @kid.update(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      avatar: params[:avatar]
      )
    flash[:success] = "Child successfully updated!"
    redirect_to "/kids/#{@kid.id}"
  end

  def destroy
    @user = Kid.find_by(user_id: @current_user)
    kid_id = params[:id]
    kid = Kid.find_by(id: kid_id)
    kid.destroy
    redirect_to "/kids/new"
    # redirect to users show page
  end

end
