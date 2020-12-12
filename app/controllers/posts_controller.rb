class PostsController < ApplicationController

  def new
    @city = City.find(params[:map_id])
    @post = Post.new
    # binding.pry
  end
  
  def create
    @city = City.find(params[:map_id])
    @post = Post.new(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:image, :title, :about, :day, :city, :number, :building).merge(user_id: current_user.id)
  end

end
