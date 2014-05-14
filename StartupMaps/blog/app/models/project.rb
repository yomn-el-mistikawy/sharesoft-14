class Project < ActiveRecord::Base

  has_many :project_requirements, :dependent => :destroy
  has_many :project_targets, :dependent => :destroy
  
  belongs_to :startup

  validates_presence_of :name, :description, :category
  validates_length_of :name, :within => 2 .. 150
  validates_uniqueness_of :name, :message => "You have a project with the same name"

  # Cascade deletion to all associations
  accepts_nested_attributes_for :project_targets, :allow_destroy => true
  accepts_nested_attributes_for :project_requirements, :allow_destroy => true

  # Definition: "A startup can launch its project"
  # Changes the status of a project and redirects to the project's 
  # page (show project) on success or error
  # update the status of launch project from unlaunch to launched and vice versa.
  # Input: project_id/Void.
  # Output: project_id/Void "it's an action" returns the success 
  # of the changeable button of launch upon of it's previous status. 
  # Author: Hana Magdy.

  def launched?
    @launch ? "Yes" : "No"
  end 
end

