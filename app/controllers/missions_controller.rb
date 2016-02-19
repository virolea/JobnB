class MissionsController < ApplicationController
  before_action :set_post, only: [:new, :create]

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.buying_user = current_user
    @mission.selling_user = @post.user
    @mission.post = @post
    @mission.status = "pending"
    @mission.save

    redirect_to post_path(@post)
  end

  def accept
    @mission = Mission.find(params[:id])
    @mission.status = "accepted"
    @mission.save

    redirect_to requests_path
  end

  def decline
    @mission = Mission.find(params[:id])
    @mission.status = "declined"
    @mission.save

    redirect_to requests_path
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def mission_params
    params.require(:mission).permit(:description)
  end
end
