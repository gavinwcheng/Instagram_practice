class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params)
    redirect_to root_path
  end

  def photo_params
    params.require(:photo).permit(:title, :image)
  end
end
