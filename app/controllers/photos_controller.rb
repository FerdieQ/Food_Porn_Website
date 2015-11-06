class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def show
  end

  def form
    @photo = Photo.new
  end

  def edit
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path, :notice => "Photo Deleted"
  end


  def create
    @photo = Photo.new(photo_params)
      if @photo.save
        redirect_to photos_path, notice: 'Photo was successfully created.'
      else
        render :new
      end
  end




  private
    def set_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:title, :comments, :image)
    end
end
