class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @user = @post.user
    @user_coordinates = { lat: @user.latitude, lng: @user.longitude } unless @user.latitude.nil?
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @user = @post.user
    @user.address = @post.address
    @user.save
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to :back
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :date_begin, :date_end, :employee_skill, :employee_name, :address)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
