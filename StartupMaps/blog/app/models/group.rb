class Group < ActiveRecord::Base
	has_one :creator, :class_name => "entity"
end
