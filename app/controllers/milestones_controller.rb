class MilestonesController < ApplicationController

  def new
  end

  def create
    milestone = Milestone.create(
      title: params[:title],
      date: params[:date],
      description: params[:description]
      )
    # redirect_to '/milestones/:id'
  end

  def show
    
  end

end
