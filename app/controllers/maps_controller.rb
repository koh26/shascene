class MapsController < ApplicationController

  def index
  end

  def show
    @citys = City.find(params[:id])
  end

end
