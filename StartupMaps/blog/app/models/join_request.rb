class JoinRequest < ActiveRecord::Base
	belongs_to :sender, :class_name => "startup"
	belongs_to :group

	
  def self.get_startups(group)
    @startup_ids = JoinRequest.select(:sender_id).where(:group_id => group.id)
    @requester = Startup.where(:id => @startup_ids)
  end 
end
