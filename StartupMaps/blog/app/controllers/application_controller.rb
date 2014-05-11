class ApplicationController < ActionController::Base

	include ApplicationHelper
	
  protect_from_forgery with: :exception
  before_action :authenticate_entity!
end
