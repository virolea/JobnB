class MissionsController < ApplicationController
  before_action :set_post, only: [:create]

  def new
  end

  def create
    @mission = Mission.new
    @mission.buying_user = current_user
    @mission.selling_user = @post.user
    @mission.post = @post
    @mission.status = "pending"
    @mission.save
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
