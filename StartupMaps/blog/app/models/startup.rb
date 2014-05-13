class Startup < ActiveRecord::Base
  has_many :startup_resources
  has_and_belongs_to_many :groups
  has_many :posts, through: :groups
  has_many :comments, through: :groups
  has_many :likes, through: :groups
  has_many :resumes, through: :groups
  has_many :projects, through: :startups_projects
  has_many :resumes, through: :groups
  has_many :badges, through: :startups_badges

  SECTORS = %w[Agriculture Manufacturing Trading Clothes Telecommunications]
end
