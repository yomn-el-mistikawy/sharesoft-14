class Project < ActiveRecord::Base
  
  has_many :startups, through: :startups_projects
  belongs_to :startup

  validates_presence_of :name, :description, :category
  validates_length_of :name, :within => 3 .. 150
  validates_uniqueness_of :name, :message => "You have a project with the same name"
end
