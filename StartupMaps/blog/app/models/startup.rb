class Startup < ActiveRecord::Base
  belongs_to :Entity
  has_many :startup_resources
  has_and_belongs_to_many :groups
  has_many :posts, through: :groups
  has_many :comments, through: :groups
  has_many :likes, through: :groups
  has_many :resumes, through: :groups
  has_many :projects, through: :projects_startups
  has_many :resumes, through: :groups
  has_many :badges, through: :startups_badges
  is_impressionable
  SECTORS = %w[Agriculture Manufacturing Trading Clothes Telecommunications]
end
