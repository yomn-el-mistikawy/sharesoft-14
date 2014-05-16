class Relationship < ActiveRecord::Base
	belongs_to :follower, class_name: "Entity"
  belongs_to :followed, class_name: "Entity"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
