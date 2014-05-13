class StartupsProject < ActiveRecord::Base
	has_and_belongs_to_many :projects
    has_and_belongs_to_many :startups
end
