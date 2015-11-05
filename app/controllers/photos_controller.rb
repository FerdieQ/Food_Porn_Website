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
    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html {render :new }
      end
    end
  end

  def destroy
    @photo.destroy
    respond_to do |format|
        format.html { redirect_to photos_url, notice: 'Photo was successfully removed.' }
        format.json { head :no_content }
    end
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :comments, :image)
    end
end
