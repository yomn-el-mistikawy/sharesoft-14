class JoinRequest < ActiveRecord::Base
	belongs_to :sender, :class_name => "startup"
	belongs_to :group
end
