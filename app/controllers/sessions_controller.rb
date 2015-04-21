class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email]) #asks the database if this information is in there
    
      if user && user.authenticate(params[:password]) #takes the password, passes it through bcrypt and then compares it to 
      session[:user_id] = user.id
      redirect_to products_url, notice: "You're logged in"
    else
      flash.now[:alert] = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to products_url, notice: "You've been logged out"
  end
end
