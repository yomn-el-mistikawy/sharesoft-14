class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :friendships
  has_many :friends, :through => :friendships,
     :conditions => "status = 'accepted'"
  has_many :requested_friends,
     :through => :friendships,
     :source => :friend,
     :conditions => "status = 'requested'"
  has_many :pending_friends,
     :through => :friendships,
     :source => :friend,
     :conditions => "status = 'pending'"
end
