class ApplicationController < ActionController::Base
  include PublicActivity::StoreController 
  protect_from_forgery with: :exception



   
   
  protect_from_forgery 


  # Definition: Assign current_user in activities table to the logged_in startup.
  # Input: Startup id.
  # Output: void.
  # Author: Amr Gamal.

  def current_user  
    @current_user ||= Startup.find(session[:startup_id]) if session[:startup_id]  
  end  
  helper_method :current_user  
  hide_action :current_user  

  
  # Definition: Redirect the user to login page if he is not logged in.
  # Input: Startup id.
  # Output: void.
  # Author: Amr Gamal.

private  
  def require_login  
    redirect_to login_url, alert: "You must first log in or sign up." if current_user.nil?  
  end 

  before_action :authenticate_entity!

end
