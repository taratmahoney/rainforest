class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private   
   helper_method :current_user #this turns the current_user method into a helper method that will be available in the views
    
    def current_user
      #check if the user that sent this request has a session
      @current_user ||= User.find(session[:user_id]) if session[:user_id]

    end

    def ensure_logged_in
      unless current_user
        flash[:alert] = "Please log in to perform this action!"
        redirect_to new_session_path
      end
    end    
end
