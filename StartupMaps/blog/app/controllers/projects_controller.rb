class ProjectsController < ApplicationController

	# Defintion: This method takes the following input 
	# and calls get_suggested() to show a list of suggested 
	# projects to the user.
	# Input: project_id
	# Output: project_id, suggested_project
	# Author: Yomn El-Mistikawy

	def suggest
		@suggested = Project.get_suggest(Project.find(params[:project_id]))
	end


	## Defintion: This method takes the following input 
	# and calls get_suggested() to show a list of suggested 
	# projects to the user.
	# Input: project_id
	# Output: project_id, suggested_project
	# Author: Yomn El-Mistikawy
	## End 

	def show_suggested
  	@project = Project.find(params[:suggested_project])
	end
end