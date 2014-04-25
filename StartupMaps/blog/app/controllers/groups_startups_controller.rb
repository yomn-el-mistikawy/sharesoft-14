class GroupsStartupsController < ApplicationController

	def index
		@groups_startups = GroupsStartup.all
 	end

	def new
		@groups_startup = GroupsStartup.new
	end
	
	def create
		@groups_startup = GroupsStartup.new(group_params)
		if @groups_startup.save
			redirect_to @groups_startup 
  	else
			render 'new'
  	end
	end

	def destroy
		@groups_startup.destroy
  end
end

