class ProjectsController < ApplicationController


	# Defintion: This method takes the following input 
	# and calls get_suggested() to show a list of 
	# projects with the same geographical location and
	# category to the startup.
	# Input: project_id
	# Output: project_id, suggested_project
	# Author: Yomn El-Mistikawy

	def suggest
		@suggested = Project.get_suggest(Project.find(params[:project_id]))
	end


	# Defintion: This method takes the suggested project id
	# as input and views the project with a button for the startup
	# to send a merge request to the project owner.
	# Input: suggested_project
	# Output: project_id, suggested_project
	# Author: Yomn El-Mistikawy
	# End 

	def show_suggested
  	@project = Project.find(params[:suggested_project])
	end

	  

def new

end

def create
	
	@project = Projects.new(project_params)
	@project.save
	redirect_to @project
end

	

def show
	@project = Projects.find(params[:id])
end
private
def project_params
	params.require(:project).permit(:name, :category, :location, :discription)
end

end
