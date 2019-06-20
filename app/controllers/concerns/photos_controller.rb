
class PhotosController < ApplicationController
    before_action :authenticate_user!

def index
end

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
    @photo = Photo.new 
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end


end