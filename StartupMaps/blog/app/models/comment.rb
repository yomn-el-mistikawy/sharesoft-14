class Comment < ActiveRecord::Base
	has_one :entity
	has_one :post
end
