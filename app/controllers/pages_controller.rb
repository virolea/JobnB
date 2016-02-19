class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @posts = Post.all
  end

  def dashboard
  end

  def requests
    @missions = Mission.where(selling_user_id: current_user.id).where(status: "pending")
  end

  def treated
  end
end
