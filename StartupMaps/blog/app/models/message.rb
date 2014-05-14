class Message < ActiveRecord::Base
  attr_accessible :subject, :body, :sender, :recepient, :read
  	# Definition: Checks if subject, body and the receipment email are enetered, while the length of 
  	# the subject and body are minimum 3, subject maximum 35 and body maximum 1000 
  	# 
  validates_presence_of :subject, :body, :recepient
  validates :subject, length: { minimum: 3, maximum: 35 }
  validates :body, length: { minimum: 3, maximum: 1000 }

  belongs_to :entity
end