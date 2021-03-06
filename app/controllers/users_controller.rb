class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @apps = @user.user_relationships
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  def configureApp
    @apps  = Application.all
    @user = User.find(params[:id])
    render 'configure_app'
  end
  private
    
    def user_params
      params.require(:user).permit(:login, :password, :password_confirmation)
    end
end
