class Post < ActiveRecord::Base
  belongs_to :group
  belongs_to :startup
  has_many :comments
  has_many :likes, :as => :likable

  # Definition: This methods calls create method in the group controller to send with a notification email with the post.
  # Input: Posts.
  # Output: Void.
  # Author: Youssef Attaby.

  after_save:create_post_email
  def create_post_email
  	if @group.notification?
        UserMailer.post_email(@post).deliver
    end
  end

  # Definition: This methods calls create method in the group controller to send with a notification email with the post.
  # Input: Posts.
  # Output: Void.
  # Author: Youssef Attaby.

  after_update:update_post_email
  def update_post_email
    if @group.notification?
      UserMailer.post_email(@post).deliver
    end
  end
end
