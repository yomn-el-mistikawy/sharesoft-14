class SendMergeRequest < ActiveRecord::Base
	has_and_belongs_to_many :senders, :class_name => "entity" 
	has_and_belongs_to_many :receivers, :class_name => "entity"
	has_and_belongs_to_many :project

	def self.get_sender(entity_id)
      sender_ids = SendMergeRequest.select(:sender_id).where(:receivers_id => entity_id)
      return Entity.find(sender_ids)
	end	

	def self.accept(reciever, sender, response)
		if(response == 1)
			SendMergeRequest.where(:reciever_id => reciever, :sender_id => sender).update_all(:response => response)
			project = SendMergeRequest.select(:project_id).where(:reciever_id => reciever, :sender_id => sender)
			StartupsProjects.create(:startup_id => sender, :project_id => project)
		else
            SendMergeRequest.where(:reciever_id => reciever, :sender_id => sender).update_all(:response => response)
		end	
end
