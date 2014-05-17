class Message < ActiveRecord::Base
  attr_accessible :subject, :body, :sender, :recepient, :read

  validates_presence_of :subject, :body, :recepient
  validates :subject, length: { minimum: 3, maximum: 35 }
  validates :body, length: { minimum: 3, maximum: 1000 }

  belongs_to :user
end