class Subscription < ActiveRecord::Base
	has_and_belongs_to_many :subscriber, :class_name => "user" 
	has_and_belongs_to_many :subscribee, :class_name => "user"
end
