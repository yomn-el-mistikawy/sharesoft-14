class SendMergeRequest < ActiveRecord::Base
	has_and_belongs_to_many :senders, :class_name => "Startup",  :foreign_key => "sender_id"
	has_and_belongs_to_many :receivers, :class_name => "Startup", :foreign_key => "receiver_id"
	has_and_belongs_to_many :project, foreign_key: "projects_id"
end
