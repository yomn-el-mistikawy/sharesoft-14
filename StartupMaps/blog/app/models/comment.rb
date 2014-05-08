class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :startup
  has_many :likes, :as => :likable
end
