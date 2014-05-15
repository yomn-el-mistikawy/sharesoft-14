class Gallery < ActiveRecord::Base
	has_many :paintings
	validates_presence_of :name
end
