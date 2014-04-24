class PasswordResetsController < ApplicationController
  def new
  end

  # Definition: Finds the user by their email, sends password if the user is an existing entity then redirects to the home page.
  # Input: E-mail
  # Output: Void
  # Author: Omar El-Menawy

  def create
  	entity = Entity.find_by_e_mail(params[:e_mail])
  	entity.send_password_reset if entity
  	redirect_to root_url, :notice => "Email sent with password reset instructions."
	end

	def edit
  	@entity = Entity.find_by_password_reset_token!(params[:id])
	end

	def update
  	@entity = Entity.find_by_password_reset_token!(params[:id])
  if @entity.password_reset_sent_at < 2.hours.ago
    redirect_to new_password_reset_path, :alert => "Password reset has expired."
  elsif @entity.update_attributes(params[:user])
    redirect_to root_url, :notice => "Password has been reset!"
  else
    render :edit
  end
	end
end
