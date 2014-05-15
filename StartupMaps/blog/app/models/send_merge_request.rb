class SendMergeRequest < ActiveRecord::Base
	has_and_belongs_to_many :senders, :class_name => "startup" 
	has_and_belongs_to_many :receivers, :class_name => "startup"
	has_and_belongs_to_many :project


     #Defination: Entering the new entries in the table with the session id and project id.
     #Input: Project ID.
     #Output: Void.
     #Author: Ziad

	 def self.merge_request(project_id, entity)
      @owners_ids = Startup.select(:entity_id).where(id: => (ProjectsStartup.select(:startup_id).where(:project_id => project_id)))
      @send_request = SendMergeRequest.create(:sender_id => entity.id, :receiver_id => @owners_ids, :project => project_id)
 	end
  
  

end
