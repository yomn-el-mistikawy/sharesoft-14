class Group < ActiveRecord::Base
	has_one :creator, :class_name => "entity", foreign_key: "entities_id"
end
