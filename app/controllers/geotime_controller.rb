class GeotimeController < ApplicationController
  def new
    @geotime = Geotime.new
  end

  def create
    @geotime = Geotime.new(params[:geotime].permit(:lat,:long))
    @geotime.earthtools_time = EarthTools.new.timezone(params[:geotime][:lat], params[:geotime][:long])
    @geotime.save!
    redirect_to geotime_path(@geotime)
  end

  def show
    
  end
end
