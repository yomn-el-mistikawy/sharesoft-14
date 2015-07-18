class EntitySocialLinksController < ApplicationController

  
  # Definition: show all the links which is saved by the userid.
  # Input: userid.
  # Output: sociallink.
  # Author: Tharey.

	def  show
		@links = EntitySocialLink.find(:all,:conditions => ["entity_id = ?",cookies[:userid]])
	end


  # Definition: checks if there is no one logged in to redirect again to login first.
  # Input: sociallink.
  # Output: void.
  # Author: Tharey.

	def  add
		if (cookies[:userid] == nil)
			redirect_to :controller => 'login' , :action => 'login'
		return
	end


  # Definition: create new entity social link object ,set the social link in it and set the user id of it.
  # And also gets the id of the entity from the cookies and save it in the database.
  # Input: user id.
  # Output: save the object in the database.
  # Author: Tharey.

	  if (params[:link] != nil)
			@e = EntitySocialLink.new
			@e.socialLinks = params[:link]
			@e.entity_id = cookies[:userid]
			@e.save
		end
	end
end