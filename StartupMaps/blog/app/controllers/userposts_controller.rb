class UserpostsController < ApplicationController
	before_action :signed_in_entity

  def create
    @userpost = current_entity.userposts.build(userpost_params)
    if @userpost.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      @feed_items = []
      redirect_to root_url
    end
  end

  def destroy
  end

  private

    def userpost_params
      params.require(:userpost).permit(:content)
    end
end
