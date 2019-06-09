class PlacesController < ApplicationController

def index
  @places = Place.all

  def new
     @place = Place.new
  end
  def create
    Place.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end


# or, use an explicit "per page" limit:
Place.paginate(page: params[:page], per_page: 10)

