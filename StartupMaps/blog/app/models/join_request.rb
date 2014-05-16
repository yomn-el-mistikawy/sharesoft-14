class JoinRequest < ActiveRecord::Base
	belongs_to :sender, :class_name => "startup"
	belongs_to :group


  # Definition: This method gets set of requester ids.
  # input: group.
  # output: requesters.
  # Author: Sherouk A.Said.

  def self.get_startups(group)
    @startup_ids = JoinRequest.select(:sender_id).where(:group_id => group.id)
    @requester = Startup.where(:id => @startup_ids)
  end 
end
