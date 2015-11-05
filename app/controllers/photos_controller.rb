class PhotosController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

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


  def create
    @photo = Photo.new(photo_params)
      if @photo.save
        redirect_to root_path, notice: 'Photo was successfully created.'
      else
        render :new
      end
  end




  private
    def set_post
      @post = Post.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:title, :comments, :image)
    end
end
