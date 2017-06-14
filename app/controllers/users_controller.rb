class UsersController < ApplicationController
  def new
    @user = User.new

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
    @user = User.create(user_params)
    if @user.valid?
      flash[:success] = "User is created successfully!"
      redirect_to users_path
    else
      flash[:danger] = @user.errors.messages
      render 'new'
    end

  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  end
end
