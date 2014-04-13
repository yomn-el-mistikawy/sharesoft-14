class Like < ActiveRecord::Base
	has_one :post , foreign_key: "post_id"
	has_one :comment, foreign_key: "comment_id"
end
