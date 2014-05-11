class SendMergeRequest < ActiveRecord::Base
	has_and_belongs_to_many :senders, :class_name => "entity" 
	has_and_belongs_to_many :receivers, :class_name => "entity"
	has_and_belongs_to_many :project

	
   # Deifination: Get the sender id from the table where the reciever id is the session id.
   # Input: Sender id, reciever id.
   # Output: Void.
   # Authored: Ziad.

	def self.get_sender(entity_id)
      sender_ids = SendMergeRequest.select(:sender_id).where(:receivers_id => entity_id)
      return Entity.find(sender_ids)
	end	

 
   # Deifination: Changes the response either to accept or reject with changing the response to 1 or 0.
   # Comment: If accepted, it add the entity id to the project table.
   # Input: Sender id, reciever id.
   # Output: Void.
   # Authored: Ziad.




	def self.accept(reciever, sender, response)
		if(response == 1)
			SendMergeRequest.where(:reciever_id => reciever, :sender_id => sender).update_all(:response => response)
			project = SendMergeRequest.select(:project_id).where(:reciever_id => reciever, :sender_id => sender)
			StartupsProjects.create(:startup_id => sender, :project_id => project)
		else
            SendMergeRequest.where(:reciever_id => reciever, :sender_id => sender).update_all(:response => response)
		end	
end
