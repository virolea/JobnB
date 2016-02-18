class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @posts = Post.all
  end

  def dashboard
  end

  def requests
  end

  def profile
  end
end
