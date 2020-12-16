class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @city = City.find(params[:map_id])
    @post = Post.new
  end
  
  def create
    @city = City.find(params[:map_id])
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to map_path(@city)
    else
      render :new
    end
  end

  def show
    @city = City.find(params[:map_id])
    @post = Post.find(params[:id])
  end

  def edit
    @city = City.find(params[:map_id])
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to map_post_path
    else
      render :edit
    end

  end

  private

  def post_params
    params.require(:post).permit(:image, :title, :about, :day, :town, :number, :building).merge(user_id: current_user.id, city_id: params[:map_id])
  end

end
