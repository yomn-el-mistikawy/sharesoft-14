class Friendship < ActiveRecord::Base
belongs_to :entity
belongs_to :friend, :class_name => "entity"


end
