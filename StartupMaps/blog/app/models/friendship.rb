class Friendship < ActiveRecord::Base
belongs_to :entity
belongs_to :friend, :class_name => "entity"

  validates_presence_of :user_id, :friend_id
  attr_accessible :approved, :user_id, :friend_id

#Method
  # Return true if the users are (possibly pending) friends.
  def self.exists?(user, friend)
    not find_by_user_id_and_friend_id(user, friend).nil?
  end

  # Record a pending friend request.
  def self.request(user, friend)
    unless user == friend or Friendship.exists?(user, friend) do
  create(:user => user, :friend => friend)
  create(:user => friend, :friend => user) 
    end
  end
end

  # Accept a friend request.
  def self.accept(user, friend)
      accepted_at = Time.now
      accept_one_side(user, friend, accepted_at)
      accept_one_side(friend, user, accepted_at)
  end

  # Delete a friendship or cancel a pending request.
  def self.breakup(user, friend)
      destroy(find_by_user_id_and_friend_id(user, friend))
      destroy(find_by_user_id_and_friend_id(friend, user))
  end

  private

  # Update the db with one side of an accepted friendship request.
  def self.accept_one_side(user, friend, accepted_at)
    request = find_by_user_id_and_friend_id(user, friend)
    request.response = true
    request.accepted_at = accepted_at
    request.save!
  end
end
