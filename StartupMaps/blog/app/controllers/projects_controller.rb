class ProjectsController < ApplicationController

	def new

	end

	def create
		]
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
