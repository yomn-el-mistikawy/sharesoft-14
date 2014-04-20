class ProjectsController < ApplicationController

=begin
	This methods queries the table project for projects that are in the same category and location as the current project
	Input: selected project id
	Output: @suggested
	Author: Yomn El-Mistikawy
=end
def suggest
	@project= Project.find(1)
    @suggested= Project.where(:location => "cairo", :category => "baking").where.not(:id => "1", :startup_id => "1")
end
=begin
	This method shows the profile of the selected suggested project
	Input: selected project id
	Output: view showing the profile of the project with a merge request button
	Author: Yomn El-Mistikawy
=end
def showSuggested
    @project= Project.find(params[:project])
end


def new

end

def create
	
	@project = Projects.new(project_params)
	@project.save
	redirect_to @project
end

	# Definition: This method sends merge request to other startups in order to merge their projects,the method takes parameters from the suggested projects and sends the request to the chosen project.
	# Input: suggested_project, project_id.
	# Output: void.
	# Author: Mozdan Ahmed.
	
  def merge_request
		@suggested_project = Project.find(params[:suggested_project])
		@project = Project.find(params[:project_id])
    @send_request = SendMergeRequest.create(:sender_id => @project.startup_id, :receiver_id => @suggested_project.startup_id, :project_id => @suggested_project.id)
	end
end
