class SendMergeRequest < ActiveRecord::Base
	has_and_belongs_to_many :senders, :class_name => "startup" 
	has_and_belongs_to_many :receivers, :class_name => "startup"
	has_and_belongs_to_many :project



	 def merge_request(project_id)
	 	@owners_ids = StartupsProjects.where(:project_id => project_id)
        @send_request = SendMergeRequest.create(:sender_id => current_entity.id, :receiver_id => @owners_ids  , project: project_id)
 	 end
  

end
