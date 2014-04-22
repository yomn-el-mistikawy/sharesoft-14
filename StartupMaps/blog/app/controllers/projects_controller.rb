class ProjectsController < ApplicationController

# == Begin  == 
# UserStory: A startup can see a list of his projects. 
# Definition: This method allows you to get a list of projects. 
# that belong to a specific startup.
# Action: index.
# Author: Hana Magdy.

  def index
    session[:entity_id] = 1
    @projects = Project.listing_projects(Startup.find(session[:entity_id]))
    # @projects = Project.all
    # @startup = Startup.find(session[:entity_id])
    # @projects = @startup.project.find( :all)

    respond_to do |format|
      format.html
    end
  end


# UserStory: As a startup, I can set a project goal, milestone,
# requirements (roles, resources).
# Definition: This method shows all details of a project. 
# that belong to a specific startup and is linked to the show HTML file.
# Input: Project_id.
# Output: Project_id "all project description".
# Action: show.
# Author: Hana Magdy.

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html
    end
  end


# UserStory: As a  startup, I can set a project goal, milestone, requirements (roles, resources)
# Definition: This method allows you to edit a project given its project's id.
# Input: Project_id.
# Output: Project_id "all project description".
# Action: edit.
# Author: Hana Magdy.

  def edit
    @project = Project.find(params[:id])
  end


# UserStory: As a  startup, I can set a project goal, milestone, requirements (roles, resources).
# Definition: Allows editing of project details, specifically goals, milestones and requirements.
# Redirects user to project's page (show project) on success.
# Re-renders the edit project page on error.
# Action: update.
# Author: Hana Magdy.

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


  # UserStory: A project is launched after all requirements are met.
  # Definition:Changes the status of a project and redirects to the project's 
  #page (show project) on success or error.
  # with the exception of displaying a success/error message.
  # Action: change_launch_status.
  # Author: Hana Magdy.

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

  # == End  == 
  

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
