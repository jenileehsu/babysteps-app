class MilestonesController < ApplicationController

  def new
    @kid = Kid.find(params[:kid_id])
  end

  def create
    # find current kid associated with current user
    kid = Kid.find_by(id: params[:kid_id])
    #This is finding the id for the kid under the params for kid_id under milestones
    milestone = Milestone.create(
      kid_id: params[:kid_id],
      title: params[:title],
      date: params[:date],
      description: params[:description]
      )
    redirect_to "/kids/#{kid.id}/milestones/#{milestone.id}"
  end

  def show
    @milestone = Milestone.find_by(id: params[:id])
  end

end
