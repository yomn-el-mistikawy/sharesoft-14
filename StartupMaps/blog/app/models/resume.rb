class Resume < ActiveRecord::Base
	belongs_to :group
	belongs_to :startup
	has_many :comments
	has_many :likes, :as => :likable
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the owner's name is present.
  validates :attachment, presence: true
end
