class ProjectsController < ApplicationController

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