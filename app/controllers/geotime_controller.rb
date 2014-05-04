class GeotimeController < ApplicationController
  def new
    @geotime = Geotime.new
  end

  def create
    @geotime = Geotime.create(params.permit(:lat,:long))
    redirect_to geotime_path(@geotime)
  end

  def show
    
  end
end
