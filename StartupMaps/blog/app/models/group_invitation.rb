class GroupInvitation < ActiveRecord::Base
	has_and_belongs_to_many :groups
	has_many :receiver, :class_name => "entity"
	has_many :sender, :class_name => "entity"

end
