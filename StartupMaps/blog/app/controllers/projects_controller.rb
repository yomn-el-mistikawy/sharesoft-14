class ProjectsController < ApplicationController
	def merge_request
		@suggested_project = Project.find( params[:suggested_project] )
		@project = Project.find( params[:project_id] )
    @send_request = SendMergeRequest.create( :sender_id => @project.startup_id, :receiver_id => @suggested_project.startup_id, :project_id => @suggested_project.id )
	end
end
