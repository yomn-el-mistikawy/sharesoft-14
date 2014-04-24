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


  # Definition: "As a startup, I can set a project goal, milestone,
  # requirements (roles, resources)"
  # This method allows you to edit a project given its project's id.
  # Input: Project_id.
  # Output: Project_id "specifically goals, milestones and requirements".
  # Author: Hana Magdy.

  def edit
    @project = Project.find(params[:id])
  end


  # Definition: "As a startup, I can set a project goal, milestone,
  # requirements (roles, resources)"
  # Allows editing the project's details, specifically goals, milestones and requirements
  # Redirects user to project's page (show project) on success
  # Re-renders the edit project page on error and is linked to the edit HTML file
  # update_attribute --> updates the rows
  # respond_to --> gives a direct access to the HTML/XML/PDF whatever is it
  # it's reachable and knows what's happening in the file.
  # Input: project_id. "on the show page".
  # Output: project "all project description along successfully edited goals, 
  # milestones and requirements".
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
