class ResumesController < ApplicationController
  before_action :authenticate_entity!
  # Definition: Lists all resumes.
  # Input: void.
  # Output: @resumes.
  # Author: Essam Azzam.

  def index
    @resumes = Resume.all
  end


  # Definition: Lists all resumes.
  # Input: resume.
  # Output: void.
  # Author: Essam Azzam.

  def new
    @resume = Resume.new
  end


  # Definition: Creates a new record in the Resume model.
  # Input: resume_params.
  # Output: void.
  # Author: Essam Azzam.

  def create
    @resume = Resume.new(resume_params)
     if @resume.save
       redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded."
     else
       render "new"
     end
  end


  # Definition: Deletes the chosen resume.
  # Input: resume.
  # Output: void.
  # Author: Essam Azzam.

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end
  

  # Definition: returns the resume given the name and attachment.
  # Input: name, attachment.
  # Output: resume.
  # Author: Essam Azzam.

  private
    def resume_params
     params.require(:resume).permit(:name, :attachment)
    end
end
