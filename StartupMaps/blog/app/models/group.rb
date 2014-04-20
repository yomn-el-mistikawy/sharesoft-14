class Group < ActiveRecord::Base
	has_one :entity
	has_many :files
end
