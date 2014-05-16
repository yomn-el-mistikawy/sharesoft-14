class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :startup
  has_many :likes, :as => :likable

  # Definition: This methods calls create method in the group controller to send with a notification email with the comment.
  # Input: Comments.
  # Output: Void.
  # Author: Youssef Attaby.

  after_save:create_comment_email
  def create_comment_email
    if @group.notification?
      UserMailer.comment_email(@comment).deliver
    end
  end
  

  # Definition: This methods calls update method in the group controller to send with a notification email with the comment.
  # Input: Comments.
  # Output: Void.
  # Author: Youssef Attaby.

  after_update:update_comment_email
  def update_comment_email
    if @group.notification?
      UserMailer.comment_email(@comment).deliver
    end
  end
end
