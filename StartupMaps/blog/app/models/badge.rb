class Badge < ActiveRecord::Base
	has_many :startups, through: :startups_badges
end
