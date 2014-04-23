class Startup < ActiveRecord::Base
	belongs_to :Entity
	has_many :startup_resources
	has_and_belongs_to_many :groups
	has_many :posts, through: :groups
	has_many :comments, through: :groups
	has_many :likes, through: :groups
	has_many :postAttachments, through: :groups
end
