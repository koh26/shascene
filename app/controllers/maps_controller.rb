class MapsController < ApplicationController

  def index
  end

  def show
    @city = City.find(params[:id])
    @post = Post.where(city_id: params[:id]).order("created_at DESC")
  end


end