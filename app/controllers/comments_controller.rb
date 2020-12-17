class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to map_post_path(@comment.city, @comment.post)
    else
      redirect_to map_post_path(@comment.city, @comment.post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, city_id: params[:map_id], post_id: params[:post_id])
  end

end
