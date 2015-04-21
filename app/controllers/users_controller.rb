class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to products_url :notice => "Welcome to rainforest, bitch!"
    else
      render "new"
    end
  end

  private
  def user_params #strong parameters
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation) 
  end
end
