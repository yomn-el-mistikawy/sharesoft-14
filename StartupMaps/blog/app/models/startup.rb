class Startup < ActiveRecord::Base
<<<<<<< HEAD
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

	 def self.search_startup(search)
    @startup= Startup.find(:all, :conditions => ['name LIKE ?', "#{search}%"])
    return @startup
 
   end 
=======
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
>>>>>>> 7c10bc19d78f4cb16fcb1d84f904f2d90c8e27d4
end
