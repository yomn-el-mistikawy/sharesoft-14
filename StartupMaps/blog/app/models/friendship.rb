class Friendship < ActiveRecord::Base
belongs_to :entity
belongs_to :friend, :class_name => "entity"

  validates_presence_of :entity_id, :friend_id
  attr_accessible :approved, :entity_id, :friend_id

#Method
  # Return true if the entitys are (possibly pending) friends.
  def self.exists?(entity, friend)
    not find_by_entity_id_and_friend_id(entity, friend).nil?
  end

  # Record a pending friend request.
  def self.request(entity, friend)
    unless entity == friend or Friendship.exists?(entity, friend) do
  create(:entity => entity, :friend => friend)
  create(:entity => friend, :friend => entity) 
    end
  end
end

  # Accept a friend request.
  def self.accept(entity, friend)
      accepted_at = Time.now
      accept_one_side(entity, friend, accepted_at)
      accept_one_side(friend, entity, accepted_at)
  end

  # Delete a friendship or cancel a pending request.
  def self.breakup(entity, friend)
      destroy(find_by_entity_id_and_friend_id(entity, friend))
      destroy(find_by_entity_id_and_friend_id(friend, entity))
  end

  private

  # Update the db with one side of an accepted friendship request.
  def self.accept_one_side(entity, friend, accepted_at)
    request = find_by_entity_id_and_friend_id(entity, friend)
    request.response = true
    request.accepted_at = accepted_at
    request.save!
  end
end
