class TrailsController < ApplicationController

  def index
    @trails = Trail.all
  end

  def show
    @trails = Trail.find(params[:id])
  end

  private

  def trip_params
    params.require(:trail).permit(:name, :address, :length)
  end
end
