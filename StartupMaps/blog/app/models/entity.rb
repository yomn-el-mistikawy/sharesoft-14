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
	has_many :userposts, dependent: :destroy
    has_many :relationships, foreign_key: "follower_id", dependent: :destroy
    has_many :followed_entities, through: :relationships, source: :followed
    
    has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
    has_many :followers, through: :reverse_relationships, source: :follower

  def feed
    Micropost.from_users_followed_by(self)
  end

  def following?(other_entity)
    relationships.find_by(followed_id: other_entity.id)
  end

  def follow!(other_entity)
    relationships.create!(followed_id: other_entity.id)
  end

  def unfollow!(other_entity)
    relationships.find_by(followed_id: other_entity.id).destroy
  end

end

