class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post = @user.posts.order("created_at DESC")
  end

end
