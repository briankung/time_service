class GeotimeController < ApplicationController
  def new
  end

  def create
    redirect_to root_url, status: 200
  end
end
