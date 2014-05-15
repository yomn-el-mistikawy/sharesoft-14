class EntityStatus < ActiveRecord::Base
	validates_presence_of :status, :message => 'Please insert a status.'
	belongs_to :entity
end
