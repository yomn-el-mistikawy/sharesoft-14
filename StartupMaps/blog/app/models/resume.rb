class Resume < ActiveRecord::Base
	belongs_to :group
	belongs_to :startup
	has_many :comments
	has_many :likes, :as => :likable
end
