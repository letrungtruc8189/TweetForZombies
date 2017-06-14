class SessionController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in(@user)
      flash[:success] = "Login successfully"
      redirect_to users_path
    else
      flash[:danger] = "Invalid Username/passsord"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to signin_path
  end

end
