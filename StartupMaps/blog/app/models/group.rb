class Group < ActiveRecord::Base
	has_and_belongs_to_many :startups
  has_many :posts
  has_many :comments, through: :posts
  has_many :likes, through: :posts
  has_many :resumes
  

  validates :name, presence: true, allow_blank: false 
  validates :description, presence: true, allow_blank: false 
  validates :interest, presence: true, allow_blank: false 
end
