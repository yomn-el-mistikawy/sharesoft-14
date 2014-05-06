class EntitiesController < ApplicationController
  before_action :set_entity, only: [:show, :edit, :update, :destroy]

  private

    def self.request(sender_id, recevier_id)
    unless sender_id == recevier_id or SendFriendRequest.exists?(sender_id, recevier_id)
      transaction do
        create(:sender_id  => sender_id, :recevier_id => recevier_id, :status => 'pending')
        create(:recevier_id => recevier_id, :sender_id  => sender_id, :status => 'requested')
      end
    end
  end

   def self.accept(sender_id, recevier_id)
    transaction do
      accepted_at = Time.now
      accept_one_side(sender_id, recevier_id, accepted_at)
      accept_one_side(recevier_id, sender_id, accepted_at)
    end
  end

  def self.accept_one_side(sender_id, recevier_id, accepted_at)
    request = find_by_sender_id_and_recevier_id(sender_id, recevier_id)
    request.status = 'accepted'
    request.accepted_at = accepted_at
    request.save!
  end
end

