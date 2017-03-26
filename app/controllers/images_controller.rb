class ImagesController < ApplicationController

  def index
    @kid = Kid.find_by(id: params[:kid_id])
    @milestone = Milestone.find_by(id: params[:milestone_id])
    @images = Image.where(milestone_id: params[:milestone_id])
  end 

  def new
    @kid = Kid.find_by(id: params[:kid_id])
    @milestone = Milestone.find_by(id: params[:milestone_id])
  end

  def create
    kid = Kid.find_by(id: params[:kid_id])
    milestone = Milestone.find_by(id: params[:milestone_id])
    image = Image.create(
      avatar: params[:avatar],
      milestone_id: params[:milestone_id]
      )
    redirect_to "/kids/#{kid.id}/milestones/#{milestone.id}"
  end

  def show
    @kid = Kid.find_by(id: params[:kid_id])
    @milestone = Milestone.find_by(id: params[:milestone_id])
    @image = Image.find_by(id: params[:id])
  end

  def destroy
    kid = Kid.find_by(id: params[:kid_id])
    milestone = Milestone.find_by(id: params[:milestone_id])
    image = Image.find_by(id: params[:id])
    image.destroy
    redirect_to "/kids/#{kid.id}/milestones/#{milestone.id}"
  end

end
