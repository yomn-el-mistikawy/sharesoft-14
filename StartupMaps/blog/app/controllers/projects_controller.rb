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

	

def show
	@project = Projects.find(params[:id])
end
private
def project_params
	params.require(:project).permit(:name, :category, :location, :discription)
end

end
