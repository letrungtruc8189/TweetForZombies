class UsersController < ApplicationController
  def new
    @user = User.all

  end

  def index
    @user = User.all

  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user)
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:name, :email, :role)
  end
end
