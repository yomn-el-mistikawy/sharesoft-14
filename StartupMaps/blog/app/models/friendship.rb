class Friendship < ActiveRecord::Base
belongs_to :entity
belongs_to :friend, :class_name => "entity"

validates_presence_of :entity_id, :friend_id
  
  # "def self." means this is a class method
  # Return true if the entitys are (possibly pending) friends.
  def self.exists?(entity, friend)
    not find_by_entity_id_and_friend_id(entity, friend).nil?
  end
  
  # Record a pending friend request.
  def self.request(entity, friend)
    unless entity == friend or Friendship.exists?(entity, friend)
      transaction do
        create(:entity => entity, :friend => friend, :status => 'pending')
        create(:entity => friend, :friend => entity, :status => 'requested')
      end
    end
  end

  # Accept a friend request.
  def self.accept(entity, friend)
    transaction do
      accept_one_side(entity, friend)
      accept_one_side(friend, entity)
    end
  end


  # Delete a friendship or cancel a pending request.
  def self.breakup(entity, friend)
    transaction do
      destroy(find_by_entity_id_and_friend_id(entity, friend))
      destroy(find_by_entity_id_and_friend_id(friend, entity))
    end
  end


  private
  
  # Update the db with one side of an accepted friendship request.
  def self.accept_one_side(entity, friend)
    request = find_by_entity_id_and_friend_id(entity, friend)
    request.status = 'accepted'
    request.save!
  end
end
