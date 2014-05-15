class ProjectsController < ApplicationController

  # Definition:This method shows all details of a project
  # that belong to a specific startup and is linked to the show HTML file
  # which also includes the editing part
  # respond_to --> gives a direct access to the HTML/XML/PDF whatever is it
  # it's reachable and knows what's happening in the file.
  # Input: Project_id.
  # Output: Project_id "all project description (before and after editing)".
  # Author: Hana Magdy.

  def show
    @project = Project.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  
  # Definition: "A startup can launch its project"
  # Changes the status of a project and redirects to the project's 
  # page (show project) on success or error
  # with the exception of displaying a success/error message
  # update_attribute --> updates the rows
  # update the status of launch project from unlaunch to launched and vice versa
  # redirects to the show page.
  # Input: project_id. "on the show page".
  # Output: project_id/Void "it's an action" returns the success of the
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
end




