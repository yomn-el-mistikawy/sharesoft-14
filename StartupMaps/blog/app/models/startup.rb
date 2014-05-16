class Startup < ActiveRecord::Base
  belongs_to :Entity
  has_many :startup_resources
  has_and_belongs_to_many :groups
  has_many :posts, through: :groups
  has_many :comments, through: :groups
  has_many :likes, through: :groups
  has_many :resumes, through: :groups
  has_many :projects, through: :startups_projects
  has_many :resumes, through: :groups
  has_many :badges, through: :startups_badges

  SECTORS = %w[Agriculture Manufacturing Trading Clothes Telecommunications]

  # Definition: This method checks if the name in the search box is like the name
  # inserted in the database. 
  # Input: Search.
  # Output: Startup name.
  # Author: Mozdan Ahmed.

  def self.search_startup(search)
   @startup= Startup.find(:all, :conditions => ['name LIKE ?', "#{search}%"])
   return @startup
  end 
end
