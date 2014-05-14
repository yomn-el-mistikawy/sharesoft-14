class Friendship < ActiveRecord::Base
belongs_to :sender, :class_name => "Entity"
belongs_to :receiver, :class_name => "Entity"

validates_presence_of :email
attr_accessible :response, :sender, :receiver

#Method
  # Return true if the senders are (possibly pending) receivers.
  def self.exists?(sender, receiver )
    not find_by_sender_and_receiver(sender, receiver).nil?
  end

  # Record a pending receiver request.
  def self.request(sender, receiver, response)
    # unless sender == receiver or Friendship.exists?(@sender, @receiver) do
    create(:sender => sender, :receiver => receiver)
    create(:sender => receiver, :receiver => sender) 
    save!
    # end
  end

  # Accept a receiver request.
  def self.accept(sender, receiver)
      accepted_at = Time.now
      accept_one_side(sender, receiver, accepted_at)
      accept_one_side(receiver, sender, accepted_at)
  end

  # Delete a receivership or cancel a pending request.
  def self.breakup(sender, receiver)
      destroy(find_by_sender_and_receiver(sender, receiver))
      destroy(find_by_sender_and_receiver(receiver, sender))
  end

  private

  # Update the db with one side of an accepted receivership request.
  def self.accept_one_side(sender, receiver, accepted_at)
    request = find_by_sender_id_and_receiver_id(sender, receiver)
    request.response = true
    request.accepted_at = accepted_at
    request.save!
  end

end