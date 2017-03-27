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
    @kid = Kid.find_by(id: params[:kid_id])
    @milestone = Milestone.find_by(id: params[:id])
  end

  def edit
    @kid = Kid.find_by(id: params[:kid_id])
    @milestone = Milestone.find_by(id: params[:id])
  end

  def update
    @kid = Kid.find_by(id: params[:kid_id])
    @milestone = Milestone.find_by(id: params[:id])
    @milestone.update(
      title: params[:title],
      date: params[:date],
      description: params[:description]
      )
    redirect_to "/kids/#{@kid.id}/milestones/#{@milestone.id}"
  end

  def destroy
    kid = Kid.find_by(id: params[:kid_id])
    # milestone_id = params[:id]
    milestone = Milestone.find_by(id: params[:id])
    milestone.destroy
    redirect_to "/kids/#{kid.id}"
  end

end
