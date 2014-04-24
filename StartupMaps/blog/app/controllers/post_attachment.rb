class PostAttachment < ApplicationController
  
  # Definition: Lists all the uploaded resumes on starting up
  # Input: none
  # Output: list of resumes
  # Author: Essam Azzam

  def index
    @resumes = Resume.all
  end

  # Definition: Initiate a new resume variable 
  # Input: none
  # Output: resume 
  # Author: Essam Azzam

  def new
    @resume = Resume.new
  end
  
  # Definition: Creates a record in the database with the given parameters
  # Input: name, attachment
  # Output: void
  # Author: Essam Azzam

  def create
   @resume = Resume.new(resume_params)
    if @resume.save
     redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded."
    else
     render "new"
    end
  end

  # Definition: Deletes a record from the database
  # Input: resume
  # Output: void
  # Author: Essam Azzam

  def destroy
   @resume = Resume.find(params[:id])
   @resume.destroy
   redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end

  # Definition: Returns the parameters of the resume
  # Input: resume
  # Output: name, attachment
  # Author: Essam Azzam

  private
   def resume_params
    params.require(:resume).permit(:name, :attachment)
   end
  end
