class Like < ActiveRecord::Base
	has_one :post 
	has_one :comment
end
