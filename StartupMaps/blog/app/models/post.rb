class Post < ActiveRecord::Base
	has_one :group
	has_one :entity
end
