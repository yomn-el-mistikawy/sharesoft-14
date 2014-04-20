class Subscription < ActiveRecord::Base
	has_and_belongs_to_many :subscriber, :class_name => "entity" 
	has_and_belongs_to_many :subscribee, :class_name => "entity"
end
