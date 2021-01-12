class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :set_city, only: [:new, :create, :show, :edit]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :comfirmation, only: [:edit, :update, :destroy]

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to map_path(@city)
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to map_post_path
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to map_path(@post.city.id)
    else
      redirect_to root_path
    end
  end

  def search
    @post = Post.search(params[:key])
  end

  private

  def post_params
    params.require(:post).permit(:image, :title, :about, :day, :town, :number, :building).merge(user_id: current_user.id, city_id: params[:map_id])
  end

  def set_city
    @city = City.find(params[:map_id])
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def comfirmation
    redirect_to root_path unless current_user == @post.user
  end


end