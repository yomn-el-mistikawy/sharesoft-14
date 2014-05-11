class SendMergeRequest < ActiveRecord::Base
	has_and_belongs_to_many :senders, :class_name => "startup" 
	has_and_belongs_to_many :receivers, :class_name => "startup"
	has_and_belongs_to_many :project



	 def merge_request
     	
 		
 		@project = Project.find(params[:project_id])
        @send_request = SendMergeRequest.create(:sender_id => session_id, :receiver_id => @project)
 	 end
  

end
