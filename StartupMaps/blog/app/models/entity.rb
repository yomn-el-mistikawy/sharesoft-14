class Entity < ActiveRecord::Base
	has_many :services 
	has_many :startups
	has_many :investors
	has_many :enity_work_statuses
	has_many :entity_work_protfolio 
	has_many :entity_video_links
	has_many :entity_social_links
	has_many :entity_needs
	has_many :enity_jobs
	has_many :entity_goals
	has_many :entity_available_internships
	has_many :senders, :through :group_invitation
	has_many :receivers, :through :group_invitation
	has_many :senders, :through :send_merge_request
	has_many :receivers, :through :send_merge_request
end

