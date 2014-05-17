class EntityStatus < ActiveRecord::Base
	belongs_to :entity 
	validates_presence_of :status, :message => 'Please insert a status.'
end
