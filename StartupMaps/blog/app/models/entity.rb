class Entity < ActiveRecord::Base
	has_many :services 
	has_many :startups
	has_many :investors
	has_many :entity_work_statuses
	has_many :entity_work_portfolio 
	has_many :entity_video_links
	has_many :entity_social_links
	has_many :entity_needs
	has_many :entity_jobs
	has_many :entity_goals
	has_many :entity_available_internships
	has_many :senders, :through => :group_invitations
	has_many :receivers, :through => :group_invitations
	has_many :senders, :through => :send_merge_requests
	has_many :receivers, :through => :send_merge_requests
	has_many :subscriber, :through => :subscrtipion
	has_many :subscribee, :through => :subscrtipion

	validates_confirmation_of :password
	attr_accessor :password, :password_confirmation, :e_mail, :name, :type

	TYPE_REGEX = /[^0]/i
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :e_mail, presence: true, format: { with: VALID_EMAIL_REGEX } ,uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :type, format: { with: /[^0]/, message: " is not selected." }

end

