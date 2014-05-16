class Userpost < ActiveRecord::Base
	belongs_to :entity
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :entity_id, presence: true

  # Returns microposts from the users being followed by the given user.
  # def self.from_users_followed_by(entity)
  #   followed_entity_ids = "SELECT followed_id FROM relationships
  #                        WHERE follower_id = :user_id"
  #   where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
  #         entity_id: entity.id)
  # end
end
