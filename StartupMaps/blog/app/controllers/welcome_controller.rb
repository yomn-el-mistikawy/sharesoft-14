class WelcomeController < ApplicationController
	# Leads to the index page of welcome
	# Adel Zee Badawy

	def index
		@entity = Entity.find(1)
	end
end

