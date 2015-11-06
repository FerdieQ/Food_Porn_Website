class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to photos_path
    else
      render 'new'
    end
  end

  def destroy
    user = User.find(params[:id])
    if user
      user.destroy
    end
    redirect_to action: "index"
  end

  private
    def user_params
      params.require(:user).permit(:name, :username, :email, :moderator, :gender, :city, :country, :password, :password_confirmation)
    end
end
