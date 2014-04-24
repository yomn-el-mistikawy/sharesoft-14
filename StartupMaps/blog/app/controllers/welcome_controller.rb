class WelcomeController < ApplicationController


	# Definition: Initializes variable @entity, it is meant to take a session as a parameter, but since
	# the session is not functioning, the input (1) is manual. This is done in order to visit the profile of
	# the entity to check and edit its internship status.
	# Input: Entity tuple.
	# Output: @entity variable.
	# Author: Adel Zee Badawy.

  def index
  	@entity = Entity.find(1)
  end
end

