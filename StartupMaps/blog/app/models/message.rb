class Message < ActiveRecord::Base
	belongs_to :entity
	belongs_to :receiver, :class_name => "entity"
end
