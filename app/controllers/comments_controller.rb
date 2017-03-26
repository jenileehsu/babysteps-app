class CommentsController < ApplicationController

  def create
    kid = Kid.find_by(id: params[:kid_id])
    milestone = Milestone.find_by(id: params[:milestone_id])
    comment = Comment.create(
      name: params[:name],
      text: params[:text],
      milestone_id: params[:milestone_id]
      )
    redirect_to "/kids/#{kid.id}/milestones/#{milestone.id}"
  end

end
