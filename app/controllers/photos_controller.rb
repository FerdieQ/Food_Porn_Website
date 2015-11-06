class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def form
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(photo_params)
      redirect_to photos_path, notice: 'Photo successfully changed.'
    else
      render edit_photo_path
    end
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
