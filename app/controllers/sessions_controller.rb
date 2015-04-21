class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(:email => params[:email]) #asks the database if this information is in there
    
      if @user && @user.authenticate(params[:password]) #takes the password, passes it through bcrypt and then compares it to 
      session[:user_id = @user.id]
      redirect_to root_path, :notice => "You're logged in"
    else
      render 'new'
    end
  end

  def destroy
  end



end
