class EntityStatus < ActiveRecord::Base
	validates_presence_of :status
	belongs_to :entity 
end
