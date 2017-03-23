class ImagesController < ApplicationController

  def new
    @kid = Kid.find_by(id: params[:kid_id])
    @milestone = Milestone.find_by(id: params[:id])
    @image = Image.find_by(id: params[:id])
  end

  def create
    kid = Kid.find_by(id: params[:kid_id])
    milestone = Milestone.find_by(id: params[:id])
    image = Image.create(
      milestone_id: params[:milestone_id],
      image: params[:image]
      )
    redirect_to "/kids/#{kid.id}/milestones/#{milestone.id}/images/#{image.id}"
  end

  def show
    @kid = Kid.find_by(id: params[:kid_id])
    @milestone = Milestone.find_by(id: params[:id])
    @image = Image.find_by(id: params[:id])
  end  

end
