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
	has_many :senders, :through => :group_invitations
	has_many :receivers, :through => :group_invitations
	has_many :senders, :through => :send_merge_requests
	has_many :receivers, :through => :send_merge_requests
	has_many :subscriber, :through => :subscrtipion
	has_many :subscribee, :through => :subscrtipion
# Generates authentication token that is unique to every user
	# Author: Omar El-Menawy

	before_create { generate_token(:auth_token) }

	# Definition: Saves password reset token, and calls on the user mailer to send the email.
	# Input: authentication token
	# Output: email sent
	# Author: Omar El-Menawy

  def send_password_reset
    generate_token(:password_reset_token)
  	self.password_reset_sent_at = Time.zone.now
  	save!
  	UserMailer.password_reset(self).deliver
  end

  # Definition: Generates token
  # Author: Omar El-Menawy

	def generate_token(column)
  	begin
    self[column] = SecureRandom.urlsafe_base64
  	end while Entity.exists?(column => self[column])
	end
end

