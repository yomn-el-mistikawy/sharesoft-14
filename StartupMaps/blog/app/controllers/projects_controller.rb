class ProjectsController < ApplicationController


  # Definition: "As a startup, I can set a project goal, milestone,
  # requirements (roles, resources) "
  # This method shows all details of a project
  # that belong to a specific startup and is linked to the show HTML file
  # which also includes the launch and editing part
  # respond_to --> gives a direct access to the HTML/XML/PDF whatever is it
  # it's reachable and knows what's happening in the file.
  # Input: Project_id.
  # Output: Project_id "all project description".
  # Author: Hana Magdy.

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html
    end
  end



  # Definition: "A project is launched after all requirements are met"
  # Changes the status of a project and redirects to the project's 
  # page (show project) on success or error
  # with the exception of displaying a success/error message
  # update_attribute --> updates the rows
  # update the status of launch project from unlaunch to launched and vice versa.
  # Input: project_id. "on the show page".
  # Output: Void "it's an action" returns the success of the
  # changeable button of launch upon of it's previous status. 
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
  

  #  =begin
	# This methods queries the table project for projects that are in the same category and location as the current project
	# Input: selected project id
	# Output: @suggested
	# Author: Yomn El-Mistikawy
  #  =end
def suggest
	@project= Project.find(1)
    @suggested= Project.where(:location => "cairo", :category => "baking").where.not(:id => "1", :startup_id => "1")
end
  #  =begin
	# This method shows the profile of the selected suggested project
	# Input: selected project id
	# Output: view showing the profile of the project with a merge request button
	# Author: Yomn El-Mistikawy
  #  =end
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
