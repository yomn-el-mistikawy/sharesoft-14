class ProjectsController < ApplicationController

=begin
	This methods queries the table project for projects that are in the same category and location as the current project
	Input: selected project id
	Output: @suggested
	Author: Yomn El-Mistikawy
=end

def suggest
	@suggested = Project.get_suggested(Project.find( 1 ))
end


=begin
	This method shows the profile of the selected suggested project
	Input: selected project id
	Output: view showing the profile of the project with a merge request button
	Author: Yomn El-Mistikawy
=end

def show_suggested
  @project = Project.find( params[:project] )
end
end