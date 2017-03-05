class MilestonesController < ApplicationController

  def new
  end

  def create
    milestone = Milestone.create(
      title: params[:title],
      date: params[:date],
      description: params[:description]
      )
    redirect_to '/milestones/:id'
  end

  def show
    milestone_id = params[:milestone_id]
    @milestone = Milestone.find_by(id: milestone_id)
  end

end
