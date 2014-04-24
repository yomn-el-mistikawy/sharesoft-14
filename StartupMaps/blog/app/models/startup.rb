class Startup < ActiveRecord::Base
	belongs_to :Entity
	has_many :startup_resources
<<<<<<< HEAD
	has_many :projects
=======
	has_and_belongs_to_many :groups
	has_many :posts, through: :groups
	has_many :comments, through: :groups
	has_many :likes, through: :groups
	has_many :resumes, through: :groups
>>>>>>> 6728fe915c8f6a5988591d68e78f16afacedf7ea
end
