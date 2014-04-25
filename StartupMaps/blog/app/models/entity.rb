class Entity < ActiveRecord::Base
  has_many :services 
  has_many :startups
  has_many :investors
  has_many :entity_statuses
  has_many :entity_work_portfolio 
  has_many :entity_video_links
  has_many :entity_social_links
  has_many :entity_needs
  has_many :entity_jobs
  has_many :entity_goals
  has_many :entity_available_internships
  has_many :senders, :through => :group_invitations
  has_many :receivers, :through => :group_invitations
  has_many :senders, :through => :send_merge_requests
  has_many :receivers, :through => :send_merge_requests
  has_many :subscriber, :through => :subscrtipion
  has_many :subscribee, :through => :subscrtipion
  
  
  # Definition: This line checks whether the password field is equivalent to the password_confirmation
  # field.
  # Input: Password.
  # Output: Void.
  # Author: Adel Zee Badawy.
  
  validates_confirmation_of :password
  
  
  # Definition: This retrieves the attribute from the controller to allow it to be used without
  # it having to be an attribute belonging to table Entity.
  # Input: Name, Password, Email, Entity Type.
  # Output: Void.
  # Author: Adel Zee Badawy.
  
  attr_accessor :type
    
  
  # Definition: The Regex are regular expressions that are set to parameters to be compared to in the
  # future.
  # Input: Regular Expression.
  # Output: Void.
  # Author: Adel Zee Badawy.
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  
  # Definition: The following block of code consists of the cases that are handled which will not allow
  # the entity to be created unless the conditions are met.
  # Input: All the attributes from the controller.
  # Output: The error messages, if any.
  # Author: Adel Zee Badawy.
    
  validates :name, presence: true, length: {minimum: 3}, uniqueness: {case_sensitive: false}
  validates :e_mail, presence: true, format: {with: VALID_EMAIL_REGEX} ,uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 6}
  validates :type, format: {with: /[^0]/, message: " is not selected."}
  validates :location, presence: true
  
  end
  
  