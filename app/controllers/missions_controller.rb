class MissionsController < ApplicationController
  def create
    mission = Mission.new
    mission.buying_user = current_user
    mission.selling_user = Post.find(params[:post_id]).user
    mission.post = Post.find(params[:post_id])
    mission.status = "pending"
    mission.save
  end
end
