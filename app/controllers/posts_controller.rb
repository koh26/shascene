class PostsController < ApplicationController

  def new
    @posts = Post.new
  end
  
  def create
  end

end
