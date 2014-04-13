class GroupInvitation < ActiveRecord::Base
	has_and_belongs_to_many :groups
	has_and_belongs_to_many :senders, :class_name => "Entity",  :foreign_key => "sender_id"
	has_and_belongs_to_many :receivers, :class_name => "Entity", :foreign_key => "receiver_id"
end
