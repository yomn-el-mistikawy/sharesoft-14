class Entity < ActiveRecord::Base
	has_many :services 
	has_many :startups
	has_many :investors
	has_many :entity_statuses
	has_many :entity_work_portfolio 
	has_many :entity_video_links
	has_many :entity_social_links
	has_many :entity_needs
	has_many :entity_jobs
	has_many :entity_goals
	has_many :entity_available_internships
	has_many :senders, :through => :group_invitation
	has_many :receivers, :through => :group_invitation
	has_many :senders, :through => :send_merge_request
	has_many :receivers, :through => :send_merge_request
	has_many :subscriber, :through => :subscrtipion
	has_many :subscribee, :through => :subscrtipion
	has_many :receivers, :through => :message
	has_many :messages


  # Definition: Knows the user ID from the params and finds its last work status.
  # Input: Entry from database.
  # Output: Changed to online or offline.
  # Author: Ola Enaba.

	def self.change(startup)
	  @new = Startup.new
      @new.id =  startup.id
      @new.longitude =  startup.longitude
      @new.latitude = startup.latitude
      @new.initiatior_name = startup.initiatior_name
      @new.milestones = startup.milestones
      @new.entity_id = startup.entity_id
      @new.location = startup.location
      @new.name = startup.name
      @new.online_status = startup.online_status
      @new.launch_status = startup.launch_status
      @new.joint_ventures = startup.joint_ventures
      @new.sector = startup.sector
      @new.number_of_working_years = startup.number_of_working_years
      @new.created_at = startup.created_at
      @new.updated_at = startup.updated_at

      @new.company_status = ! startup.company_status
      startup.delete
      if @new.save
        notice = 'successful edit'
      else
        render 'edit'
      end
	end

end

