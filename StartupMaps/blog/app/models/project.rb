class Project < ActiveRecord::Base
	has_many :startups, :through => :startup_have_project
end
