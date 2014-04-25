class ApplicationController < ActionController::Base

# Definition: Identifies current user.
# Input: Entity.
# Output: Void.
# Author: Omar El-Menawy.

def current_user
  @current_user ||= Entity.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
end


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
