class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :startup
  has_many :likes, :as => :likable
  validates :comment, presence: true, allow_blank: false
end
