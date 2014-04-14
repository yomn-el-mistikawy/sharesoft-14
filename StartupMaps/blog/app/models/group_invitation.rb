class GroupInvitation < ActiveRecord::Base
	has_and_belongs_to_many :groups
	has_and_belongs_to_many :senders, :class_name => "entity"
	has_and_belongs_to_many :receivers, :class_name => "entity"
end
