class MilestonesController < ApplicationController

  def new
  end

  def create
    milestone = Milestone.create(
      kid_id: current_kid.id,
      title: params[:title],
      date: params[:date],
      description: params[:description]
      )
    redirect_to '/kids/:id'
  end

  def show
    @milestone = Milestone.find_by(id: params[:id])
  end

end
