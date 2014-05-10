class ApplicationController < ActionController::Base

  # before_action :configure_permitted_parameters, if: :devise_controller?

  #  protected

  #  def configure_permitted_parameters
  #    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit({roles: []}, :email, :password, :password_confirmation)}
  #    devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:username, :email)}
  #  end

  #  def devise_parameter_sanitizer
  #    if resource_class == Entity
  #      Entity::ParameterSanitizer.new(Entity, :entity, params)
  #    else
  #      super # Use the default one
  #    end
  #  end
  
  protect_from_forgery with: :exception
  before_action :authenticate_entity!
end
