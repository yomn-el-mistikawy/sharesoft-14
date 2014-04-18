class ProjectsController < ApplicationController

  # == Listing Projects / Author:Hana ==
  ##
  # Action: index
  # Allows you to get a list of projects that belong to a specific entity
  # 
  def index
    @projects = Entity.find(params[:entity_id]).projects

    respond_to do |format|
      format.html
    end
  end
  # == End listing projects == 

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html
    end
  end


  # == Editing Projects / Author:Hana ==
  ##
  # Action: edit
  # Allows you to edit a project given its project +id+
  # 
  def edit
    @project = Project.find(params[:id])
  end

  ##
  # Action: update
  # Allows editing of project details, specifically goals, milestones and requirements
  # Redirects user to project's page (show project) on success
  # Re-renders the edit project page on error
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project].permit(:goals, :milestones, :requirements))
        format.html { redirect_to @project, notice: "Successfully updated project" }
      else
        format.html { render :edit }
      end
    end

  end

  ##
  # Action: change_launch_status
  # Changes the status of a project and redirects to the project's page (show project) on success or error
  # with the exception of displaying a success/error message
  def change_launch_status
    project = Project.find(params[:id])
    respond_to do |format|

      if project.update_attribute(:launch, !project.launch)
        flash.notice = "Successfully launched project"
      else
        flash.alert = "Oops, couldn't launch project"
      end

      format.html { redirect_to project }

    end
  end

  # == End Editing projects == 


  

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
  @project = Project.new
end

def create
	@project = Project.new(project_params)
	@project.save
	redirect_to @project
end

private
def project_params
	params[:project].permit(:name, :category, :location, :description)
end

end
